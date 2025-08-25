package exercise;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class DriverV2 {

	public static void main(String[] args) {
		Worklist strStack = new Stack();
		strStack.add("the plow.");
		strStack.add("forgives ");
		strStack.add("The cut worm ");

		System.out.println(strStack);

		while (strStack.hasMore()) {
			System.out.print(strStack.remove()); 
		}
		
		System.out.println();
		
		Worklist strQueue = new Queue();
		strQueue.add("CSX3004 ");
		strQueue.add("Programming Languages");
		System.out.println(strQueue);		
		
		while (strQueue.hasMore()) {
			System.out.print(strQueue.remove());
		}
		
	}

}
