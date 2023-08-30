import org.junit.Assert;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task4Test {

    Task4 SumOfDigits;

    @BeforeEach
    void setUp() {
        SumOfDigits = new Task4();
    }

    @Test
    void findSum() {
        assertEquals(4, SumOfDigits.FindSum(1111));
        assertEquals(2, SumOfDigits.FindSum(101));
        assertEquals(54, SumOfDigits.FindSum(999999));
        assertEquals(1, SumOfDigits.FindSum(100000));
        assertEquals(82, SumOfDigits.FindSum(18014398509481984L));
        assertEquals(1, SumOfDigits.FindSum(1));
    }
}