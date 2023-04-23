import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoState([]));

  void addTask(String task) {
    List<String> updatedTasks = List.from(state.tasks)..add(task);
    emit(TodoState(updatedTasks));
  }

  void addTaskDate(String newTaskDate) {
    List<String> updatedTasksDate = List.from(state.tasks)..add(newTaskDate);
    emit(TodoState(updatedTasksDate));
  }
}
