import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:practica1/todo_cubit.dart';

//part of 'todo_cubit.dart';

//@immutable
class TodoState extends Equatable {
  final List<String> tasks;
  final List<String> taskDates;
  const TodoState({required this.tasks, required this.taskDates});

  @override
  List<Object?> get props => [tasks, taskDates];

  TodoState copyWith({List<String>? tasks, List<String>? taskDates}) {
    return TodoState(
      tasks: tasks ?? this.tasks,
      taskDates: taskDates ?? this.taskDates,
    );
  }
}
