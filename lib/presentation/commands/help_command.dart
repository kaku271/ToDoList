import 'package:todolist/presentation/commands/command.dart';
import 'package:todolist/presentation/commands/new_list_command.dart';

class HelpCommand implements Command {
  @override
  void printHelp() {
    print('"help"	Shows all available commands.');
		// TODO: Avoid instanciating other commands to do this.
    var newListCommand = NewListCommand(null); //instanciar una clase
    newListCommand.printHelp(); //pedir que haga algo
  }

  @override
  void execute() {
    printHelp();
  }
}
