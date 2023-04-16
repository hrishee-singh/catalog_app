import 'package:flutter/material.dart';
import 'package:s/widgets/drawer.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Codepur";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: const Center(
        child: Text("Welcome to $days days of Flutter by $name "),
      ),
      drawer: MyDrawer(),
    );
  }
}
