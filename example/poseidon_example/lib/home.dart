import 'package:flutter/material.dart';
import 'package:poseidon/poseidon.dart';

import 'body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: Poseidon.instance.scaffoldKey, body: const Body());
  }
}
