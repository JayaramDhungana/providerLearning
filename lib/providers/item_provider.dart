import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/item_model.dart';

class ItemNotifier extends StateNotifier<List<Item>> {
  ItemNotifier() : super([]);

  void addItem(String title, String description, String category) {
    state = [
      ...state,
      Item(title: title, description: description, category: category)
    ];
  }

  List<Item> getItemsByCategory(String category) {
    return state.where((item) => item.category == category).toList();
  }
}

// Global Provider
final itemProvider = StateNotifierProvider<ItemNotifier, List<Item>>((ref) {
  return ItemNotifier();
});
