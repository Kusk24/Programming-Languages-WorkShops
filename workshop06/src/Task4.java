// ID - 6612054, Name - Win Yu Maung
// ID - 6642062, Name - Thar Lin Htet
// Sec - 542

class NegativeNumberException extends Exception {
    public NegativeNumberException(String message) {
        super(message);
    }
}

public class Task4 {
    public static void main(String[] args) {

        int[] testNumbers = {16, -9, 0};
        for (int number : testNumbers) {
            try {
                double result = mySqrt(number);
                System.out.println("Square root of " + number + " is: " + result);
            } catch (NegativeNumberException e) {
                System.out.println("Error: " + e.getMessage());
            }
        }
        System.out.println("Program execution completed.");
    }
    public static double mySqrt(int n) throws NegativeNumberException {
        if (n < 0) {
            throw new NegativeNumberException("Cannot calculate square root of negative number: " + n);
        }
        return Math.sqrt(n);
    }
}