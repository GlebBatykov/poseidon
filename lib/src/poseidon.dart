part of poseidon;

class Poseidon {
  static Poseidon? _instance;

  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  static Poseidon get instance {
    _instance ??= Poseidon._();

    return _instance!;
  }

  Poseidon._();

  Future<T?> navigate<T>(PoseidonRoute<T> route) async {
    var materialPageRoute = await route.route(navigationKey.currentContext!);

    return navigationKey.currentState!.push(materialPageRoute);
  }

  void pop() {
    navigationKey.currentState!.pop();
  }

  void showSnackBar(SnackBar snackBar) {
    scaffoldMessengerKey.currentState!.showSnackBar(snackBar);
  }

  void hideCurrentSnackBar(
      {SnackBarClosedReason reason = SnackBarClosedReason.hide}) {
    scaffoldMessengerKey.currentState!.hideCurrentSnackBar(reason: reason);
  }

  void clearSnackBars() {
    scaffoldMessengerKey.currentState!.clearSnackBars();
  }

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  Future<T?> callDialog<T>(
      Widget Function(BuildContext context) builder) async {
    return await showDialog<T>(
        context: scaffoldKey.currentContext!, builder: builder);
  }
}
