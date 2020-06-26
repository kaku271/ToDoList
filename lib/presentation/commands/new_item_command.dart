import 'package:todolist/presentation/commands/command.dart';

class NewItemCommand implements Command {
  final String name;
  final int itemId;

  NewItemCommand(this.name, this.itemId);
  @override
  void execute() {
    // TODO: implement execute
  }

  @override
  void printHelp() {
    // TODO: implement printHelp
  }
}
