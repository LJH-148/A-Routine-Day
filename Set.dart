void main() {
  // Set
  // (Map)이 키와 값의 조합이라면 세트(Set)는 중복 없는 값들의 집합.
  // 중복을 방지하므로 유일한 값들만 존재하는 걸 보장.
  final Set<String> names = {
    '소녀시대',
    'Flutter',
    'Black Pink',
    'Flutter' // 중복
  };

  print(names);

  names.add('Jenny'); // 추가

  print(names);

  names.remove('Jenny'); // 삭제

  print(names);

  print(names.contains('Flutter')); // Set에 값이 포함되어 있는지 확인.
}
