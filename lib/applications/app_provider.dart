import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook/Domain/i_todo_repo.dart';
import 'package:riverpod_hook/applications/app_state.dart';
import 'package:riverpod_hook/infrastructure/firebase_todo_repo.dart';

final Todo_Provider = StateNotifierProvider<AppNotifier, Appstate>((ref) {
  return AppNotifier(Firebase_data());
});

class AppNotifier extends StateNotifier<Appstate> {
  final Todo_Repo todo_repo;
  AppNotifier(this.todo_repo) : super(Appstate(todolist: [], loading: false));

  loaddata(){
    
  }
}
