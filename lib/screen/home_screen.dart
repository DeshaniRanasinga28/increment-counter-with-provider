import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(builder: (context, viewModel, child) {
          return Text("Count: ${viewModel.counter}");
        }),
        // child: Text("Count: "),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            Provider.of<CountProvider>(context, listen: false).incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
