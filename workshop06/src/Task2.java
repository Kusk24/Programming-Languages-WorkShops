public class Task2 {
    public static void main(String[] args) {
        int[] numbers = {2, 10, 8};
        try {
            System.out.println("Number: " + numbers[5]);        // <-- out of bounds (index 5)
            int result = divide(numbers[1], 0);                  // <-- division by zero
            System.out.println("Result: " + result);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Array error: " + e.getMessage());
        } catch (ArithmeticException e) {
            System.out.println("Math error: " + e.getMessage());
        } finally {
            System.out.println("Execution finished.");
        }
    }

    public static int divide(int a, int b) {
        return a / b;
    }
}

// ID - 6612054, Name - Win Yu Maung
// ID - 6642062, Name - Thar Lin Htet
// Sec - 542

// in Line 5 - ArrayIndexOutOfBoundsException, Type - RuntimeException
// in Line 6 - ArithmeticException, Type - RuntimeException

// In order to fix the code, we handle the exceptions properly by using try-catch block for each.

class Task2Fixed {
    public static void main(String[] args) {
        int[] numbers = {2, 10, 8};
        try {
            System.out.println("Number: " + numbers[5]);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Array error: " + e.getMessage());
        } finally {
            System.out.println("Execution finished.");
        }

        try {
            int result = divide(numbers[1], 0);
            System.out.println("Result: " + result);
        } catch (ArithmeticException e) {
            System.out.println("Math error: " + e.getMessage());
        } finally {
            System.out.println("Execution finished.");
        }
    }

    public static int divide(int a, int b) {
        return a / b;
    }
}
