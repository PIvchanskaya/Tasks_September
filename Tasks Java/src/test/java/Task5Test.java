import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task5Test {

    Task5 ArraySumAndMul;

    @BeforeEach
    void setUp() {
        ArraySumAndMul = new Task5();
    }

    @Test
    void findSumAndMul() {
        assertEquals(-105, new double[] {1.0, 2.0, 3.0, 4.0, 5.0});
        assertEquals(new double[] {1.5, 3.0, 2.2, 0.1, 5}, 6.85);
        assertEquals(new double[] {-9.11, 322, -14.88}, -43351.2796);
        assertEquals(new double[] {0, 0, 0, 0}, 0);
        assertEquals(new double[] {-78.65, 72.85, -73.33}, -420234.547825);
    }
}