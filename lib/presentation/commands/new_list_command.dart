import 'package:todolist/domain/usecases.dart';
import 'package:todolist/presentation/commands/command.dart';

class NewListCommand implements Command {
  final String name;

  NewListCommand(this.name);

  @override
  void printHelp() {
    print('"new list"	Creates a new list');
  }

  @override
  void execute() {
    var toDoList = createToDoList(name);
    print('new list name: ${toDoList.name}');
  }
}
