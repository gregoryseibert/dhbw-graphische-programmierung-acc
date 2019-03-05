/******************************************************************************
 *    	Interface to google-test framework with numeric assertion functions
 ******************************************************************************/
 
#ifndef SUPPRESS_SRV_FUNCTION_DECLARATION
#define SUPPRESS_SRV_FUNCTION_DECLARATION
#endif

#ifndef ASSERT_TRUE
#define ASSERT_TRUE(val)
#endif

#ifndef ASSERT_FALSE
#define ASSERT_FALSE(val)
#endif

#ifndef ASSERT_EQ
#define ASSERT_EQ(val1, val2)
#endif

#ifndef ASSERT_INT_EQ
#define ASSERT_INT_EQ(val1, val2) ASSERT_EQ(val1, val2)
#endif

#ifndef ASSERT_UINT_EQ
#define ASSERT_UINT_EQ(val1, val2) ASSERT_EQ(val1, val2)
#endif

#ifndef ASSERT_FLOAT_EQ
#define ASSERT_FLOAT_EQ(val1, val2)
#endif

#ifndef ASSERT_DOUBLE_EQ
#define ASSERT_DOUBLE_EQ(val1, val2)
#endif

#ifndef ASSERT_NEAR
#define ASSERT_NEAR(val1, val2, abs_error)
#endif

#ifndef ASSERT_NE
#define ASSERT_NE(val1, val2)
#endif

#ifndef ASSERT_INT_NE
#define ASSERT_INT_NE(val1, val2) ASSERT_NE(val1, val2)
#endif

#ifndef ASSERT_UINT_NE
#define ASSERT_UINT_NE(val1, val2) ASSERT_NE(val1, val2)
#endif

#ifndef ASSERT_LT
#define ASSERT_LT(val1, val2)
#endif

#ifndef ASSERT_INT_LT
#define ASSERT_INT_LT(val1, val2) ASSERT_LT(val1, val2)
#endif

#ifndef ASSERT_UINT_LT
#define ASSERT_UINT_LT(val1, val2) ASSERT_LT(val1, val2)
#endif

#ifndef ASSERT_LE
#define ASSERT_LE(val1, val2)
#endif

#ifndef ASSERT_INT_LE
#define ASSERT_INT_LE(val1, val2) ASSERT_LE(val1, val2)
#endif

#ifndef ASSERT_UINT_LE
#define ASSERT_UINT_LE(val1, val2) ASSERT_LE(val1, val2)
#endif

#ifndef ASSERT_GT
#define ASSERT_GT(val1, val2)
#endif

#ifndef ASSERT_INT_GT
#define ASSERT_INT_GT(val1, val2) ASSERT_GT(val1, val2)
#endif

#ifndef ASSERT_UINT_GT
#define ASSERT_UINT_GT(val1, val2) ASSERT_GT(val1, val2)
#endif

#ifndef ASSERT_GE
#define ASSERT_GE(val1, val2)
#endif

#ifndef ASSERT_INT_GT
#define ASSERT_INT_GT(val1, val2) ASSERT_GE(val1, val2)
#endif

#ifndef ASSERT_UINT_GT
#define ASSERT_UINT_GT(val1, val2) ASSERT_GE(val1, val2)
#endif

#ifndef ASSERT_BETWEEN
#define ASSERT_BETWEEN(val, left_bound, right_bound) {\
	double _temp = val;\
	ASSERT_TRUE(_temp >= left_bound && _temp <= right_bound);\
}
#endif

#ifndef ASSERT_INT_BETWEEN
#define ASSERT_INT_BETWEEN(val, left_bound, right_bound) ASSERT_BETWEEN(val, left_bound, right_bound)
#endif

#ifndef ASSERT_UINT_BETWEEN
#define ASSERT_UINT_BETWEEN(val, left_bound, right_bound) ASSERT_BETWEEN(val, left_bound, right_bound)
#endif

#ifndef SUPPRESS_SRV_FUNCTION_DECLARATION
#define SUPPRESS_SRV_FUNCTION_DECLARATION
#endif

#ifndef EXPECT_TRUE
#define EXPECT_TRUE(val)
#endif

#ifndef EXPECT_FALSE
#define EXPECT_FALSE(val)
#endif

#ifndef EXPECT_EQ
#define EXPECT_EQ(val1, val2)
#endif

#ifndef EXPECT_INT_EQ
#define EXPECT_INT_EQ(val1, val2) EXPECT_EQ(val1, val2)
#endif

#ifndef EXPECT_UINT_EQ
#define EXPECT_UINT_EQ(val1, val2) EXPECT_EQ(val1, val2)
#endif

#ifndef EXPECT_FLOAT_EQ
#define EXPECT_FLOAT_EQ(val1, val2)
#endif

#ifndef EXPECT_DOUBLE_EQ
#define EXPECT_DOUBLE_EQ(val1, val2)
#endif

#ifndef EXPECT_NEAR
#define EXPECT_NEAR(val1, val2, abs_error)
#endif

#ifndef EXPECT_NE
#define EXPECT_NE(val1, val2)
#endif

#ifndef EXPECT_INT_NE
#define EXPECT_INT_NE(val1, val2) EXPECT_NE(val1, val2)
#endif

#ifndef EXPECT_UINT_NE
#define EXPECT_UINT_NE(val1, val2) EXPECT_NE(val1, val2)
#endif

#ifndef EXPECT_LT
#define EXPECT_LT(val1, val2)
#endif

#ifndef EXPECT_INT_LT
#define EXPECT_INT_LT(val1, val2) EXPECT_LT(val1, val2)
#endif

#ifndef EXPECT_UINT_LT
#define EXPECT_UINT_LT(val1, val2) EXPECT_LT(val1, val2)
#endif

#ifndef EXPECT_LE
#define EXPECT_LE(val1, val2)
#endif

#ifndef EXPECT_INT_LE
#define EXPECT_INT_LE(val1, val2) EXPECT_LE(val1, val2)
#endif

#ifndef EXPECT_UINT_LE
#define EXPECT_UINT_LE(val1, val2) EXPECT_LE(val1, val2)
#endif

#ifndef EXPECT_GT
#define EXPECT_GT(val1, val2)
#endif

#ifndef EXPECT_INT_GT
#define EXPECT_INT_GT(val1, val2) EXPECT_GT(val1, val2)
#endif

#ifndef EXPECT_UINT_GT
#define EXPECT_UINT_GT(val1, val2) EXPECT_GT(val1, val2)
#endif

#ifndef EXPECT_GE
#define EXPECT_GE(val1, val2)
#endif

#ifndef EXPECT_INT_GT
#define EXPECT_INT_GT(val1, val2) EXPECT_GE(val1, val2)
#endif

#ifndef EXPECT_UINT_GT
#define EXPECT_UINT_GT(val1, val2) EXPECT_GE(val1, val2)
#endif

#ifndef EXPECT_BETWEEN
#define EXPECT_BETWEEN(val, left_bound, right_bound) { \
	double _temp = val; \
	EXPECT_TRUE(_temp >= left_bound && _temp <= right_bound); \
}
#endif

#ifndef EXPECT_INT_BETWEEN
#define EXPECT_INT_BETWEEN(val, left_bound, right_bound) EXPECT_BETWEEN(val, left_bound, right_bound)
#endif

#ifndef EXPECT_UINT_BETWEEN
#define EXPECT_UINT_BETWEEN(val, left_bound, right_bound) EXPECT_BETWEEN(val, left_bound, right_bound)
#endif

