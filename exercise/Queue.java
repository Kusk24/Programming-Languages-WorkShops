package exercise;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class Queue implements Worklist{
	private Node front;
	private Node rear;

	public Queue() {
		this.front = null;
		this.rear = null;
	}

	public boolean isEmpty() {
		return (front == null && rear == null);
	}

	public boolean enqueue(String item) {
		Node newNode = new Node(item);
		if (isEmpty()) {
			front = newNode;
		} else {
			rear.setLink(newNode);
		}
		rear = newNode;
		return true;
	}

	public String dequeue() {
		if (isEmpty()) {
			return null;
		} else {
			String item = front.getData();
			if (front == rear) {
				rear = null;
			} 
			front = front.getLink();
			return item;
		}
	}

	@Override
	public String toString() {
		String result = "[";
		Node current = front;

		while (current != null) {
			result += " " + current.getData().toString();
			current = current.getLink();
		}
		result += " ]";
		return result;
	}

	@Override
	public void add(String item) {
		enqueue(item);
	}

	@Override
	public boolean hasMore() {
		return !isEmpty();
	}

	@Override
	public String remove() {
		return dequeue();
	}
}
