import 'package:flutter_riverpod/flutter_riverpod.dart';

// Counter state provider using StateNotifier
/**
 * 1️⃣ StateNotifier भनेको के हो?
👉 StateNotifier एक Riverpod को क्लास हो जसले state (अवस्था) को परिवर्तन गर्न मद्दत गर्छ।
👉 यहाँ, CounterNotifier नामको **StateNotifier<int>क्लास छ**, जसले एउटाint` (पूर्णांक संख्या) लाई state को रूपमा राख्छ।
 */

class CounterNotifier extends StateNotifier<int> {
  /**
   * CounterNotifier StateNotifier<int>` बाट extend (विस्तार) गरिएको छ।
super(0) → सुरुवातमा counter को मान (state) 0 राखिन्छ।
   */
  CounterNotifier() : super(0);

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}

// Expose CounterNotifier as a provider

/**👉 StateNotifierProvider एउटा Riverpod provider हो जसले CounterNotifier लाई प्रदान (provide) गर्छ। */
final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});
