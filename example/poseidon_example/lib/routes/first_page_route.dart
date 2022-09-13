import 'package:flutter/material.dart';
import 'package:poseidon/poseidon.dart';

import '../first_page.dart';

class FirstPageRoute extends PoseidonRoute {
  @override
  MaterialPageRoute route(BuildContext context) {
    return MaterialPageRoute(builder: (context) => const FirstPage());
  }
}
