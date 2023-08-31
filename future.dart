Future<String> fetchUserOrder() {
  final str = Future.delayed(
    const Duration(seconds: 4),
    () => throw "Cannot locate user order",
  );
  return str;
}

Future<void> printOrderMessage() async {
  try {
    print("Awaiting user order ...");
    final order = await fetchUserOrder();
    print(order);
  } catch (e) {
    print("Caught error: $e");
  }
}

void main() async {
  await printOrderMessage();
}
