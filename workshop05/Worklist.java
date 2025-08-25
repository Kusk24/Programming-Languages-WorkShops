package workshop05;

// Name - Win Yu Maung
// Student ID - 6612054
// Sec - 542

public interface Worklist<T> {
	void add(T item);
	boolean hasMore();
	T remove() throws EmptyWorklistException;
}
