#ifndef ESDL_H
#define ESDL_H

/**
 * @file    esdl.h
 *
 * @author  ETAS GmbH
 *
 * @date    2014.09.25 10:36:34
 *
 * @brief   Main header file to be included by all ESDL generated code
 *
 * @version 2.0
 *
 * @copyright ETAS GmbH, Stuttgart, Germany. All rights reserved
 **/

/* Provide all generated code global access to user provided header file(s) */

#include "esdl_usercfg.h"
#include "esdl_mutex.h"
/* ESDL C base types */

#if defined(ESDL_AUTOSAR_USE_RTE_TYPE)
    /* Access AUTOSAR types through the RTE header */
    #include "Rte_Type.h"
#elif defined(ESDL_AUTOSAR_USE_STD_TYPES)
    /* Access AUTOSAR types through the Standard Types header */
    #include "Std_Types.h"
#else
    /* Use native ESDL base type definitions */
    #if defined(ESDL_CUSTOM_BASE_TYPES)
        #include ESDL_CUSTOM_BASE_TYPES
    #else
        #include "esdl_types.h"
    #endif
#endif

/* ESDL C type limits */
#include "esdl_limits.h"

/* ESDL TRUE/FALSE definitions */

#if defined(ESDL_AUTOSAR_USE_STD_TYPES) || defined(ESDL_AUTOSAR_USE_RTE_TYPE)
    /* Map ESDL's internal boolean values true/false to AUTOSAR standard values TRUE/FALSE */
    #ifndef false
        #define false FALSE
    #endif
    #ifndef true
        #define true  TRUE
    #endif
#endif

#include "esdl_messageCopy.h"

#endif /* ESDL_H */
