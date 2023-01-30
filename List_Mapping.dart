// List Mapping 패턴 예제
// 13579 뒤에 jpg 만들기. 1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg
void main() {
  String number = '13579';

  final parsed = number.split('').map((x) => '$x.jpg').toList();

  print(parsed);
  // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
}
