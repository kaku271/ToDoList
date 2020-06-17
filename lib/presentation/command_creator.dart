import 'package:todolist/presentation/commands/command.dart';
import 'package:todolist/presentation/commands/help_command.dart';
import 'package:todolist/presentation/commands/new_list_command.dart';
import 'package:todolist/presentation/commands/show_all_list_command.dart';
import 'package:todolist/presentation/commands/unknown_command.dart';

// list -c -n 'Lista del Super'
// [list, -c, -n, 'Lista del Super']

// list -n 'Lista del Super' -c
// [list, -n, 'Lista del Super', -c]

class Flag {
  final String shortFlag;
  final String longFlag;
  Flag(this.shortFlag, this.longFlag);
}

class CommandCreator {
  final _createFlag = Flag('-c', '--create');
  final _allFlag = Flag('-a', '--all');
  final _listFlag = Flag('-l', '--list');
  final _deleteFlag = Flag('-d', '--delete');

  Command create(List<String> args) {
    if (args.first == 'list') {
      if (_hasFlag(args, _createFlag)) {
        var name = _getName(args);

        return NewListCommand(name);
      }
      if (_hasFlag(args, _allFlag)) {
        return ShowAllListCommand();
      }
    } else if (args.first == 'item') {
      if (_hasFlag(args, _createFlag)) {
        var listId = _getListId(args);
        var name = _getName(args);
        return NewItemCommand(name, listId);
      }
    }
  }

  bool _hasFlag(List<String> args, Flag flag) {
    for (var arg in args) {
      if (arg == flag.shortFlag || arg == flag.longFlag) return true;
    }

    return false;
  }

  String _getName(List<String> args) {
    for (var i = 0; i < args.length; i++) {
      if (args[i] == '-n' || args[i] == '--name') {
        return args[i + 1];
      }
    }
    return 'Untitle';
  }

  int _getListId(List<String> args) {
    for (var i = 0; i < args.length; i++) {
      if (args[i] == '-l' || args[i] == '--list') {
        return int.parse(args[i + 1]);
      }
    }

    throw 'no list id found';
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
//						ID Lista a la que se tiene que agregar el item
//					-n, --name
//						Nombre del item a crear
//			-a, --all
// 				Muestra todos los intems de una lista
//				-l, --list
//					ID de la lista a la que pertenecen los imtems
//			-d, --delete
//				Elimina un item de una lista
//				-l, --list
//					ID de la lista a la que pertenecen los item
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
