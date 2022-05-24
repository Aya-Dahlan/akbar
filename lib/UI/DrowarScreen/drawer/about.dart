import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Drowar.dart';

class About extends StatelessWidget {

  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // const Massages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Text("lمن نحن"),
)

    );
  }
}
