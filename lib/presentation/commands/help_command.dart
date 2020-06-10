import 'package:todolist/presentation/commands/command.dart';
import 'package:todolist/presentation/commands/new_list_command.dart';

class HelpCommand implements Command {
  @override
  void printHelp() {
    print('"help"	Shows all available commands.');
    var newListCommand = NewListCommand(); //instanciar una clase
    newListCommand.printHelp(); //pedir que haga algo
  }

  @override
  void execute() {
    printHelp();
  }
}
