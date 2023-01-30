// List, Map, Set 기본적 형변환
// List

void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니', '제니'];

  print(blackPink);
  // ['로제', '지수', '리사', '제니', '제니']

  print(blackPink.asMap());
  // {0: 로제, 1: 지수, 2: 리사, 3: 제니, 4: 제니}

  print(blackPink.toSet()); // List 중복되는 값을 제거
  // {로제, 지수, 리사, 제니}

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys);
  // (0, 1, 2, 3, 4)

  print(blackPinkMap.values);
  // (로제, 지수, 리사, 제니, 제니)
  // "()" Iterable<dynamic> 형태는 List-"[]" 와 비슷한 형태이다.
  // 다른형태로 바꾸기 쉽다. 실질적으로 사용하진 않고 리스트 형태로 바꿔준다.

  print(blackPinkMap.keys.toList());
  // [0, 1, 2, 3, 4]

  print(blackPinkMap.values.toList());
  // [로제, 지수, 리사, 제니, 제니]

  Set blackPinkSet = Set.from(blackPink);

  print(blackPinkSet.toList());
  // [로제, 지수, 리사, 제니]
}
