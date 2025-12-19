class CustomeExceptions implements Exception {
  final String message;

  CustomeExceptions({required this.message});

  @override
  String toString() {
    return message;
  }
}
