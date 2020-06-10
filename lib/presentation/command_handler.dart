import 'package:todolist/presentation/commands/command.dart';

class CommandHandler {
  void execute(Command command) {
    command.execute();
  }
}
