import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task2Test {

    Task2 fraction;

    @BeforeEach
    void setUp() {
        fraction = new Task2();
    }

    @Test
    void canBeReduced() {
        assertEquals("No", fraction.CanBeReduced(93, 5));
        assertEquals("Yes", fraction.CanBeReduced(0, 100));
        assertEquals("Yes", fraction.CanBeReduced(3, 1.5));
        assertEquals("Yes", fraction.CanBeReduced(25, 5));
        assertEquals("Yes", fraction.CanBeReduced(6, 6));
        assertEquals("No", fraction.CanBeReduced(1, 100));
    }
}