void main() {
  Lecture<String, String> lecture1 = Lecture('123', 'lecture1');

  lecture1.printIdType();

  Lecture<int, String> lecture2 = Lecture(123, 'lecture2');

  lecture2.printIdType();
}

// generic - 타입을 외부에서 받을때 사용.
// 제네릭은 클래스나 함수의 정의를 선언할 때가 아니라
// 인스턴스화하거나 실행할 때로 미룹니다.
// 특정 변수의 타입을 하나의 타입으로 제한하고 싶지 않을 때 자주 사용.
class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}

// 흔히 사용되는 제네릭 문자들
// T = 변수 타입을 표현할 때 흔히 사용. 예) T value;
// E = 리스트 내부 요소들의 타입을  표현할 때 흔히 사용. 예) List<E>
// K = 키를 표현할 때 흔히 사용. 예) Map<K, V>
// V = 값을 표현할 때 흔히 사용. 예) Map<K, V>

// Run
// String
// int
