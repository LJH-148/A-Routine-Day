// void - 공허
void main() {
  int result = addNumbers(10, y: 20);

  int result2 = addNumbers(10, y: 30, z: 40);

  print('result : $result');
  print('result2 : $result2');

  print('sum : ${result + result2}');
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수

/*  positional parameter(포지셔널 파라미터)
    named parameter(네임드 파라미터)
    optional parameter(옵셔널 파라미터)을 동시에 사용된 함수. */

int addNumbers(
  int x, {
  required int y,
  int z = 30,
}) {
  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
  return sum;
}
