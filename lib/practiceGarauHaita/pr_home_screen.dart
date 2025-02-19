import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrHomeScreen extends StatelessWidget {
  const PrHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget itemKoButton(String category) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: Text(category)),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Items Selection"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              itemKoButton('Food'),
              itemKoButton('Entertainment'),
              itemKoButton('Visit'),
            ],
          ),
        ),
      ),
    );
  }
}
