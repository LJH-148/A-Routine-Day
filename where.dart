// where
// where 함수는 List에 있는 값들을 순서대로 순회Looping하면서 특정 조건에 맞는 값만
// 필터링 하는 데 사용.
// 매개변수에 함수를 입력해야 하며, 입력된 함수는 기존 값을 하나씩 매개변수로 입력받습니다.
// 각 값별로 true를 반환하면 값을 유지하고, false를 반환하면 값을 버립니다.
// 순회가 끝나면 유지된 값들을 기반으로 이터러블이 반환됩니다.

void main() {
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    },
  ];

  print(people);
  // [{name: 로제, group: 블랙핑크}, {name: 지수, group: 블랙핑크}, {name: RM, group: BTS}, {name: 뷔, group: BTS}]

  final blackPink = people.where((x) => x['group'] == '블랙핑크').toList();
  final bts = people.where((x) => x['group'] == 'BTS').toList();

  print(blackPink);
  // [{name: 로제, group: 블랙핑크}, {name: 지수, group: 블랙핑크}]
  print(bts);
  // [{name: RM, group: BTS}, {name: 뷔, group: BTS}]
}
