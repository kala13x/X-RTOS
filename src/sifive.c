/*!
 *  @file x-rtos/src/sifive.c
 *
 *  This source is part of "x-rtos" project
 *  2015-2020  Sun Dro (s.kalatoz@gmail.com)
 * 
 * @brief Implementation of hook / interrupt handlers
 * and helper functions for the SiFive RevB (RISK-V).
 */

#include "xrtos.h"
#include "sifive.h"

/* Registers used to Initialize the PLIC. */
#define sifivePLIC_PENDING_0 ( * ( ( volatile uint32_t * ) 0x0C001000UL ) )
#define sifivePLIC_PENDING_1 ( * ( ( volatile uint32_t * ) 0x0C001004UL ) )
#define sifivePLIC_ENABLE_0  ( * ( ( volatile uint32_t * ) 0x0C002000UL ) )
#define sifivePLIC_ENABLE_1  ( * ( ( volatile uint32_t * ) 0x0C002004UL ) )

/*
 * Prototypes for the standard FreeRTOS callback/hook functions implemented
 * within this file. See https://www.freertos.org/a00016.html for more info.
 */
void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName );
void vApplicationMallocFailedHook( void );
void vApplicationTickHook( void );
void vApplicationIdleHook( void );

void vPrintString( const char *pcString )
{
    write( STDOUT_FILENO, pcString, strlen( pcString ) );
}

void vNullLoopDelay(const uint32_t ulNopCount)
{
    volatile uint32_t ul;
    uint32_t ulNullLoopDelay = ulNopCount ?
        ulNopCount : sifiveNULL_LOOP_DELAY;

    for( ul = 0; ul < ulNullLoopDelay; ul++ )
    {
        __asm volatile( "nop" );
    }
}

void vAssertCalled( void )
{
    taskDISABLE_INTERRUPTS();
    vPrintString("ASSERT CALLED\r\n");

    /* Initialize the red LED. */
    static struct metal_led *pxLed = NULL;
    pxLed = metal_led_get_rgb( "LD0", "red" );

    configASSERT( pxLed );
    metal_led_enable( pxLed );
    metal_led_off( pxLed );

    /* NOTE:
        The interrupts are off here to prevent any further
        tick interrupts or the context switches, so the delay
        is implemented as a loop instead of a peripheral timer.
    */
    for( ;; )
    {
        vNullLoopDelay(sifiveNULL_LOOP_DELAY);
        metal_led_toggle( pxLed );
    }
}

struct metal_led *pxSetupLED( char *pcLabel, char *pcColor )
{
    struct metal_led *pxLed;
	pxLed = metal_led_get_rgb( pcLabel, pcColor );
	configASSERT( pxLed );

	metal_led_enable( pxLed );
	metal_led_off( pxLed );
    return pxLed;
}

void vSetupInterruptController( void )
{
    struct metal_cpu *pxCPU;
	pxCPU = metal_cpu_get( sifiveHART_0 );
	configASSERT( pxCPU );

	/* Initialize the interrupt controller. */
    struct metal_interrupt *pxInterruptController;
	pxInterruptController = metal_cpu_interrupt_controller( pxCPU );
	configASSERT( pxInterruptController );
	metal_interrupt_init( pxInterruptController );
}

void vSetupTrapHandler( void )
{
    extern void freertos_risc_v_trap_handler( void );
    __asm__ volatile( "csrw mtvec, %0" :: "r"( freertos_risc_v_trap_handler ) );

	/* Set all interrupt enable bits to 0. */
	sifivePLIC_ENABLE_0 = 0UL;
	sifivePLIC_ENABLE_1 = 0UL;
}

void prvSiFiveHandleTrap( void )
{
    volatile uint32_t ulPLICPending0Register = 0UL;
    volatile uint32_t ulPLICPending1Register = 0UL;
    volatile uint32_t ulMEPC = 0UL, ulMCAUSE = 0UL;

    /* NOTE:
        Store a few register values that might be useful
        when determining why this function was called.
    */
    __asm volatile( "csrr %0, mepc" : "=r"( ulMEPC ) );
    __asm volatile( "csrr %0, mcause" : "=r"( ulMCAUSE ) );
    ulPLICPending0Register = sifivePLIC_PENDING_0;
    ulPLICPending1Register = sifivePLIC_PENDING_1;

    /* Prevent compiler warnings about unused variables. */
    ( void ) ulPLICPending0Register;
    ( void ) ulPLICPending1Register;

    /* Force an assert as this function not use external interrupts. */
    configASSERT( metal_cpu_get( sifiveHART_0 ) == 0x00 );
}

void freertos_risc_v_application_interrupt_handler( uint32_t ulMcause )
{
    ( void )ulMcause;
    prvSiFiveHandleTrap();
}

void freertos_risc_v_application_exception_handler( uint32_t ulMcause )
{
    ( void )ulMcause;
    prvSiFiveHandleTrap();
}

void vApplicationMallocFailedHook( void )
{
    taskDISABLE_INTERRUPTS();
    for( ;; );
}

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
    ( void ) pcTaskName;
    ( void ) pxTask;

    taskDISABLE_INTERRUPTS();
    for( ;; );
}


void vApplicationIdleHook( void )
{
    /* 
        TODO: handle idle hook here
    */
}

void vApplicationTickHook( void )
{
    /* 
        TODO: handle tick hook here
    */
}

void *malloc( size_t xSize )
{
    /* NOTE:
        The linker script does not define a heap so artificially
        force an assert() if something unexpectedly uses the C
        library heap. See https://www.freertos.org/a00111.html
    */
    configASSERT( metal_cpu_get( sifiveHART_0 ) == 0x00 );

    /* Remove warnings about unused parameter. */
    ( void ) xSize;
    return NULL;
}