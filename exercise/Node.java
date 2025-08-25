package exercise;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public class Node {
	private String data; 
	private Node link;
	
	public Node(String theData, Node theLink) {
		this.data = theData;
		this.link = theLink;
	}
	
	public Node(String theData) {
		this.data = theData;
		this.link = null;
	}

	public String getData() {
		return this.data;
	}
	
	public Node getLink() {
		return this.link;
	}
	
	public void setData(String theData) {
		this.data = theData;
	}
	
	public void setLink(Node theLink) {
		this.link = theLink;
	}
	
}
