// В этом примере показаны различные способы работы с Future и асинхронным кодом в Dart.
//
// - Future.any: выполняет несколько задач параллельно и завершает работу, когда завершится любая из них.
// - Future.microtask: планирует задачу для выполнения с высоким приоритетом в ближайшем цикле событий.
// - Future.doWhile: выполняет асинхронный цикл, пока функция-условие возвращает true.
// - Future.forEach: последовательно выполняет асинхронные операции для каждого элемента списка.
//
// Пример иллюстрирует, как можно управлять асинхронными задачами, задержками и порядком выполнения кода.
Future<void> main() async {
  await Future.any([makeCoffe(), makeCupcakes()]);

  var value = 0;

  await Future.microtask(() async {
    await Future.delayed(Duration(seconds: 1));
    print("END!");
  });

  await Future.doWhile(() async {
    await Future.delayed(Duration(seconds: 1));
    value++;
    if (value == 3) {
      return false;
    } else {
      print("Кукиш тебе!");
      return true;
    }
  });

  final list = [1, 2, 3, 4];
  Future.forEach(list, (int value) async {
    await Future.delayed(Duration(seconds: 1));
    print(value);
  });
}

Future<void> makeCoffe() async {
  print("Кофе готовится...");
  await Future.delayed(Duration(seconds: 1));
  print("Кофе готово!");
}

Future<void> makeCupcakes() async {
  print("Кекс готовится...");
  await Future.delayed(Duration(seconds: 3));
  print("Кекс готово!");
}
