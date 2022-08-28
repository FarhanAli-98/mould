extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

extension isValidStringExtension on String? {
  bool isStringNotEmpty() {
    if (this != null) {
      if (this!.trim() != "") {
        return true;
      }
    }
    return false;
  }
}
