import 'package:todolist/domain/usecases.dart';
import 'package:todolist/presentation/command_creator.dart';
import 'package:todolist/presentation/command_handler.dart';

class PresentationService {
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
