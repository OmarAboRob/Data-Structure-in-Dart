class Stack<E> {
  final List _storage;
  Stack() : _storage = [];

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
}


void main() {
  List<int> x =[1,2,3,4,5,6,7,8,9];
  print("The list:$x");
  print("The  reveresed list ");
  reverse_list(x);
  

}
void reverse_list(List a) {
  // Task one reverese a list
  final stack = Stack();

  for (int i = 0; i < a.length; i++) stack.push(a[i]);
  for (int i = 0; i < a.length; i++) a[i] = stack.pop();

    print(a);

}