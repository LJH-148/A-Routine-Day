void main() {
  // switch 문
  // 입력된 상수값에 따라 알맞은 case 블록을 수행합니다.
  // break 키워드를 사용하면 switch 문 밖으로 나갈 수 있습니다.
  // case 끝에 break 키워드를 사용하는 걸 잊지 마세요.

  int number = 3;

  switch (number % 3) {
    case 0:
      print('나머지가 0입니다.');
      break;

    case 1:
      print('나머지가 1입니다.');
      break;

    default: // 기본값. if 문에서 else 와 같음
      print('나머지가 2입니다.');
      break;
  }
}
