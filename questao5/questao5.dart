void main() {
  void inversorString(String input) {
    print("String inserida \n $input");
    String inversedInput = '';
    for (int i = input.length - 1; i >= 0; i--) {
      inversedInput += input[i];
    }
    print("String invertida \n $inversedInput");
  }

  String input = "Eu vou passar no processo seletivo";
  inversorString(input);
}
