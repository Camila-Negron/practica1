import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class TodoState extends Equatable {
  final List<String> tasks;
  final List<String> taskDates;

  TodoState({required this.tasks, required this.taskDates});

  TodoState.empty()
      : tasks = [],
        taskDates = [];

  @override
  List<Object?> get props => [tasks, taskDates];

  TodoState copyWith({List<String>? tasks, List<String>? taskDates}) {
    return TodoState(
        tasks: tasks ?? this.tasks, taskDates: taskDates ?? this.taskDates);
  }
}
