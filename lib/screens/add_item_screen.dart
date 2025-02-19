import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/item_provider.dart';
import '../models/item_model.dart';

class AddItemScreen extends ConsumerWidget {
  final String category;
  AddItemScreen({required this.category});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemProvider);
    final categoryItems = items.where((item) => item.category == category).toList();

    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: titleController, decoration: InputDecoration(labelText: "Title")),
            TextField(controller: descriptionController, decoration: InputDecoration(labelText: "Description")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(itemProvider.notifier).addItem(
                      titleController.text,
                      descriptionController.text,
                      category,
                    );
                titleController.clear();
                descriptionController.clear();
              },
              child: Text("Create"),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: categoryItems.length,
                itemBuilder: (context, index) {
                  final item = categoryItems[index];
                  return ListTile(
                    title: Text(item.title),
                    subtitle: Text(item.description),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
