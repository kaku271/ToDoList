import 'package:todolist/presentation/presentation_service.dart';

// dart bin/main.dart list -c -n 'Lista del Super'

void main(List<String> args) {
  var presentationService = PresentationService();

  presentationService.processCommand(args);
}
