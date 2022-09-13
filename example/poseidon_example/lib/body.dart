import 'package:flutter/material.dart';
import 'package:poseidon/poseidon.dart';

import 'routes/first_page_route.dart';
import 'routes/second_page_route.dart';
import 'some_dialog.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  void _firstPageButtonOnPressed() {
    Poseidon.instance.navigate(FirstPageRoute());
  }

  void _secondPageButtonOnPressed() {
    Poseidon.instance.navigate(SecondPageRoute());
  }

  void _dialogButtonOnPressed() {
    Poseidon.instance.callDialog((context) => const SomeDialog());
  }

  void _snackBarButtonOnPressed() {
    Poseidon.instance.showSnackBar(SnackBar(
        content: const Text('Hello!'),
        action: SnackBarAction(
            label: 'Hide', onPressed: _snackBarHideButtonOnPressed)));
  }

  void _snackBarHideButtonOnPressed() {
    Poseidon.instance.hideCurrentSnackBar();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: _firstPageButtonOnPressed,
              child: const Text('Go to first page')),
          ElevatedButton(
              onPressed: _secondPageButtonOnPressed,
              child: const Text('Go to second page')),
          ElevatedButton(
              onPressed: _dialogButtonOnPressed,
              child: const Text('Call dialog')),
          ElevatedButton(
              onPressed: _snackBarButtonOnPressed,
              child: const Text('Show snack bar'))
        ],
      ),
    );
  }
}
