
import 'package:flutter_test/flutter_test.dart';
import 'package:test_lesson/counter.dart';
import 'package:test_lesson/main.dart';


int incrementCounter(int currentValue){
  return currentValue + 1;
}


void main() {
  group('Unit Tests for _MyHomePageState', () {
    test('Counter starts at 0', () {
      // Arrange
      final counter = Counter();
      expect(counter.value, 0);
    });
    
    test("Counter increments", (){
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });
  });
}

