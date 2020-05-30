import 'package:todolist/todolist.dart';
import 'package:todolist/usecases.dart';
import 'package:test/test.dart';

void main() {
  test('Create list', () {
    // Prepare test
    var name = 'Super';

    // Execute!
    var savedTodoList = createToDoList(name);

    // Check ✓
    var isNull = false;
    if (savedTodoList == null) isNull = true;
    expect(isNull, false);
    expect(savedTodoList.name, name);
  });

  test('Add item', () {
    // Prepare test
    var item = Item('matar a pepe');
    var name = 'Pepe';
    var toDoList = ToDoList(name);

    // Execute!
    addItem(toDoList, item);

    // Check ✓
    expect(toDoList.items.length, 1);
    expect(toDoList.items.first.name, item.name);
  });
}
