// fold 함수는 reduce 함수와 실행되는 논리는 똑같습니다.
// reduce 함수는 함수가 실행되는 리스트 요소들의 타입이 같아야 하지만,
// fold 함수는 어떠한 타입이든 반환할 수 있습니다.

// reduce 의 단점(무조건 같은 타입을 리턴해줘야하는)을 보안한 메서드
// 기능적으로 fold 함수로 reduce 함수를 만들수도 있다.
// 즉, 아무형태나 리턴가능한게 장점이다.

void main() {
  // 기능적으로, fold 함수로 reduce 함수 만들기
  List<int> numbers = [1, 3, 5, 7, 9];

  // fold의 리턴값을 정해줘야 한다. 제너릭으로 리턴값 제공.
  // 첫번째 parameter는 시작값. 즉, prev에 들어간다.
  final sum = numbers.fold<int>(0, (prev, next) {
    print('------------------');
    print('prev : $prev');
    print('next : $next');
    print('total : ${prev + next}');

    return prev + next;
  });

  print(sum);
}

/*
------------------
prev : 0
next : 1
total : 1
------------------
prev : 1
next : 3
total : 4
------------------
prev : 4
next : 5
total : 9
------------------
prev : 9
next : 7
total : 16
------------------
prev : 16
next : 9
total : 25
 */

// 25