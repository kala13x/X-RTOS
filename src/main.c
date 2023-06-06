/*!
 *  @file X-RTOS/src/main.c
 *
 *  This source is part of "X-RTOS" project
 *  2015-2020  Sun Dro (s.kalatoz@gmail.com)
 * 
 * @brief Main source file of X-RTOS project.
 */

#include "x-rtos.h"
#include "sifive.h"

/* Priorities used by the tasks. */
#define mainQUEUE_RECEIVE_TASK_PRIORITY     ( tskIDLE_PRIORITY + 2 )
#define	mainQUEUE_SEND_TASK_PRIORITY        ( tskIDLE_PRIORITY + 1 )

/* The rate at which data is sent to the queue */
#define mainQUEUE_SEND_FREQUENCY_MS         pdMS_TO_TICKS( 1000 )

#define mainQUEUE_LENGTH                    ( 1 )
#define mainLED_COUNT                       ( 3 )

typedef struct TaskContext {
    struct metal_led*   pxLeds[mainLED_COUNT];
    UBaseType_t         uxCurrLed;
    QueueHandle_t       xQueue;
} TaskContext_t; 

static TaskContext_t* prvCreateTaskContext( void )
{
	TaskContext_t *pxCtx = (TaskContext_t*)pvPortMalloc(sizeof(TaskContext_t));
	configASSERT( pxCtx );
	return pxCtx;
}

static void prvToggleLED( TaskContext_t *pxCtx )
{
    UBaseType_t x;
    for ( x = 0; x < mainLED_COUNT; x++ )
        metal_led_off( pxCtx->pxLeds[x] );

    metal_led_on( pxCtx->pxLeds[pxCtx->uxCurrLed++] );
    if (pxCtx->uxCurrLed >= mainLED_COUNT) pxCtx->uxCurrLed = 0;
}

static void prvQueueSendTask( void *pvParameters )
{
    TaskContext_t *pxCtx = (TaskContext_t*)pvParameters;
    TickType_t xNextWakeTime = xTaskGetTickCount();

    const unsigned long ulValueToSend = 100UL;
    BaseType_t xReturned;

    for( ;; )
    {
        /* Place this task in the blocked state until it is time to run again. */
        vTaskDelayUntil( &xNextWakeTime, mainQUEUE_SEND_FREQUENCY_MS );

        /* Send to the queue */
        xReturned = xQueueSend( pxCtx->xQueue, &ulValueToSend, 0U );
        configASSERT( xReturned == pdPASS );
    }
}

static void prvQueueReceiveTask( void *pvParameters )
{
    TaskContext_t *pxCtx = (TaskContext_t*)pvParameters;
    const unsigned long ulExpectedValue = 100UL;
    unsigned long ulReceivedValue;

    for( ;; )
    {
        /* Wait until something arrives in the queue */
        xQueueReceive( pxCtx->xQueue, &ulReceivedValue, portMAX_DELAY );

        /* Check if value is what we expected and toggle led */
        if( ulReceivedValue == ulExpectedValue )
        {
            prvToggleLED( pxCtx );
            ulReceivedValue = 0U;
        }
    }
}

static void prvSetupContext( TaskContext_t *pxCtx )
{
    /* Create the queue. */
    pxCtx->xQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( uint32_t ) );
    configASSERT( pxCtx->xQueue );

    /* Start the two tasks as described in the comments at the top of this file. */
    xTaskCreate( prvQueueReceiveTask, "RX", configMINIMAL_STACK_SIZE, pxCtx, mainQUEUE_RECEIVE_TASK_PRIORITY, NULL );
    xTaskCreate( prvQueueSendTask, "TX", configMINIMAL_STACK_SIZE, pxCtx, mainQUEUE_SEND_TASK_PRIORITY, NULL );
}

static void prvSetupHardware( TaskContext_t *pxCtx )
{
    /* Setup LEDs */
    pxCtx->pxLeds[0] = pxSetupLED( "LD0", "red" );
    pxCtx->pxLeds[1] = pxSetupLED( "LD0", "blue" );
    pxCtx->pxLeds[2] = pxSetupLED( "LD0", "green" );
    pxCtx->uxCurrLed = 0;

    /* Setup RISC-V metal SDK */
    vSetupInterruptController();
    vSetupTrapHandler();
}

int main( void )
{
    vPrintString("Starting X-RTOS on SiFive RevB (RISC-V)\r\n");
    TaskContext_t *pxCtx = prvCreateTaskContext();

    prvSetupHardware( pxCtx );
    prvSetupContext( pxCtx );

    /* Start the tasks and timer running. */
    vPrintString("Initialization done\r\n");
    vTaskStartScheduler();

    /* Never reached or an error */
    vPortFree( pxCtx );
    for( ;; );
}
