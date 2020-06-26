import 'package:test/test.dart';
import 'package:todolist/presentation/command_creator.dart';
import 'package:todolist/presentation/commands/help_command.dart';
import 'package:todolist/presentation/commands/new_item_command.dart';
import 'package:todolist/presentation/commands/new_list_command.dart';
import 'package:todolist/presentation/commands/show_all_items_command.dart';
import 'package:todolist/presentation/commands/show_all_lists_command.dart';

void main() {
  group('commands creations', () {
    test('help command creation', () {
      var commandCreator = CommandCreator();
      var commnad = commandCreator.create(
        ['help'],
      );
      expect(commnad is HelpCommand, true);
    });
    group('list commands creations', () {
      test('new list command creation', () {
        var commandCreator = CommandCreator();
        var command = commandCreator.create(
          ['list', '-c', '-n', 'lista del super'],
        );
        expect(command is NewListCommand, true);
        expect((command as NewListCommand).name, 'lista del super');
      });
      test('show all list command creation', () {
        var commandCreator = CommandCreator();
        var command = commandCreator.create(
          ['list', '-a'],
        );
        expect(command is ShowAllListsCommand, true);
      });
    });
    group('items commands creations', () {
      test('new item command creation', () {
        var commandCreator = CommandCreator();
        var command = commandCreator.create(
          ['item', '-c', '-l', '3', '-n', 'panchita'],
        );
        expect(command is NewItemCommand, true);
        expect((command as NewItemCommand).name, 'panchita');
        expect((command as NewItemCommand).itemId, 3);
      });
    });
  }); //TODO: Do all test!!
}
