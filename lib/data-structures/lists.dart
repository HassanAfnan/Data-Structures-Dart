import 'package:flutter/material.dart';

class ListInDart extends StatefulWidget {
  const ListInDart({Key? key}) : super(key: key);

  @override
  State<ListInDart> createState() => _ListInDartState();
}

class _ListInDartState extends State<ListInDart> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showResult();
  }

  showResult(){
    // Filling list with repeated elements.
    List<String> repeatedFruits = List<String>.filled(5,"apple");
    List<int> repeatedNumbers = [1,2,3,4,5,6,7,8,9,10];
    print("Repeated List ==> ${repeatedFruits}");
    // Modifying a set of items
    repeatedFruits.setAll(1,["mango","grapes","banana","cherry"]);
    print("Modified List ==> ${repeatedFruits}");
    // Repeated numbers
    print("Repeated Numbers ==> ${repeatedNumbers}");
    // Remove items
    repeatedNumbers.remove(3);
    print("Remove given item ==> ${repeatedNumbers}");
    repeatedNumbers.removeAt(0);
    print("Remove item on index ==> ${repeatedNumbers}");
    repeatedNumbers.removeWhere((element) => element % 3 == 0);
    print("Remove item on a condition ==> ${repeatedNumbers}");
    repeatedNumbers.removeRange(2,4);
    print("Remove item on a range ==> ${repeatedNumbers}");
    repeatedNumbers.removeLast();
    print("Remove last item ==> ${repeatedNumbers}");
    // using iterators
    List<int> repeatedNumbers1 = [1,2,3,4,5,6,7,8,9,10];
    var iterator = repeatedNumbers1.iterator;
    while(iterator.moveNext()){
      if(iterator.current % 2 == 0){
        print("${iterator.current}");
      }
    }
    // shuffling a list
    List<int> repeatedNumbers2 = [1,2,3,4,5,6,7,8,9,10];
    print("Original list ==> ${repeatedNumbers2}");
    repeatedNumbers2.shuffle();
    print("Shuffled list ==> ${repeatedNumbers2}");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
