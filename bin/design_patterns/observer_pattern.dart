void main() {
  final news = News();
  final user1 = User();
  final user2 = User();

  news.subscribe(user1);
  news.subscribe(user2);

  news.addNews("Breaking news!");
  news.addNews("Weather update!");
  news.addNews("Sports highlights!");
  news.addNews("Tech news!");
}

abstract class Observer {
  void update(String message);
}

class User extends Observer {
  @override
  void update(String message) {
    print("User received message: $message");
  }
}

class News {
  final List<Observer> _observers = [];

  void subscribe(Observer observer) {
    _observers.add(observer);
  }

  void unsubscribe(Observer observer) {
    _observers.remove(observer);
  }

  void addNews(String message) {
    print("Breaking news: $message");
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}
