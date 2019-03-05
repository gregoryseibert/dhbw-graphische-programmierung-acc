#ifndef ESDL_MUTEX_H
#define ESDL_MUTEX_H

/**
 * @file    esdl_mutex.h
 *
 * @author  ETAS GmbH
 *
 * @date    2014.09.25 10:36:34
 *
 * @brief   Header file containing header access to the underlying OS
 *          for ensuring mutual exclusion when caching messages
 *
 * @version 2.0
 *
 * @copyright ETAS GmbH, Stuttgart, Germany. All rights reserved
 **/

/* Provide all generated code global access to user provided header file(s) */

#include "esdl_usercfg.h"

#ifdef ASCET_PLATFORM_BUILD
#include "platform_defs.h"
#endif

/* Provide access to OS API for concurrency Control Macros */

#if defined(OSENV_RTAOS40)||defined(OSENV_RTAOS30)
    /* Use AUTOSAR OS */
    #include "Os.h"
#elif defined(OSENV_RTAOSEK)
    /* Use the RTA-OSEK version of OSEK
	 * This may work for other OSEK implementations and assumes an
	 * OSEK OS 2.2.3 compatible API
	 */
    #include "osek.h"
#elif defined(OSENV_UNSUPPORTED)
	/* Use an OS not know to ESDL
	 * Ensure that esdl_usercfg.h includes access to code that defines
	 * the following C function prototypes
	 * - void SuspendAllInterrupts(void)
	 * - void ResumeAllInterrupts(void)
	 * The functions should disable all interrupts on the device up to and
	 * including the interrupt priority of the highest priority interrupt
	 * calls ASCET-generated code that uses messages.
	 */
#elif defined(SINGLE_THREADED)
	#define SuspendAllInterrupts() do {} while (0)
	#define ResumeAllInterrupts() do {} while (0)
	#define EnableAllInterrupts() do {} while (0)
    #define DisableAllInterrupts() do {} while (0)
#else
    /* Use Define API but issue warning  */
	#warning Potentially unsafe message caching. Race conditions may occur in multi-threaded environments. See esdl_mutex.h for options
	#define SuspendAllInterrupts() do {} while (0)
	#define ResumeAllInterrupts() do {} while (0)
	#define EnableAllInterrupts() do {} while (0)
    #define DisableAllInterrupts() do {} while (0)
#endif

/* Message copy caching needs a memcpy, with identical behaviour to that provided in the
 * standard C library for fast caching of composite data elements
 */

#if !defined(ESDL_USER_MEMCPY)||!defined(RTE_LIBC_MEMCPY)
    /* Use C standard library function if the user doesn't define their own */
	/* The standard C library for your compiler must be on the include path */
	#include "string.h"
#endif

#endif /* ESDL_H */
