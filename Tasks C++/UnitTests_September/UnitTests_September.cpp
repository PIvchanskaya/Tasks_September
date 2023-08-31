#include "pch.h"
#include "CppUnitTest.h"
#include "../Tasks_Cpp_September/Task_1.h"
#include "../Tasks_Cpp_September/Task_2.h"
#include "../Tasks_Cpp_September/Task_3.h"
#include "../Tasks_Cpp_September/Task_4.h"
#include "../Tasks_Cpp_September/Task_5.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace UnitTestsSeptember
{
    TEST_CLASS(Tests_1)
    {
    public:
        calculator calc;
        TEST_METHOD(Test1_Method1)
        {
            Assert::AreEqual(calc.add(2, -2), 0);
            Assert::AreEqual(calc.add(200, -2), 198);
            Assert::AreEqual(calc.add(-2, 5), 3);
           
        }
        TEST_METHOD(Test1_Method2)
        {
            Assert::AreEqual(calc.sub(5, 2), 3);
            Assert::AreEqual(calc.sub(-5, 2), -7);
            Assert::AreEqual(calc.sub(5, -22), 27);
        }
        TEST_METHOD(Test1_Method3)
        {
            Assert::AreEqual(calc.multiply(2, 100), 200);
            Assert::AreEqual(calc.multiply(2, -5), -10);
            Assert::AreEqual(calc.multiply(2, 0), 0);

        }
        TEST_METHOD(Test1_Method4)
        {
            Assert::AreEqual(calc.divide(2, 1), 1);
            Assert::AreEqual(calc.divide(2, 100), 0);
            Assert::AreEqual(calc.divide(10, -2), -5);
        }
    };

    TEST_CLASS(Tests_2)
    {
    public:
        fraction fract;

        TEST_METHOD(Test2_Method1)
        {
            Assert::AreEqual(fract.canBeReduced(9, 3), std::string("Yes"));
        }
        TEST_METHOD(Test2_Method2)
        {
            Assert::AreEqual(fract.canBeReduced(9, 6), std::string("No"));
        }
        TEST_METHOD(Test2_Method3)
        {
            Assert::AreEqual(fract.canBeReduced(900, -3), std::string("Yes"));
        }
    };

    TEST_CLASS(Tests_3)
    {
    public:
        leastCommonMultiple lcm;
        TEST_METHOD(Test3_Method1)
        {
            Assert::AreEqual(lcm.findLCM(3, 5, 7), 105);
        }
        TEST_METHOD(Test3_Method2)
        {
            Assert::AreEqual(lcm.findLCM(10, 10, 20), 20);
        }
        TEST_METHOD(Test3_Method3)
        {
            Assert::AreEqual(lcm.findLCM(6, 9, 12), 36);
        }
    };

    TEST_CLASS(Tests_4)
    {
    public:
        SumOfDigits sog;
        TEST_METHOD(Test4_Method1)
        {
            Assert::AreEqual(sog.findSum(11), 2);
        }
        TEST_METHOD(Test4_Method2)
        {
            Assert::AreEqual(sog.findSum(234), 9);
        }
        TEST_METHOD(Test4_Method3)
        {
            Assert::AreEqual(sog.findSum(109), 10);
        }
    };

    TEST_CLASS(Tests_5)
    {
    public:
        arraySumAndMul arr;

        TEST_METHOD(Test5_Method1)
        {
            double values[] = { 0.1, 0.1, 0.1 };
            Assert::AreEqual(round(1000*(arr.findSumAndMul(values, sizeof(values) / sizeof(double))))/1000, 0.299);
        }

        TEST_METHOD(Test5_Method2)
        {
            double values[] = { -2, -1, 0, 1, 2 };
            Assert::AreEqual(arr.findSumAndMul(values, sizeof(values) / sizeof(double)), 0.0);
        }

        TEST_METHOD(Test5_Method3)
        {
            double values[] = { 1, 2, 3, 4 };
            Assert::AreEqual(arr.findSumAndMul(values, sizeof(values) / sizeof(double)), -14.0);
        }

        
    };

}
