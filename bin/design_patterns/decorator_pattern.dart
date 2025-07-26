void main() {
  final Widget text = Text();
  print(text.render());
  final Widget decoration = BoxDecoration(child: text);
  print(decoration.render());
}

abstract class Widget {
  String render();
}

class Text extends Widget {
  @override
  String render() {
    return "Text";
  }
}

class BoxDecoration extends Widget {
  final Widget child;

  BoxDecoration({required this.child});

  @override
  String render() {
    return "Decorated ${child.render()}";
  }
}
