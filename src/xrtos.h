/*!
 *  @file x-rtos/src/xrtos.h
 *
 *  This source is part of "x-rtos" project
 *  2015-2020  Sun Dro (s.kalatoz@gmail.com)
 * 
 * @brief FreeRTOS kernel and Freedom metal driver includes
 */

#ifndef __FREERTOS_SIFIVE_INCLUDES_H__
#define __FREERTOS_SIFIVE_INCLUDES_H__

/* Standard includes. */
#include <stdio.h>
#include <string.h>
#include <unistd.h>

/* FreeRTOS kernel includes. */
#include <FreeRTOS.h>
#include <queue.h>
#include <task.h>

/* Freedom metal driver includes. */
#include <metal/cpu.h>
#include <metal/led.h>

#endif /* __FREERTOS_SIFIVE_INCLUDES_H__ */
