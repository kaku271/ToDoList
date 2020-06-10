import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:todolist/presentation/presentation_service.dart';

void main() {
  var presentationService = PresentationService();
  presentationService.printWellcome();
  var commandsStream = readCommand();
	commandsStream.listen(presentationService.processCommand);
}

Stream<String> readCommand() {
  return stdin.transform(utf8.decoder).transform(const LineSplitter());
}
