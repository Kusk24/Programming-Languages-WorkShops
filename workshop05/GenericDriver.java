package workshop05;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class GenericDriver {

	public static void main(String[] args)  {
		Worklist<String> strStack = new Stack<String>();
		strStack.add("an eagle");
		strStack.add("like");
		strStack.add("flies");
		strStack.add("Time");
		System.out.println(strStack);

		try {
			while (strStack.hasMore()) {
				System.out.print(strStack.remove());
			}
		} catch (EmptyWorklistException e) {
			System.out.println(e.getMessage());
		}

		
		System.out.println();
		
		Worklist<Integer> strQueue = new Queue<Integer>();
		strQueue.add(5);
		strQueue.add(10);
		strQueue.add(15);
		System.out.println(strQueue);		

		try {
			while (strQueue.hasMore()) {
				System.out.print(strQueue.remove());
		}
		} catch (EmptyWorklistException e) {
			System.out.println(e.getMessage());
		}
		
	}

}
