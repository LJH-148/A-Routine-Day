// reduce와 다르게 리턴값을 아래 예제와 같이 지정할 수 있다.

void main() {
  List<String> words = ['오늘은 ', '토요일 ', '입니다.'];

  final result = words.fold<String>('', (prev, next) {
    return prev + next;
  });

  print(result);
  // 오늘은 토요일 입니다.

  final count = words.fold<int>(0, (prev, next) {
    return prev + next.length;
  });

  print(count);
  // 12

  // 간결해진 코드.
  final result2 = words.fold<String>('', (prev, next) => prev + next);
  print(result2);
  // 오늘은 토요일 입니다.

  final count2 = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count2);
  // 12
}
