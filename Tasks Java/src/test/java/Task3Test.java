import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task3Test {

    Task3 LeastCommonMultiple;
    @BeforeEach
    void setUp() {
        LeastCommonMultiple = new Task3();
    }

    @Test
    void findLCM() {
        assertEquals(36, LeastCommonMultiple.FindLCM(6, 12, 18));
        assertEquals(60, LeastCommonMultiple.FindLCM(15, 20, 12));
        assertEquals(1, LeastCommonMultiple.FindLCM(1, 1, 1));
        assertEquals(10, LeastCommonMultiple.FindLCM(10, 5, 1));
        assertEquals(25, LeastCommonMultiple.FindLCM(25, 25, 25));
        assertEquals(18, LeastCommonMultiple.FindLCM(2, 2, 9));
    }
}