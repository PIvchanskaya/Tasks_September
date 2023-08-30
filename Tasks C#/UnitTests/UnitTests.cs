public class Task1Tests
{
    Calculator _calculator;

    [SetUp]
    public void SetUp() => _calculator = new();

    [Test]
    [TestCase(2, 3, 5)]
    [TestCase(0, 0, 0)]
    [TestCase(-2, 3, 1)]
    public void AddTest(int num1, int num2, int expectedValue)
    {
        var result = _calculator.Add(num1, num2);
        Assert.AreEqual(expectedValue, result);
    }

    [Test]
    [TestCase(2, 3, -1)]
    [TestCase(0, -1, 1)]
    [TestCase(1000, 200, 800)]
    public void SubTest(int num1, int num2, int expectedValue)
    {
        var result = _calculator.Sub(num1, num2);
        Assert.AreEqual(expectedValue, result);
    }

    [Test]
    [TestCase(2, 3, 6)]
    [TestCase(0, 100, 0)]
    [TestCase(-2, -20, 40)]
    public void MultiplyTest(int num1, int num2, int expectedValue)
    {
        var result = _calculator.Multiply(num1, num2);
        Assert.AreEqual(expectedValue, result);
    }

    [Test]
    [TestCase(2, 3, 0)]
    [TestCase(0, -1, 0)]
    [TestCase(1000, 200, 5)]
    public void DivideTest(int num1, int num2, int expectedValue)
    {
        var result = _calculator.Sub(num1, num2);
        Assert.AreEqual(expectedValue, result);
    }

}

public class Task2Tests
{
    Fraction _fraction;

    [SetUp]
    public void SetUp() => _fraction = new();

    [Test]
    [TestCase(93, 5, "No")]
    [TestCase(0, 100, "Yes")]
    [TestCase(3, 1.5, "Yes")]
    [TestCase(25, 5, "Yes")]
    [TestCase(6, 6, "Yes")]
    [TestCase(1, 100, "No")]
    public void CanBeReducedTest(decimal value1, decimal value2, string expectedValue)
    {
        var result = _fraction.CanBeReduced(value1, value2);
        Assert.AreEqual(result, expectedValue);
    }

}

public class Task3Tests
{
    LeastCommonMultiple _leastCommonMultiple;

    [SetUp]
    public void SetUp() => _leastCommonMultiple = new();

    [Test]
    [TestCase(6, 12, 18, 36)]
    [TestCase(15, 20, 12, 60)]
    [TestCase(1, 1, 1, 1)]
    [TestCase(10, 5, 1, 10)]
    [TestCase(25, 25, 25, 25)]
    [TestCase(2, 2, 9, 18)]
    public void FindLCMTest(int value1, int value2, int value3, int expectedValue)
    {
        var result = _leastCommonMultiple.FindLCM(value1, value2, value3);
        Assert.AreEqual(expectedValue, result);
    }

}

public class Task4Tests
{
    SumOfDigits _sumOfDigits;

    [SetUp]
    public void SetUp() => _sumOfDigits = new();

    [Test]
    [TestCase(1111, 4)]
    [TestCase(101, 2)]
    [TestCase(999999, 54)]
    [TestCase(100000, 1)]
    [TestCase(18014398509481984, 82)]
    [TestCase(1, 1)]
    public void FindSumTest(long value, int expectedValue)
    {
        var result = _sumOfDigits.FindSum(value);
        Assert.AreEqual(result, expectedValue);
    }

}

public class Task5Tests
{
    ArraySumAndMul _arraySumAndMul;

    [SetUp]
    public void SetUp() => _arraySumAndMul = new();

    [Test]
    [TestCase(new double[] {1.0, 2.0, 3.0, 4.0, 5.0}, -105)]
    [TestCase(new double[] {1.5, 3.0, 2.2, 0.1, 5}, 6.85)]
    [TestCase(new double[] {-9.11, 322, -14.88}, -43351.2796)]
    [TestCase(new double[] {0, 0, 0, 0}, 0)]
    [TestCase(new double[] {-78.65, 72.85, -73.33}, -420234.547825)]
    public void FindSumTest(double[] array, double expectedValue)
    {
        var result = _arraySumAndMul.FindSumAndMul(array);
        Assert.AreEqual(result, expectedValue);
    }
}

    



