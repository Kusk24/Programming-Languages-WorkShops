package exercise;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class DriverV1 {

	public static void main(String[] args) {
		Stack strStack = new Stack();
		strStack.push("the plow.");
		strStack.push("forgives ");
		strStack.push("The cut worm ");

		System.out.println(strStack);

		while (strStack.hasMore()) {
			System.out.print(strStack.pop()); 
		}
		
		System.out.println();
		
		Queue strQueue = new Queue();
		strQueue.enqueue("CSX3004 ");
		strQueue.enqueue("Programming Languages");
		System.out.println(strQueue);		
	}

}
