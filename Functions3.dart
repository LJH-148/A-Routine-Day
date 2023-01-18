void main() {
  addNumbers(10); // addNumbers 함수에 y, z에 기본 값을 지정해 넣어서 x 값만 넣어도 된다.

  addNumbers(20, 50, 70); // 만약 y, z 자리에 다른 값을 넣으면 기본값이 무시가 됨.
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// optional parameter(옵셔널 파라미터) - 있어도 되고 없어도 되는 파라미터

addNumbers(int x, [int y = 20, int z = 30]) {
  // [ ] 대괄호 안에 y, z 기본 값을 지정 optional parameter.

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
