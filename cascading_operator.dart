// cascading operator
// 여러개의 리스트를 합칠때 많이 사용한다.

void main() {
  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];

  // cascading operator 캐스케이드 연산자.
  // ...

  print([even, odd]);
  // [[2, 4, 6, 8], [1, 3, 5, 7]]

  print([...even, ...odd]);
  // [2, 4, 6, 8, 1, 3, 5, 7]

  print(even == [...even]);
  // false
}
