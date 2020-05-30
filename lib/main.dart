import 'package:flutter/material.dart';
import 'package:layout/pages/tabs.page.dart';
import 'package:layout/themes/dark-yellow.theme.dart';
import 'package:layout/themes/dark.theme.dart';
import 'package:layout/themes/light.theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
