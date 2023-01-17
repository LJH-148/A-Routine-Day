void main() {
  // if 문
  // if 문은 원하는 조건을 기준으로 다른 코드를 실행하고 싶을 때 사용.
  // if문, else if문, else 문의 순서대로 괄호 안에 작성한 조건이 true 이면
  // 해당 조건의 코드 블록이 실행이 됨.

  int number = 2;

  if (number % 3 == 0) {
    print('3의 배수입니다.');
  } else if (number % 3 == 1) {
    print('나머지가 1입니다.');
  } else {
    print('나머지가 2입니다.');
  }
}
