import 'package:todolist/presentation/commands/command.dart';
import 'package:todolist/presentation/commands/delete_item_command.dart';
import 'package:todolist/presentation/commands/help_command.dart';
import 'package:todolist/presentation/commands/new_item_command.dart';
import 'package:todolist/presentation/commands/new_list_command.dart';
import 'package:todolist/presentation/commands/show_all_items_command.dart';
import 'package:todolist/presentation/commands/show_all_lists_command.dart';
import 'package:todolist/presentation/commands/unknown_command.dart';

// list -c -n 'Lista del Super'
// [list, -c, -n, 'Lista del Super']

// list -n 'Lista del Super' -c
// [list, -n, 'Lista del Super', -c]

class Flag {
  final String _short;
  final String _long;

  Flag(this._short, this._long);

  bool compare(String flag) {
    return flag == _short || flag == _long;
  }
}

class CommandCreator {
  final _createFlag = Flag('-c', '--create');
  final _allFlag = Flag('-a', '--all');
  final _listFlag = Flag('-l', '--list');
  final _deleteFlag = Flag('-d', '--delete');
  final _nameFlag = Flag('-n', '--name');

  Command create(List<String> args) {
    if (args.first == 'list') {
      if (_hasFlag(args, _createFlag)) {
        var name = _getName(args);

        return NewListCommand(name);
      }
      if (_hasFlag(args, _allFlag)) {
        return ShowAllListsCommand();
      }
    }
    if (args.first == 'item') {
      if (_hasFlag(args, _createFlag)) {
        var listId = _getListId(args);
        var name = _getName(args);
        return NewItemCommand(name, listId);
      }
      if (_hasFlag(args, _allFlag)) {
        var listId = _getListId(args);
        return ShowAllItemsCommand(listId);
      }
      if (_hasFlag(args, _deleteFlag)) {
        var listId = _getListId(args);
        var name = _getName(args);

        return DeleteItemCommand(name, listId);
      }
    }
    return UnknownCommand(args.first);
  }

  bool _hasFlag(List<String> args, Flag flag) {
    for (var arg in args) {
      if (flag.compare(arg)) return true;
    }

    return false;
  }

  String _getName(List<String> args) {
    for (var i = 0; i < args.length; i++) {
      if (_nameFlag.compare(args[i])) {
        final isLastIndex = i >= args.length - 1;
        if (isLastIndex) throw 'No name found';
        return args[i + 1];
      }
    }
    return 'Untitle';
  }

  int _getListId(List<String> args) {
    for (var i = 0; i < args.length; i++) {
      if (_listFlag.compare(args[i])) return int.parse(args[i + 1]);
    }

    throw 'no list id found';
  }
}

// item --all --list 1

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
