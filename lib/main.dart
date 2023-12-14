// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:toon/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class Button extends StatelessWidget {
  final String name;

  const Button({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(
          0xFFE7626c,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(
              0xff232B55,
            ),
          ),
        ),
        cardColor: const Color(
          0xfff4eddb,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text(
      'My LargeTitle',
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
