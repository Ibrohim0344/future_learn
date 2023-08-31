Future<void> main(List<String> args) async {
  print("Fetching user order ...");
  print(await createOrderMessage());
}

Future<String> createOrderMessage() async {
  final order = await fetchUserOrder();
  return "Your order is $order";
}

Future<String> fetchUserOrder() => Future.delayed(
      const Duration(seconds: 2),
      () => "Large latte",
    );
