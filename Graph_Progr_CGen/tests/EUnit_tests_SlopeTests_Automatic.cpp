// THIS IS A GENERATED FILE => DO NOT EDIT
#include <gtest/gtest.h>

extern "C" {
	#include "components_Component_Automatic.h"
	#include "components_ContinuousTrack_Automatic.h"
	#include "tests_SlopeTests_Automatic.h"
}

namespace {
	// test fixture class
	class tests_SlopeTests_Automatic_SubClass: public ::testing::Test {
		// TODO
	};

	TEST_F(tests_SlopeTests_Automatic_SubClass, tests_SlopeTests_Automatic_testSlopeLimit) {
		while (tests_SlopeTests_RAM.totaldist < (tests_SlopeTests_CAL_MEM.TrackSize * 2.0F))
		{
			components_Component_Automatic_calc(&(tests_SlopeTests.Comp), 0.0F, 100.0F, 0.01F);
			tests_SlopeTests_RAM.dh
				= components_Component_Automatic_get_dh(&(tests_SlopeTests.Comp));
			tests_SlopeTests_RAM.ds
				= components_Component_Automatic_get_ds(&(tests_SlopeTests.Comp));
			tests_SlopeTests_RAM.s
				= components_ContinuousTrack_Automatic_getTrackPosition(tests_SlopeTests_RAM.s, tests_SlopeTests_RAM.ds, tests_SlopeTests_CAL_MEM.TrackSize);
			tests_SlopeTests_RAM.totaldist = components_ContinuousTrack_Automatic_getTotalDistance();
			ASSERT_TRUE((((tests_SlopeTests_RAM.ds == 0.0F) ? tests_SlopeTests_RAM.dh : (tests_SlopeTests_RAM.dh / tests_SlopeTests_RAM.ds))) <= 0.2F);
			ASSERT_TRUE((((tests_SlopeTests_RAM.ds == 0.0F) ? tests_SlopeTests_RAM.dh : (tests_SlopeTests_RAM.dh / tests_SlopeTests_RAM.ds))) >= -0.2F);
		} /* end while */
	}

}