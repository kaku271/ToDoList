import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:todolist/usecases.dart';

void main() {
  print('Wellcome, this is TO DO LIST');
  print('Write a command to start.');
  print('Use "help" command to show all commands.');
  readCommand().listen(processCommand);
}

Stream<String> readCommand() {
  return stdin.transform(utf8.decoder).transform(const LineSplitter());
}

void processCommand(String command) {
  var commandHandler = CommandHandler();
  commandHandler.execute(command);
}

void processNewListCommand(String name) {
  var newList = createToDoList(name);
  print('testing');
  print(newList.name);
}

class CommandHandler {
  void execute(Command command) {
    command.execute();
  }
}

abstract class Command {
  void printHelp();
  void execute();
}

class HelpCommand implements Command {
  @override
  void printHelp() {
    print('help	Shows all available commands.');
    var newListCommand = NewListCommand(); //instanciar una clase
    newListCommand.printHelp(); //pedir que haga algo
  }

  @override
  void execute() {
    printHelp();
  }
}

class NewListCommand implements Command {
  @override
  void printHelp() {
    print('new list	Creates a new list');
  }

  @override
  void execute() {
    print('Enter the list name:');
    readCommand().listen(processNewListCommand);
  }
}

//Crear una clase nueva que se llame comand creator e implementar el metdo create.
