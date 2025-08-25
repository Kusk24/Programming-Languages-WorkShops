package workshop05;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class Queue<T> implements Worklist<T>{
	private Node<T> front;
	private Node<T> rear;

	public Queue() {
		this.front = null;
		this.rear = null;
	}

	public boolean isEmpty() {
		return (front == null && rear == null);
	}

	@Override
	public void add(T item) {
		Node<T> newNode = new Node<T>(item);
		if (isEmpty()) {
			front = newNode;
		} else {
			rear.setLink(newNode);
		}
		rear = newNode;
//		return true;
	}

	@Override
	public boolean hasMore() {
		return !isEmpty();
	}

	@Override
	public T remove() throws EmptyWorklistException {
		if (isEmpty()) {
			throw new EmptyWorklistException("Queue is empty, cannot remove item.");
		} else {
			T item = front.getData();
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
		Node<T> current = front;

		while (current != null) {
			result += " " + current.getData().toString();
			current = current.getLink();
		}
		result += " ]";
		return result;
	}

//	@Override
//	public void add(T item) {
//		enqueue(item);
//	}
//	@Override
//	public T remove() throws EmptyWorklistException {
//		if (isEmpty()) {
//			throw new EmptyWorklistException("Queue is empty, cannot remove item.");
//		}
//		return dequeue();
//	}


//	@Override
//	public void add(String item) {
//		enqueue(item);
//	}
//
//
//	@Override
//	public String remove() {
//		return dequeue();
//	}
}
