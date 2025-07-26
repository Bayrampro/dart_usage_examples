void main() {
  final andoroid = ButtonFactory.create("android");
  final ios = ButtonFactory.create("ios");

  andoroid.render();
  ios.render();
}

abstract class Button {
  void render();
}

class AndroidButton extends Button {
  @override
  void render() {
    print("This is android button");
  }
}

class IOSButton extends Button {
  @override
  void render() {
    print("This is ios button");
  }
}

class ButtonFactory {
  static Button create(String platform) {
    if (platform == "ios") {
      return IOSButton();
    } else {
      return AndroidButton();
    }
  }
}
