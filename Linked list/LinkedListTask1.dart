class Stack<E> {
  final List _storage;
  Stack() : _storage = [];

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
}
class Node<T> {
 Node({required this.value, this.next});
 T value;
 Node<T>? next;
  @override
  String toString() {
   if (next == null) return '$value';
   return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
 Node<E>? head;
 Node<E>? tail;
 bool get isEmpty => head == null;
 @override
 String toString() {
 if (isEmpty) return 'Empty list';
 return head.toString();
 }
  Node<E>? nodeAt(int index) {
   // 1
   var currentNode = head;
   var currentIndex = 0;
   // 2
   while (currentNode != null && currentIndex < index) {
   currentNode = currentNode.next;
   currentIndex += 1;
   }
   return currentNode;
  }
  void append(E value) {
   // 1
   if (isEmpty) {
   push(value);
   return;
   }
   // 2
   tail!.next = Node(value: value);
   // 3
   tail = tail!.next;
  }
  void push(E value) {
   head = Node(value: value, next: head);
   tail ??= head;
  }
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

}

void main() {

  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);
     printReverse_linkedList(list);


}
void printReverse_linkedList(LinkedList a){
  // task one  print a linked list in reverese order  
   final stack = Stack();
  while(!a.isEmpty) {
  dynamic x = a.pop();
    stack.push(x);
  }
  while(!stack.isEmpty){
     dynamic x = stack.pop();
    print(x);
  }
}