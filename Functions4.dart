void main() {
  addNumbers(x: 10, y: 20, z: 30);
  // named parameter 형식.

  addNumbers(y: 10, z: 30, x: 40);
  // required(리콰일드) 로 네임을 정의해 놔서 x, y, z 순서를 바꿔도 된다.
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// named parameter(네임드 파라미터) - 이름이 있는 파라미터 (순서가 중요하지 않다.)

addNumbers({
  required int x,
  required int y,
  required int z,
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
}
