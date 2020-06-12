import 'package:todolist/presentation/commands/command.dart';
import 'package:todolist/presentation/commands/help_command.dart';
import 'package:todolist/presentation/commands/new_list_command.dart';
import 'package:todolist/presentation/commands/unknown_command.dart';

// [list, -c, -n, 'Lista del Super']
// [list, -n, 'Lista del Super', -c]

class CommandCreator {
  Command create(List<String> args) {
    if (args.first == 'list') {
      if (hasCreateParam(args)) {
        return NewListCommand();
      }
    }
  }
}

// list
//			-c, --create
// 					Crea una lista
//					-n, --name
//          (opcional) -> Es el nombre de la lista
//			-a, --all
//					Muestra todas las listas
//
// item
//			-c, --create
//				Crea un nuevo item
//					-l, --list
//						Lista a la que se tiene que agregar el item
//			-a, --all
// 				Muestra todos los intems de una lista
//				-l, --list
//					ID de la lista a la que pertenecen los imtems
//			-d, --delete
//				Elimina un item de una lista
//				-l, --list
//					ID de la lista a la que pertenecen los imtem
//				-n, --name
//					Nombre del item a eliminar

/* for (var arg in args) {
	if (arg == '-c') {
		for (var i = 0; i < args.length; i++) {
			if (args[i] == '-n') {
				var name = args[i + 1];
			} 
		}
	} 
}*/
