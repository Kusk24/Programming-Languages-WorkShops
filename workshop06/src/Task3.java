// ID - 6612054, Name - Win Yu Maung
// ID - 6642062, Name - Thar Lin Htet
// Sec - 542

class DivisionByZeroException extends Exception {
    public DivisionByZeroException(String message) {
        super(message);
    }
}

public class Task3 {
    public static void main(String[] args) {
        int[] numbers = {2, 10, 8};

        try {
            System.out.println("Number: " + numbers[5]);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Array error: Out of bounds! Accessing index 5 for length 3.");
        }

        try {
            int result = divide(numbers[1], 0);
            System.out.println("Result: " + result);
        } catch (DivisionByZeroException e) {
            System.out.println("Custom math error: " + e.getMessage());
        }
        System.out.println("Execution finished.");
    }
    public static int divide(int a, int b) throws DivisionByZeroException {
        if (b == 0) {
            throw new DivisionByZeroException("Cannot divide by zero!");
        }
        return a / b;
    }
}