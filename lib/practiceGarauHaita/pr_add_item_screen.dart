import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrAddItemScreen extends ConsumerWidget {
  final String category;

  PrAddItemScreen({required this.category});

  final TextEditingController title = TextEditingController();
  final TextEditingController price = TextEditingController();


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold();
  }
}
