import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class NotiveList {
  String listName;
  bool isMuted;
  int numOfItems;
  int listId;
  Color color;
  
  NotiveList(
      {@required this.listId,
      @required this.listName,
      this.isMuted = false,
      this.numOfItems = 0, 
      this.color = Colors.teal});

  void checkIfMuted() {
    // TO DO
  }

  void setName(String newName) {
    //change list name
    listName = newName;
  }
}
