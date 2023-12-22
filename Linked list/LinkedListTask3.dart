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
   reverse_linkedList(list);


}
void reverse_linkedList(LinkedList a){
  // task three reverse a linked list 
  final list = LinkedList();

  while(!a.isEmpty) {
  dynamic x = a.pop();
    list.push(x);
  }
  print (list);

}