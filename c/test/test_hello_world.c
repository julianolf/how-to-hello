#include "vendor/unity/src/unity.h"
#include "../src/hello_world.h"

void setUp(void) {}
void tearDown(void) {}

void test_hello_world(void)
{
	TEST_ASSERT_EQUAL_STRING("Hello, World!", hello_world());
}

int main(void)
{
	UNITY_BEGIN();
	RUN_TEST(test_hello_world);
	return UNITY_END();
}
