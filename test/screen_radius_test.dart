import 'package:flutter_test/flutter_test.dart';
import 'package:screen_corner_radius/screen_corner_radius.dart';

void main() {
  group('ScreenRadius', () {
    test('value() sets all corners to the same radius', () {
      final radius = ScreenRadius.value(8);
      expect(radius.topLeft, 8);
      expect(radius.topRight, 8);
      expect(radius.bottomLeft, 8);
      expect(radius.bottomRight, 8);
    });

    test('copyWith() replaces only the given corners', () {
      final copy = ScreenRadius.value(8).copyWith(topLeft: 16, bottomRight: 12);
      expect(
        copy,
        const ScreenRadius(
          topLeft: 16,
          topRight: 8,
          bottomLeft: 8,
          bottomRight: 12,
        ),
      );
    });

    test('copyWith() without arguments keeps all corners', () {
      final radius = ScreenRadius.value(3);
      expect(radius.copyWith(), radius);
    });

    test('equal radii are equal and have the same hashCode', () {
      final a = ScreenRadius.value(4);
      final b = ScreenRadius.value(4);
      expect(a, b);
      expect(a.hashCode, b.hashCode);
      expect(a == ScreenRadius.value(5), isFalse);
      expect(a == a, isTrue);
    });
  });
}
