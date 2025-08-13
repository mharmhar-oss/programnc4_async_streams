Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print("Starting stream...");

  await for (int value in numberStream()) {
    print("Received: $value");
  }

  print("Stream finished!");
}
