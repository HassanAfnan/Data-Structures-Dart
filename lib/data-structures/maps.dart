import 'package:flutter/material.dart';

class MapInDart extends StatefulWidget {
  const MapInDart({Key? key}) : super(key: key);

  @override
  State<MapInDart> createState() => _MapInDartState();
}

class _MapInDartState extends State<MapInDart> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showResults();
  }

  showResults(){
    // creating empty map
    var map = {};
    print("Empty map ==> ${map}");

    // filling a map
    map["name"] = "Ali";
    map["age"] = 23;
    print("Filled map ==> ${map}");

    // setting items at once
    map.addAll({"education":"BSC","nationality":"Pakistani"});
    print("More than one items added at once ==> ${map}");

    // checking and adding key if not exsist
    map.putIfAbsent("school", () => "Little Fox");
    print("item if not present ==> ${map}");
    map.putIfAbsent("name", () => "Sameer");
    print("item if present ==> ${map}");

    // retrieving | updating | deleting
    print("retrieved ==> ${map["name"]}");
    map["age"] = 50;
    print("item is updated ==> ${map}");
    map.remove("school");
    print("item is removed ==> ${map}");

    // remove on a condition
    map.removeWhere((key, value) => key.startsWith("a"));
    print("item is removed using cond on key ==> ${map}");

    // remove on a condition using value
    map.removeWhere((key, value) => value.startsWith("A"));
    print("item is removed using cond on value ==> ${map}");

    // iterating on a map
    Map<String, int> map1 = {'first': 10, 'second': 20, 'third': 30, 'fourth': 40};
      // getting all values
      map1.forEach((key, value) {
        print("Using map ==> ${map1[key]}");
      });
      // getting all keys
       for(String k in map1.keys){
         print("Using kays ==> ${k}");
       }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
