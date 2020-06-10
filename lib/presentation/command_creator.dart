import 'package:todolist/presentation/commands/command.dart';
import 'package:todolist/presentation/commands/help_command.dart';
import 'package:todolist/presentation/commands/new_list_command.dart';
import 'package:todolist/presentation/commands/unknown_command.dart';

class CommandCreator {
  Command create(String commandName) {
    if (commandName == 'new list') {
      return NewListCommand();
    } else if (commandName == 'help') {
      return HelpCommand();
    }
    return UnknownCommand(commandName);
  }
}
