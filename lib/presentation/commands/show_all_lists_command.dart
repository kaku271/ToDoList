import 'package:todolist/presentation/commands/command.dart';

class ShowAllListsCommand implements Command {
  @override
  void execute() {
    // TODO: implement execute
  }

  @override
  void printHelp() {
    print(''' 
		-a, --all
			Muestra todas las listas
		''');
  }
}
