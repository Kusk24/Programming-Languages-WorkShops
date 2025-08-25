package workshop05;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class Stack<T> implements Worklist<T> {
	private Node<T> top;
	
	public Stack() {
		this.top = null;
	}

	@Override
	public void add(T data) {
		top = new Node<T>(data, top);
	}

	@Override
	public boolean hasMore() {
		return (top != null);
	}

	@Override
	public T remove() throws EmptyWorklistException {
		Node<T> n = top;
		if (top == null) {
			throw new EmptyWorklistException("Stack is empty, cannot remove item.");
		}
		top = n.getLink();
		return n.getData();
		
	}
	
	@Override
	public String toString() {
		return "Top item is " + top.getData();
	}

//	@Override
//	public void add(T item) {
//		push(item);
//	}
//
//	@Override
//	public T remove() throws EmptyWorklistException {
//		if (top == null) {
//			throw new EmptyWorklistException("Stack is empty, cannot remove item.");
//		}
//		return pop();
//	}

//	@Override
//	public void add(String item) {
//		push(item);
//	}
//
//	@Override
//	public String remove() {
//		return pop();
//	}
}
