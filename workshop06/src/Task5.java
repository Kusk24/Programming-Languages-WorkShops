// ID - 6612054, Name - Win Yu Maung
// ID - 6642062, Name - Thar Lin Htet
// Sec - 542

public class Task5 {
    public static void main(String[] args) {
        System.out.println("Starting main() method");
        try {
            methodA();
            System.out.println("This line won't be reached due to exception");
        } catch (RuntimeException e) {
            System.out.println("Exception caught in main(): " + e.getMessage());
            System.out.println("Exception type: " + e.getClass().getSimpleName());
        }
        System.out.println("main() method completed");
    }
    public static void methodA() {
        System.out.println("Entering methodA()");

        methodB();
        System.out.println("This line in methodA() won't be reached");
    }
    public static void methodB() {
        System.out.println("Entering methodB()");

        throw new IllegalStateException("Exception thrown from methodB()!");
    }
}
