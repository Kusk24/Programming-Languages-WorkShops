//ID - 6612054, Name - Win Yu Maung
//ID - 6642062, Name - Thar Lin Htet
//Sec - 542

public class Task1 {

    // 1. if an exception is thrown but not caught in Java
    // - the program will terminate immediately, especially in single thread the uncaught exception will cause the entire program to crashes.
    // - JVM will print out the breif description of the exception.
    // - No futher code will be executed where uncaught exception occurs because the program's flow is interrupted.


    public class UncaughtExceptionExample {
        public static void main(String[] args) {
            System.out.println("Start");
            int x = 5 / 0;  // Division by zero - uncaught!
            System.out.println("End");  // This never runs
        }
    }

    // 2. RunTimeException vs IOException
    //  The main difference between those two exception is that RuntimeException is unchecked exception, which means it does not require explicit
    //  handling in the code (eg. NullpointerException, ArrayIndexOutOfBoundsException, etc.), those will be caught by the JVM at runtime while
    //  IOException is a checked exception, which means it must be handled explicity in the code (eg. FileNotFoundException, EOFException, etc.)
    //  by the programmer using try-catch blocks.


}