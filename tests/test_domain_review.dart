import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(79, 49, 16, 58);
  assert(DomainReviewLens.score(item) == 217);
  assert(DomainReviewLens.lane(item) == 'ship');
}
