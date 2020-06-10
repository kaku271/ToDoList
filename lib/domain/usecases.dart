import 'package:todolist/domain/item.dart';
import 'package:todolist/domain/to_do_list.dart';

ToDoList createToDoList(String name) {
  return ToDoList(name);
}

void addItemToList(ToDoList list, Item item) {
  list.addItem(item);
}
