void main() {
  // while loop
  // while 문과 do...while 문은 for 문과 마찬가지로 반복적인 작업을 실행할 때 사용.
  // for 문은 횟수 기반으로 함수를 반복적으로 실행합니다. 예를 들어 특정 리스트 길이나
  // 지정한 숫자 이하의 횟수만 반복하도록 코드를 작성합니다.
  // while 문은 조건을 기반으로 반복문을 실행.
  // 조건이 true 이면 계속 실행하고 false 이면 멈추게 됨.

  int total = 0;

  while (total < 10) {
    // total 값이 10보다 작으면 계속 실행.
    total += 1;
  }

  print(total);

  // do while 은 특수한 형태의 while 문.
  // while 문은 조건을 먼저 확인한 후 true 가 반환되면 반복문을 실행하지만
  // do while 은 반복문을 실행한 후 조건을 확인.

  total = 0;

  do {
    total += 1;
  } while (total < 10);

  print(total);
}
