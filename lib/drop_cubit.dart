import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/state_drop.dart';

class TodoFormCubit extends Cubit<TodoFormState> {
  TodoFormCubit(List list)
      : super(TodoFormState(
            dropdownItems: ["trabajo", "escuela", "universidad"],
            selectedDropdownItem: "trabajo"));

  void updateDropdownItems(List<String> items) {
    emit(state.copyWith(dropdownItems: items));
  }

  void updateSelectedDropdownItem(String selectedItem) {
    emit(state.copyWith(selectedDropdownItem: selectedItem));
  }
}
