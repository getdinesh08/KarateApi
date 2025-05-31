import com.intuit.karate.junit5.Karate;

public class TestRunner {

    @Karate.Test
    Karate test() {
        return Karate.run("classpath:Features").tags("@only"); // relative path from src/test/java
    }
}
