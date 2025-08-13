Future<String> simulateError() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception("Something went wrong in the Future!");
  });
}

void main() async {
  print("Starting error simulation...");

  try {
    String result = await simulateError();
    print(result);
  } catch (e) {
    print("Caught an error: $e");
  }
}
