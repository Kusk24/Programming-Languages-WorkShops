package workshop05;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class Node<T> {
	private T data;
	private Node<T> link;
	
	public Node(T theData, Node<T> theLink) {
		this.data = theData;
		this.link = theLink;
	}
	
	public Node(T theData) {
		this.data = theData;
		this.link = null;
	}

	public T getData() {
		return this.data;
	}
	
	public Node<T> getLink() {
		return this.link;
	}
	
	public void setData(T theData) {
		this.data = theData;
	}
	
	public void setLink(Node<T> theLink) {
		this.link = theLink;
	}
	
}
