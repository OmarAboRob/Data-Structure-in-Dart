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

  String s="h((e))llo(world)()";
  if(balanced_Parentheses(s))
    print('Yes');
  else
    print("NO");
  s="(hello world";
  if(balanced_Parentheses(s))
    print('Yes');
  else
    print("NO");
}
bool balanced_Parentheses(String s) {
  // Task two check the balanced parentheses
  final stack = Stack();
  final stack1 = Stack();
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(' || s[i] == '{' || s[i] == '[') stack.push(s[i]);
    if (s[i] == ')' || s[i] == '}' || s[i] == ']') stack1.push(s[i]);
    if (stack.isEmpty)
      continue;
    else if ((stack.peek == '(' && s[i] == ')') ||
        (stack.peek == '{' && s[i] == '}') ||
        (stack.peek == '[' && s[i] == ']')) {
      stack.pop();
      stack1.pop();
    }
  }
  if (stack.isEmpty && stack1.isEmpty)
    return true;
  else
    return false;
}