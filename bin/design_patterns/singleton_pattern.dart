void main() {
  final logger1 = Logger();
  final logger2 = Logger();

  logger1.doSomething();
  logger2.doSomething();

  print("Is the instances is same? Answer: ${logger1 == logger2}");
}

class Logger {
  static final Logger _instance = Logger._internal();
  factory Logger() => _instance;
  Logger._internal();

  void doSomething() {
    print("It is a singleton!");
  }
}
