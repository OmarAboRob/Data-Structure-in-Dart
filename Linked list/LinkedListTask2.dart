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
   getMiddle(list);


}
void getMiddle(LinkedList list) {
  // task two find the middle node
 var fast = list.head ;
  int x=0;
   while (fast?.next != null) {
     x++;
     fast=fast?.next;}
  x=x~/2;
  fast = list.head ;
 while (x!=0) {
 fast = fast?.next;
   x--;
 }
  if(fast!=null)
 print(fast.value);
}