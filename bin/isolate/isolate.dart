import 'dart:isolate';

Future<void> main() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(doWork, receivePort.sendPort);

  receivePort.listen((message) {
    print("Message from isolate: $message");
  });
}

void doWork(SendPort sendPort) {
  int result = 0;
  for (var i = 0; i < 100000000; i++) {
    result += i;
  }
  sendPort.send("Result is $result");
}
