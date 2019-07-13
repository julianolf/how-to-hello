#include "vendor/unity/src/unity.h"
#include "util.h"
#include "test_hello_world.h"
#include "../src/hello_world.h"

void setUp() {}
void tearDown() {}

void test_hello_world()
{
	out_err output = capture_out(&hello_world);

	TEST_ASSERT_EQUAL_STRING("Hello, World!\n", output.out);
}

int main()
{
	UNITY_BEGIN();
	RUN_TEST(test_hello_world);
	return UNITY_END();
}