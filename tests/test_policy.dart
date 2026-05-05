import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(86, 99, 25, 11, 7);
  assert(Policy.score(signalcase_1) == 161);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(64, 80, 25, 20, 8);
  assert(Policy.score(signalcase_2) == 41);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(84, 82, 15, 10, 10);
  assert(Policy.score(signalcase_3) == 195);
  assert(Policy.classify(signalcase_3) == 'accept');
}
