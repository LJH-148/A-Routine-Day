void main() {
  List<String> words = ['오늘은 ', '수요일 ', '입니다.'];

  final result = words.reduce((prev, next) => prev + next);

  print(result);
  // 오늘은 수요일 입니다.

  // 리듀스가 실행할 수 없는 경우의 수가 있다.
  // 리듀스로 반환되는 타입이 리스트 리턴타입과 같아야 한다.
  final result2 = words.reduce((prev, next) => prev.length + next.length);

  print(result2);
  // error - String 타입으로 받아야하는데 length가 int값.
}
