import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expenses'),
        ),
        body: const Column(
          children: [
            Text('Expenses'),
            Text('Expenses'),
            Text('Expenses'),
          ],
        ));
  }
}
