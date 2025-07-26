void main() {
  OldApi oldApi = OldApi();
  NewApiAdapter newApi = NewApiAdapter(oldApi);

  print(newApi.getFruits());
}

class OldApi {
  List<String> getFruits() {
    return ["Apple", "Banana", "Cherry", "Watermelon"];
  }
}

class NewApiAdapter {
  final OldApi oldApi;

  NewApiAdapter(this.oldApi);

  List<String> getFruits() {
    return oldApi.getFruits() + ["Mango"];
  }
}
