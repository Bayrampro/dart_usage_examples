// В этом примере показано, как работает Event Loop и очереди задач в Dart.
//
// - Future: добавляет задачу в Event Queue, которая выполняется после завершения текущего цикла.
// - scheduleMicrotask: добавляет задачу в Microtask Queue, которая выполняется с более высоким приоритетом, сразу после текущего кода.
// Порядок вывода: сначала синхронный код, затем microtask, затем event.
//
// Это помогает понять, как Dart управляет асинхронными задачами и их очередями.

import 'dart:async';

void main() {
  print("1");

  Future(() => print("2")); // попадает в Event Queue

  scheduleMicrotask(() => print("3")); // попадает в Microtask Queue

  print("4");
}
