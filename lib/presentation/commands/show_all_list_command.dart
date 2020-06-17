import 'package:todolist/presentation/commands/command.dart';

class ShowAllListCommand implements Command {
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
