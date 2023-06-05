/*!
 *  @file x-rtos/src/sifive.h
 *
 *  This source is part of "x-rtos" project
 *  2015-2020  Sun Dro (s.kalatoz@gmail.com)
 * 
 * @brief Implementation of hook / interrupt handlers
 * and helper functions for the SiFive RevB (RISK-V).
 */

#ifndef __FREERTOS_SIFIVE_H__
#define __FREERTOS_SIFIVE_H__

/* NOP count for NULL loop delay */
#define sifiveNULL_LOOP_DELAY   0x1ffffUL

/* Index to first HART (there is only one). */
#define sifiveHART_0            0

/* User implemented helper functions to make some routines easier */
void vNullLoopDelay(const uint32_t ulNopDelay);
void vPrintString( const char *pcString );
void vAssertCalled( void );

/* RISC-V metal SDK initialization helpers */
struct metal_led *pxSetupLED( char *pcLabel, char *pcColor );
void vSetupInterruptController( void );
void vSetupTrapHandler( void );

#endif /* __FREERTOS_SIFIVE_H__ */