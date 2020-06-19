import 'package:todolist/domain/usecases.dart';
import 'package:todolist/presentation/command_creator.dart';
import 'package:todolist/presentation/command_handler.dart';

class PresentationService {
  void processCommand(List<String> args) {
    var commandHandler = CommandHandler();
    var commmandCreator = CommandCreator();
    var command = commmandCreator.create(args);
    commandHandler.execute(command);
  }

  void processNewListCommand(String name) {
    var newList = createToDoList(name);
    print('testing');
    print(newList.name);
  }
}
