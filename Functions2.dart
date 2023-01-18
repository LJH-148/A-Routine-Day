void main() {
  addNumbers(10, 20, 30);
  // x, y, z 파라미터 매개변수를 외부 함수에서 실행. positional parameter.(순서가 중요한 파라미터)
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter(파라미터) / argument(아규먼트) - 매개변수
// positional parameter(포지셔널 파라미터) - 순서가 중요한 파라미터

addNumbers(int x, int y, int z) {
  // parameter / argument 매개변수 선언. 외부에서 함수를 실행 할 때.

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
