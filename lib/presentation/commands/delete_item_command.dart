import 'package:todolist/presentation/commands/command.dart';

class DeleteItemCommand implements Command {
  final String _name;
  final int _listId;
  DeleteItemCommand(this._name, this._listId);

  @override
  void execute() {
    // TODO: implement execute
  }

  @override
  void printHelp() {
    // TODO: implement printHelp
  }
}
