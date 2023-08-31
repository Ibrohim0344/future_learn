void main(List<String> args) {
  fetchUserOrder();
  print("Fetching user order ...");
}

Future<void> fetchUserOrder() => Future.delayed(
      const Duration(seconds: 2),
      () => throw Exception("Logout failed: User's ID is invalid"),
    );
