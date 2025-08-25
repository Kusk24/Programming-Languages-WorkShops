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
