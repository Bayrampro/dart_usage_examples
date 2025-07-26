import 'dart:collection';

void main() {
  // Простой список
  final List<String> simpleList = ["Banana", "Oranage", "Apple"];

  print(simpleList);

  simpleList.insert(1, "Watermelon");

  print(simpleList);

  simpleList.removeAt(2);

  print(simpleList);

  // Связанный список
  final linkedList = LinkedList<Fruit>();

  final banana = Fruit("_Banana");
  final orange = Fruit("_Orange");
  final apple = Fruit("_Apple");

  linkedList.add(banana);
  linkedList.add(orange);
  linkedList.add(apple);

  print("Before adding mongo: $linkedList");

  final mongo = Fruit("_Mongo");
  banana.insertAfter(mongo);

  print("After adding mongo: $linkedList");

  banana.unlink();
  print("After unlink banana: $linkedList");
}

final class Fruit extends LinkedListEntry<Fruit> {
  final String name;

  Fruit(this.name);

  @override
  String toString() => name;
}

// В этом примере показано различие между обычным списком (List) и связанным списком (LinkedList) в Dart.
//
// Обычный список (List<String>):
// - Позволяет легко добавлять, удалять и изменять элементы по индексу.
// - Элементы хранятся последовательно в памяти.
// - Быстро работает с доступом по индексу.
//
// Связанный список (LinkedList<Fruit>):
// - Каждый элемент связан с предыдущим и следующим через ссылки.
// - Для добавления, удаления или перемещения элементов используются специальные методы (insertAfter, unlink).
// - Нет доступа по индексу, обход осуществляется через ссылки.
// - Подходит для сценариев, где часто требуется вставка или удаление элементов в середине списка.
//
// В коде сначала демонстрируется работа с обычным списком: добавление, вставка и удаление элементов.
// Затем создаётся связанный список из объектов Fruit, где показано, как добавить элемент после другого и удалить элемент из списка.
// Это иллюстрирует основные различия в работе с этими структурами данных
