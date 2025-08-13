Future<String> delayedMessage() {
  return Future.delayed(Duration(seconds: 2), () {
    return "The Future is done!";
  });
}

void main() async {
  print("Starting...");
  String message = await delayedMessage();
  print(message);
}
