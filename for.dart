void main() {
  // for loop
  // for 문은 작업을 여러 번 반복해서 실행할 때 사용.

  // int i = 0; - 값 선언; / i < 10; - 조건 설정; / i++ - loop 마다 실행할 기능.

  for (int i = 0; i < 10; i++) {
    print(i);
  }

  // 1. 기존에 많이 사용하는 for 문.

  int total = 0;

  List<int> numbers = [1, 2, 3, 4, 5, 6];

  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print(total);

  // 2. 다트 언어에서는 For..in 패턴의 for 문도 제공.
  // 다음 코드의 2가지 for 문은 같은 결과를 보여준다.

  total = 0;

  for (int number in numbers) {
    total += number;
  }
  print(total);
}
