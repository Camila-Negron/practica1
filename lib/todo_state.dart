import 'package:equatable/equatable.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class LoadingTodoState extends TodoState {}

class LoadedTodoState extends TodoState {
  final List<String> tasks;
  final List<String> taskDates;

  const LoadedTodoState(this.tasks, this.taskDates);

  @override
  List<Object> get props => [tasks, taskDates];

  @override
  String toString() =>
      'LoadedTodoState { tasks: $tasks, taskDates: $taskDates }';
}

class ErrorTodoState extends TodoState {}
