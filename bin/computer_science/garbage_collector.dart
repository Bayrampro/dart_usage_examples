import './reference_type.dart';

void main() {
  // ignore: unused_local_variable
  User? user = User("Sam");
  user =
      null; // Теперь объект "Sam" больше не достижим и будет удалён сборщиком
}
