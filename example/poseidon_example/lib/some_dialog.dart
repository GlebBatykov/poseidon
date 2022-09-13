import 'package:flutter/material.dart';

class SomeDialog extends StatelessWidget {
  const SomeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Some dialog'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text('I\'m dialog.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
