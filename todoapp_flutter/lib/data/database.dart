import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // referencing our box..
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      // default tasks..
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // loading the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // updating the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
