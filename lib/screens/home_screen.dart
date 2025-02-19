import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'add_item_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Category Selection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryButton(category: 'Food'),
            CategoryButton(category: 'Travel'),
            CategoryButton(category: 'Entertainment'),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  CategoryButton({required this.category});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddItemScreen(category: category),
          ),
        );
      },
      child: Text(category),
    );
  }
}
/**
 * Widget categoryButton(BuildContext context, String category) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddItemScreen(category: category),
        ),
      );
    },
    child: Text(category),
  );
}
 */
