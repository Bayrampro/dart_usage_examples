// В этом примере показано, как использовать Stream и асинхронный генератор в Dart.
//
// Функция getCount возвращает поток чисел от 0 до value-1 с задержкой в 1 секунду между каждым значением.
// В функции main используется await for для асинхронного перебора значений потока и вывода их в консоль.
//
// Такой подход удобен для обработки последовательных асинхронных событий, например, таймеров или данных из сети.
Stream getCount(int value) async* {
  for (var i = 0; i < value; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  await for (var i in getCount(5)) {
    print(i);
  }
}
