import 'package:todolist/domain/item.dart';
import 'package:todolist/domain/to_do_list.dart';

ToDoList createToDoList(String name) {
  var newList = ToDoList(name);
  listStorage.save(newList);
  return newList;
}

void addItemToList(ToDoList list, Item item) {
  list.addItem(item);
}

class ListStorage {
  void save(ToDoList newList) {
    storageManager.save(listStorage);
  }
}
