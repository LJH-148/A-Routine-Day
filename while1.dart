void main() {
  // while loop
  // if..break, for if..break 문 사용 예.

  // if.. break
  int total = 0;

  while (total < 10) {
    total += 1;

    if (total == 5) {
      // total 값이 5면은 break 로 while loop 문을 빠져 나옴.
      break;
    }
  }
  print(total);

  // for if..break
  total = 0;

  for (int i = 0; i < 10; i++) {
    total += 1;
    if (total == 5) {
      // total 값이 5면은 break 로 while loop 문을 빠져 나옴.
      break;
    }
  }
  print(total);
}
