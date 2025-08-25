package workshop05;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class EmptyWorklistException extends Exception {

	public EmptyWorklistException(String message) {
		super("The " + message +  " is empty.");
	}
}
