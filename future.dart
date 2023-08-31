Future<String> fetchUserOrder() => Future.delayed(
      const Duration(seconds: 4),
      () => "Large latte",
    );

Future<void> printOrderMessages() async {
  print("Awaiting user order ...");
  final order = await fetchUserOrder();
  print("Your order is $order");
}

Future<void> main(List<String> args) async {
  countSeconds(4);
  await printOrderMessages();
}

void countSeconds(int s) {
  for (var i = 0; i < s; i++) {
    if (i == 0) continue;
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
