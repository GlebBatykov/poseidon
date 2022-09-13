import 'package:flutter/material.dart';
import 'package:poseidon/poseidon.dart';

import '../second_page.dart';

class SecondPageRoute extends PoseidonRoute {
  @override
  Future<MaterialPageRoute> route(BuildContext context) async {
    return MaterialPageRoute(builder: (context) => const SecondPage());
  }
}
