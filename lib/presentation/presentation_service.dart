import 'package:todolist/domain/usecases.dart';
import 'package:todolist/presentation/command_creator.dart';
import 'package:todolist/presentation/command_handler.dart';

class PresentationService {
  void printWellcome() {
    print('Wellcome, this is TO DO LIST');
    print('Write a command to start.');
    print('Use "help" command to show all commands.');
  }

  void processCommand(String commandName) {
    var commandHandler = CommandHandler();
    var commmandCreator = CommandCreator();
    var command = commmandCreator.create(commandName);
    commandHandler.execute(command);
  }

  void processNewListCommand(String name) {
    var newList = createToDoList(name);
    print('testing');
    print(newList.name);
  }
}
