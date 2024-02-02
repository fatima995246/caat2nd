import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../my_theme.dart';

class ToDoTab extends StatelessWidget {
  static const String routeName = "ToDoTab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyTheme.greyColor);
  }
}
