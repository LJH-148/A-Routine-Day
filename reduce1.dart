// reduce 함수 역시 List에 있는 값들을 순회하면서 매개변수에 입력된 함수를 실행합니다.
// 다만 reduce 함수는 순회할 때마다 값을 쌓아가는 특징이 있습니다. 지금까지 배운 함수들은
// 모두 Iterable을 반환했지만 reduce 함수는 List 멤버의 타입과 같은 타입을 반환합니다.

void main() {
  List<int> numbers = [1, 3, 5, 7, 9];
  // 배열을 누적시켜 반환한다.
  // parameter prev의 초기값은 0 이고
  // 다음 prev 부터는 이전 return 값을 받는다.
  final result = numbers.reduce((prev, next) {
    print('-------------------------');
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev + next}');

    return prev + next;
  });
  /*
-------------------------
previous : 1
next : 3
total : 4
-------------------------
previous : 4
next : 5
total : 9
-------------------------
previous : 9
next : 7
total : 16
-------------------------
previous : 16
next : 9
total : 25
 */

  print(result);
  // 25
}
