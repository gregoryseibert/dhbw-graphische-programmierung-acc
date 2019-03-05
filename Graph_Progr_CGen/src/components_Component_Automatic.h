#ifndef _ASD_COMPONENTS_COMPONENT_AUTOMATIC_H_
#define _ASD_COMPONENTS_COMPONENT_AUTOMATIC_H_
/**
* @warning AUTOMATICALLY GENERATED FILE! DO NOT EDIT!
*
* @file    components_Component_Automatic.h
*
* @author  Generated by ASCET-DEVELOPER V7.4.0 (Backend: Code Generator V7.4.0)
*
* @date    05.03.2019 13:03:20
*
* @brief   "components_Component>>Automatic (module code)"
*
*/


/*-----------------------------------------------------------------------------
 *    Include files
 *----------------------------------------------------------------------------*/

#include "esdl.h"
#include "chartab.h"


/******************************************************************************
 * BEGIN: DEFINITION OF MEMORY CLASS STRUCTURE FOR CLASS 'components_Component_Automatic'
 * ----------------------------------------------------------------------------
 * memory class:.................................'CAL_MEM'
 * ---------------------------------------------------------------------------*/
struct components_Component_Automatic_CAL_MEM_SUBSTRUCT {
   float32 TrackSize;
   struct CharTable1_real32_6_real32_TYPE AirFriction;
   struct CharTable1_real32_6_real32_TYPE BrakeMomentum;
   struct CharTable2_real32_6_real32_6_real32_TYPE EngineMomentum;
};
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF MEMORY CLASS STRUCTURE FOR CLASS 'components_Component_Automatic'
 ******************************************************************************/


/******************************************************************************
 * BEGIN: DEFINITION OF MEMORY CLASS STRUCTURE FOR CLASS 'components_Component_Automatic'
 * ----------------------------------------------------------------------------
 * memory class:.................................'RAM'
 * ---------------------------------------------------------------------------*/
struct components_Component_Automatic_RAM_SUBSTRUCT {
   float32 dh;
   float32 ds;
   float32 h;
   float32 momentum;
   float32 s;
   float32 v;
};
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF MEMORY CLASS STRUCTURE FOR CLASS 'components_Component_Automatic'
 ******************************************************************************/


/******************************************************************************
 * BEGIN: DEFINITION OF MAIN STRUCTURE FOR CLASS 'components_Component_Automatic'
 * ----------------------------------------------------------------------------
 * memory class:.................................'ROM'
 * ---------------------------------------------------------------------------*/
struct components_Component_Automatic {
   const volatile struct components_Component_Automatic_CAL_MEM_SUBSTRUCT * components_Component_Automatic_CAL_MEM;
   struct components_Component_Automatic_RAM_SUBSTRUCT * components_Component_Automatic_RAM;
};
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF MAIN STRUCTURE FOR CLASS 'components_Component_Automatic'
 ******************************************************************************/

/* Following DEFINE signalizes the completion of definition                   */
/* of data structs for component: .............components_Component_Automatic */
#define _components_Component_Automatic_TYPE_DEF_



/******************************************************************************
 * BEGIN: declaration of global C variables exported by class components_Component_Automatic
 ******************************************************************************/
extern const volatile struct CharTable1_real32_20_real32_TYPE components_Component_Landscape;


/******************************************************************************
 * BEGIN: declaration of global C functions defined by class components_Component_Automatic
 ******************************************************************************/
extern void components_Component_Automatic_calc (
               const struct components_Component_Automatic * self,
   /* IN    */ const float32                                 brake,
   /* IN    */ const float32                                 power,
   /* IN    */ const float32                                 dtime
   );
extern float32 components_Component_Automatic_getPosition ( const struct components_Component_Automatic * self);
extern float32 components_Component_Automatic_getTracksize ( const struct components_Component_Automatic * self);
extern float32 components_Component_Automatic_get_dh ( const struct components_Component_Automatic * self);
extern float32 components_Component_Automatic_get_ds ( const struct components_Component_Automatic * self);
extern float32 components_Component_Automatic_get_v ( const struct components_Component_Automatic * self);



#endif /* _ASD_COMPONENTS_COMPONENT_AUTOMATIC_H_ */
