import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My First App',
    home: HomePage(),
  ));
}

// To create stateless class - Type "stl"
// To create stateful class - Type "stf"
// Hot Restart - Shift + r
// Hot Reload - r

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
