// Map Mapping 패턴 예제

void main() {
  Map<String, String> harryPotter = {
    'Harry Potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };

// 1. map을 mapping 하여 새로운 map을 만들 때.
// 이해를 돕기위한 예제
// map을 map으로 바꾸는 일은 거의 없다.
  final result = harryPotter.map(
    (key, value) => MapEntry(
      '영어로 $key',
      '한글로 $value',
    ),
  );

  print(result);
  // {영어로 Harry Potter: 한글로 해리 포터, 영어로 Ron Weasley: 한글로 론 위즐리, 영어로 Hermione Granger: 한글로 헤르미온느 그레인저}
  print(harryPotter);
  // {Harry Potter: 해리 포터, Ron Weasley: 론 위즐리, Hermione Granger: 헤르미온느 그레인저}

  // 2. key or value 값들을 리스트로 변경하고 싶을 때.
  // 자주 사용하는 예제
  final keys = harryPotter.keys.map((x) => '영어로 $x').toList();
  final values = harryPotter.values.map((x) => '한글로 $x').toList();

  print(keys);
  // [영어로 Harry Potter, 영어로 Ron Weasley, 영어로 Hermione Granger]
  print(values);
  // [한글로 해리 포터, 한글로 론 위즐리, 한글로 헤르미온느 그레인저]
}
