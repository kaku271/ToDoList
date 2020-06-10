import 'item.dart';

class ToDoList {
  final String name;
  final List<Item> _items = [];

  int get length {
    return _items.length;
  }

  ToDoList(this.name);

  Item getAtIndex(int index) {
    return _items[index];
  }

  void addItem(Item item) {
    _items.add(item);
  }
}
