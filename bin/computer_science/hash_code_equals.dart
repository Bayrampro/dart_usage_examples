class Animal {
  final int id;
  final String name;

  Animal({required this.id, required this.name});

  @override
  bool operator ==(Object other) => other is Animal && other.name == name;

  @override
  int get hashCode => name.hashCode;
}

void main() {
  final animal1 = Animal(id: 1, name: "Wolf");
  final animal2 = Animal(id: 2, name: "Wolf");

  print(animal1 == animal2); // true
}

// В этом примере показано, как переопределять методы == и hashCode для сравнения объектов в Dart.
//
// По умолчанию объекты сравниваются по ссылке, то есть animal1 == animal2 вернёт false,
// даже если их поля совпадают. В данном коде оператор == переопределён так,
// что два объекта Animal считаются равными, если совпадают их имена (name).
// Также переопределён метод hashCode, чтобы он соответствовал логике сравнения.
//
// Благодаря этому animal1 == animal2 возвращает true, так как у обоих объектов одинаковое имя.
// Такой подход полезен, если нужно сравнивать объекты по содержимому, а не их ссылки в памяти
