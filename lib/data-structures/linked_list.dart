import 'package:flutter/material.dart';

class LinkedListInDart extends StatefulWidget {
  const LinkedListInDart({super.key});

  @override
  State<LinkedListInDart> createState() => _LinkedListInDartState();
}

class _LinkedListInDartState extends State<LinkedListInDart> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showResults();
  }

  showResults(){
    // manual link list
    final node1 = Node(value: 1);
    final node2 = Node(value: 2);
    final node3 = Node(value: 3);

    node1.next = node2;
    node2.next = node3;

    print(node1);

    final frontList = LinkedList<int>();
    frontList.push(1);
    frontList.push(2);
    frontList.push(3);
    frontList.push(4);
    print(frontList);

    final endList = LinkedList<int>();
    endList.append(1);
    endList.append(2);
    endList.append(3);
    print(endList);

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}


class Node<T> {
  late T value;
  late Node<T>? next;
  Node({ required this.value ,  this.next});

  @override
  String toString() {
    if(next == null){
      return "${value}";
    }
    return "${value} -> ${next.toString()}";
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  get isEmpty => head == null;

  @override
  String toString() {
    if(isEmpty) return "Empty List";
    return head.toString();
  }

  // Add value to the list from front.
  void push(E value){
    head = Node(value: value, next: head);
    tail ??= head;
  }

  // Add value to the list from end.
  void append(E value){
    if(isEmpty){
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }
}


