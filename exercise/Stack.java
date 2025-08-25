package exercise;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class Stack implements Worklist {
	private Node top;
	
	public Stack() {
		this.top = null;
	}
	
	public void push(String data) {
		top = new Node(data, top);
	}

	public boolean hasMore() {
		return (top != null);
	}

	public String pop() {
		Node n = top;
		if (n == null) {
			return null;
		}
		top = n.getLink();
		return n.getData();
		
	}
	
	@Override
	public String toString() {
		return "Top item is " + top.getData();
	}

	@Override
	public void add(String item) {
		push(item);
	}

	@Override
	public String remove() {
		return pop();
	}
}
