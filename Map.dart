void main() {
  // Map
  // Key / Value
  Map<String, String> dictionary = {
    'Harry Potter': '헤리포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };
  print(dictionary);

  Map<String, bool> isHarryPotter = {
    'Harry Potter': true,
    'Ron Weasley': true,
    'Ironman': false,
  };
  print(isHarryPotter);

  isHarryPotter.addAll({
    'Spiderman': false,
  }); // map에 값 추가.

  print(isHarryPotter);
  print(isHarryPotter['Ironman']); // Key의 value값을 출력 false.

  isHarryPotter['Hulk'] = false;
  print(isHarryPotter); // 임의 적으로 새로운 key 값을 추가.

  isHarryPotter['Spiderman'] = true;
  print(isHarryPotter); // value 값을 바꿀 때.

  isHarryPotter.remove('Harry Potter'); // key와 value 값을 지울 때.
  print(isHarryPotter);

  print(isHarryPotter.keys); // key 값을 모두 출력.
  print(isHarryPotter.values); // value 값을 모두 출력.
}
