import 'package:todolist/presentation/commands/command.dart';

class UnknownCommand implements Command {
  final String commandName;

  UnknownCommand(this.commandName);

  @override
  void execute() {
    print('The command $commandName is not available');
    print('Enter "help" to see all commands');
  }

  @override
  void printHelp() {}
}