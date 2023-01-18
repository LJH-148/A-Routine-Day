void main() {
  // 연산자
  // 연산자로는 수치 연산자, null값 입력 관련 연산자, 값 비교 연산자, 타입 비교 연산자,
  // 논리 연산자가 있다.

  // 기본 수치 연산자
  double number = 2;

  print(number + 2); // 4 출력
  print(number - 2); // 0 출력
  print(number * 2); // 4 출력
  print(number / 2); // 1 출력. 나눈 몫
  print(number % 2); // 2 출력. 나눈 나머지

  // 단항 연산자
  number++; // 3
  number--; // 2
  number += 2; // 4
  number -= 2; // 2
  number *= 2; // 4
  number /= 2; // 1

  // null 관련 연산자
  // 타입 뒤에 ?를 명시해서 null값을 가질 수 있다.
  double? number1 = 1;

  // 타입 뒤에 ?를 명시하지 않아 에러가 남.
  //double number2 = null;

  // 자동으로 null값 지정
  double? number3;
  print(number3); // null 출력

  // ??를 사용하면 기존 값이 null일 때만 저장.
  number3 ??= 3;
  print(number3); // 3.0 출력

  // null이 아니므로 3이 유지됨.
  number3 ??= 4;
  print(number3); // 3.0 출력


  // 값 비교 연산자
  // 정수 크기를 비교하는 연산자를 확인해 본다.
  int number4 = 1;
  int number5 = 2;

  print(number4 > number5); // false
  print(number4 < number5); // true
  print(number4 >= number5); // false
  print(number4 <= number5); // true
  print(number4 == number5); // false
  print(number4 != number5); // true


  // 타입 비교 연산자
  // is 키워드를 사용하면 변수의 타입을 비교할 수 있다.
  int number6 = 1;

  print(number6 is int); // true
  print(number6 is String); // false
  print(number6 is! int); //false. !는 반대를 의미한다.(int 타입이 아닌 경우 true)
  print(number6 is! String); // true


  // 논리 연산자
  // and와 or을 의미하는 연산자.
  bool result = 12 > 10 && 1 > 0; // 12가 10보다 크고 1이 0보다 클 때.
  print(result); // true

  bool result2 = 12 > 10 && 0 > 1; // 12가 10보다 크고 0이 1보다 클 때.
  print(result2); // false

  bool result3 = 12 > 10 || 1 > 0; // 12가 10보다 크거나 1이 0보다 클 때.
  print(result3); // true

  bool result4 = 12 > 10 || 0 > 1; // 12가 10보다 크거나 0이 1보다 클 때.
  print(result4); // true

  bool result5 = 12 < 10 && 1 > 0; // 12가 10보다 작거나 0이 1보다 클 때.
  print(result5); // false

  // and - && 는 전부 참일때 true
  // or  - || 은 둘 중 하나만 참이면 true. 둘다 거짓이면 false

}
