// List, Map, Set 기본적 형변환
// Map

void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  // List의 map method
  // 함수에다 함수를 넣어준다.
  // blackPink의 리스트들이 x parameter에 들어간다.
  final newBlackPink = blackPink.map((x) {
    return '블랙핑크 $x';
  });

  print(blackPink);
  // [로제, 지수, 리사, 제니]
  print(newBlackPink.toList());
  // [블랙핑크 로제, 블랙핑크 지수, 블랙핑크 리사, 블랙핑크 제니]
  //
  //
  //
  //아래와 같이 Arrow함수로 간단하게 표현 가능.
  final newBlackPink2 = blackPink.map((x) => '블랙핑크 $x');

  print(newBlackPink2.toList());
  // [블랙핑크 로제, 블랙핑크 지수, 블랙핑크 리사, 블랙핑크 제니]

  print(blackPink == blackPink); // true
  print(newBlackPink == blackPink); // false
  print(newBlackPink == newBlackPink2); // false
}
