import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:practica1/todo_state.dart';
//part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoState(tasks: [], taskDates: []));

  void saveTask(String task, String taskDate) {
    final currentState = state;
    final List<String> updatedTasks = List.from(currentState.tasks)..add(task);
    final List<String> updatedTaskDates = List.from(currentState.taskDates)
      ..add(taskDate);
    emit(currentState.copyWith(
        tasks: updatedTasks, taskDates: updatedTaskDates));
  }
}
