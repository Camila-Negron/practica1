import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:practica1/todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoState.empty());

  void addTask(String task) {
    final updatedTasks = state.tasks..add(task);
    emit(state.copyWith(tasks: updatedTasks));
  }

  void addTaskDate(String date) {
    final updatedTaskDates = state.taskDates..add(date);
    emit(state.copyWith(taskDates: updatedTaskDates));
  }

  void saveTask(String task, String taskDate) {
    final updatedTasks = state.tasks..add(task);
    final updatedTaskDates = state.taskDates..add(taskDate);
    emit(state.copyWith(tasks: updatedTasks, taskDates: updatedTaskDates));
  }
}
