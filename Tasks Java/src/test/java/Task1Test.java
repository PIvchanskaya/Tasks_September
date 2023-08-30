import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task1Test {

    Task1 calculator;

    @BeforeEach
    void setUp() {
        calculator = new Task1();
    }

    @Test
    void add() {
        assertEquals(0, calculator.Add(0, 0));
        assertEquals(5, calculator.Add(2, 3));
        assertEquals(1, calculator.Add(-2, 3));
    }

    @Test
    void sub() {
        assertEquals(-1, calculator.Sub(2, 3));
        assertEquals(1, calculator.Sub(0, -1));
        assertEquals(800, calculator.Sub(1000, 200));
    }

    @Test
    void multiply() {
        assertEquals(6, calculator.Multiply(2, 3));
        assertEquals(0, calculator.Multiply(0, 100));
        assertEquals(40, calculator.Multiply(-2, -20));
    }

    @Test
    void divide() {
        assertEquals(0, calculator.Divide(2, 3));
        assertEquals(0, calculator.Divide(0, -1));
        assertEquals(5, calculator.Divide(1000, 200));
    }
}