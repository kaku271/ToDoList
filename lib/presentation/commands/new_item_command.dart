import 'package:todolist/presentation/commands/command.dart';

class NewItemCommand implements Command {
  final String _name;
  final int _itemId;

  NewItemCommand(this._name, this._itemId);
  @override
  void execute() {
    // TODO: implement execute
  }

  @override
  void printHelp() {
    // TODO: implement printHelp
  }
}
