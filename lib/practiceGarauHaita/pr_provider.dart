import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_pr/practiceGarauHaita/pr_model_item.dart';

class ItemNotifier extends StateNotifier<List<Item>> {
  ItemNotifier() : super([]);

  void addItem(String title, String price, String category) {
    state = [...state, Item(title: title, price: price, category: category)];
  }
}

final itemProvider = StateNotifierProvider<ItemNotifier, List<Item>>((ref) {
  return ItemNotifier();
});
