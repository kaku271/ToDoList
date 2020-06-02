import 'package:todolist/item.dart';
import 'package:todolist/todolist.dart';

ToDoList createToDoList(String name) {
  return ToDoList(name);
}

void addItemToList(ToDoList list, Item item) {
  list.addItem(item);
}
