import 'package:todolist/presentation/presentation_service.dart';

void main(List<String> args) {
  if (isDebug()) args = ['list', '-c', '-n', 'Lista del super'];

  var presentationService = PresentationService();

  presentationService.processCommand(args);
}

bool isDebug() {
  var isDebug = false;
  assert(isDebug = true);
  return isDebug;
}
