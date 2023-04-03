import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
// ignore: unused_import
import 'models/models.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      // 1
home: MultiProvider(
 providers: [
 // 2
 ChangeNotifierProvider(create: (context) => TabManager()),
 ChangeNotifierProvider(create: (context) => GroceryManager()),
 ],
 child: const Home(),
),
    );
  }
}
