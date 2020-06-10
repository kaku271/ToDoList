import 'package:todolist/domain/item.dart';
import 'package:todolist/domain/to_do_list.dart';
import 'package:todolist/domain/usecases.dart';
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
    addItemToList(toDoList, item);

    // Check ✓
    expect(toDoList.length, 1);
    expect(toDoList.getAtIndex(0).content, item.content);
  });
}
