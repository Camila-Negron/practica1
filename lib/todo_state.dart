part of 'todo_cubit.dart';

class TodoState extends Equatable {
  final List<String> tasks;

  const TodoState(this.tasks);

  @override
  List<Object> get props => [tasks];
}

// Definir un cubit para manejar las acciones relacionadas con la lista de tareas
//class TodoListCubit extends Cubit<TodoListState> {
  //TodoListCubit() : super(TodoListState(tasks: []));

 // void addTask(String newTask) {
    //final currentTasks = state.tasks;
    //final updatedTasks = [...currentTasks, newTask];
    //emit(TodoListState(tasks: updatedTasks));
  //}
//}
