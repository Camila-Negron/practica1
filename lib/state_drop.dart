class TodoFormState {
  final List<String> dropdownItems;
  final String selectedDropdownItem;

  TodoFormState(
      {required this.dropdownItems, required this.selectedDropdownItem});

  TodoFormState copyWith(
      {List<String>? dropdownItems, String? selectedDropdownItem}) {
    return TodoFormState(
      dropdownItems: dropdownItems ?? this.dropdownItems,
      selectedDropdownItem: selectedDropdownItem ?? this.selectedDropdownItem,
    );
  }
}
