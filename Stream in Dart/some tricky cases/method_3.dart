import 'dart:async';

void main() {
  // Simulating button click events
  StreamController<void> buttonClicks = StreamController<void>.broadcast();

  // Subscribe to button click events
  buttonClicks.stream.listen((_) {
    print('Button clicked!');
  });

  // Simulating button clicks
  buttonClicks.add(null);
  buttonClicks.add(null);
  buttonClicks.add(null);
}
