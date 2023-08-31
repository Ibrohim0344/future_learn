void main(List<String> args) {
  fetchUserOrder();
  print("Fetching user order...");
}

Future<void> fetchUserOrder() => Future.delayed(
      const Duration(seconds: 2),
      () => print("Large latte"),
    );
