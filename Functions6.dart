// void - 공허
void main() {
  int result = addNumbers(10, y: 20);
  int result2 = addNumbers(10, y: 30, z: 40);

  print('result : $result');
  print('result2 : $result2');
  print('sum : ${result + result2}');
}

// arrow function(에로우 펑션) - 화살표 함수 => x + y + z;

int addNumbers(
  int x, {
  required int y,
  int z = 30,
}) =>
    x + y + z;

// => arrow 를 적으면 바로 뒤에 오는 값이 반환 값이다.
// 함수 바디 부분에 있던 코드랑 같음.
