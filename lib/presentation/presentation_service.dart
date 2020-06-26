import 'package:todolist/presentation/command_creator.dart';

class PresentationService {
  void processCommand(List<String> args) {
    var commmandCreator = CommandCreator();
    var command = commmandCreator.create(args);
    command.execute();
  }
}
