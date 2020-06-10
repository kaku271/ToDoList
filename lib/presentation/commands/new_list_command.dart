import 'package:todolist/presentation/commands/command.dart';

class NewListCommand implements Command {
  @override
  void printHelp() {
    print('"new list"	Creates a new list');
  }

  @override
  void execute() {
    print('Enter the list name:');
    // TODO: implement execute
		throw 'unimplemented!!';
  }
}