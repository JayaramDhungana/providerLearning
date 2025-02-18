import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_pr/counter_provider.dart';

/**✅ ConsumerWidget Riverpod को UI को लागि प्रयोग गरिन्छ।
✅ यसले WidgetRef ref एक्सेस गर्न सक्छ, जसले providers बाट data (state) प्राप्त गर्न मद्दत गर्छ। */
class CounterScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /**✅ counterProvider बाट counter को हालको मान प्राप्त गर्छ।
✅ जब state परिवर्तन हुन्छ, ref.watch(counterProvider) ले UI अपडेट गर्छ। */
    final counter = ref.watch(counterProvider); // Watch counter value

    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      /**👉 जब क्लिक गरिन्छ, ref.read(counterProvider.notifier).decrement()
👉 Counter को मान १ ले घट्छ। */
                      ref.read(counterProvider.notifier).decrement(),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  /**👉 जब क्लिक गरिन्छ, ref.read(counterProvider.notifier).reset()
👉 Counter को मान 0 मा सेट हुन्छ। */
                  onPressed: () => ref.read(counterProvider.notifier).reset(),
                  child: const Icon(Icons.refresh),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () =>
                      ref.read(counterProvider.notifier).increment(),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
