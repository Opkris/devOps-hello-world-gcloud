package no.devops.eksamen;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
public class demoApplicationTest {

        @Test
        void contextLoads() {
        }

        @Test
    public void simpleTest(){
            int a = 5;
            int b = 10;
            int c =  a + b;

            assertEquals(15, c);

        }

    }