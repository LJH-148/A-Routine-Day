void main() {
  // json 형태를 클래스로 변환작업하는 이유.
  // 1. map은 구조화가 안 되어있고 자유도가 너무 높아서
  // 구조화를 하기 위해 List map의 데이터 형태를 클래스로 변환하는 작업.
  // 2. json 형태를 클래스로 변환. 즉, 구조화를 하여 신뢰할 수 있는 상태로 만든다.

  // 1. json 형태의 자료
  final List<Map<String, String>> people = [
    {'name': '지수', 'group': '블랙핑크'},
    {'name': '로제', 'group': '블랙핑크'},
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'},
  ];

  print(people);
  // [{name: 지수, group: 블랙핑크}, {name: 로제, group: 블랙핑크}, {name: RM, group: BTS}, {name: 뷔, group: BTS}]

  // 3. json 형태 -> 구조화 클래스 mapping 작업.
  // 이렇게 구조화를 해놓으면 다양하게 사용할 수 있다.
  // Person 파싱.
  final parsedPeople = people.map((x) {
    return Person(
      name: x['name']!,
      group: x['group']!,
    );
  }).toList();

  print(parsedPeople);
  // [Person(name: 지수, group: 블랙핑크), Person(name: 로제, group: 블랙핑크), Person(name: RM, group: BTS), Person(name: 뷔, group: BTS)]

  // 4-1. 유용한 예제
  // "print." 하면 어떤 값들이 있는지
  // suggestion(추천단어)가 떠서 직관적으로 볼 수 있다.
  // 에러를 줄일 수 있다.
  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  // 4-2. 유용한 예제
  // 특정값 출력
  final bts = parsedPeople.where(
    (x) => x.group == 'BTS',
  );
  print(bts);
  // (Person(name: RM, group: BTS), Person(name: 뷔, group: BTS))

  // 4-2를 아래와 같이 표현 가능.
  // 이렇게 이어붙이기 가능(계속 가능).
  final result = people
      .map(
        (x) => Person(
          name: x['name']!,
          group: x['group']!,
        ),
      )
      .where((x) => x.group == 'BTS');
  print(result);
  // (Person(name: RM, group: BTS), Person(name: 뷔, group: BTS))
}

// 2. 구조화 클래스 제작
class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  // toString - 부모클래스 Object에 제공되는 기본함수.
  @override
  String toString() {
    return 'Person(name: $name, group: $group)';
  }
}

/*
Functional Programming 의 기본은

1. 실행하는 그 대상(List, Set, Map 등등)과 다른 새로운 값을 생성해준다.
2. Method Chaining 을 할 수 있으며 코드가 간결해진다.

주의: 너무 길어지면 유지보수에 힘들 수 있으니 코멘트를 달아 준다거나 잘라서 사용한다.

OOP와 Functional Programming 둘 중 뭐가 좋다가 아닌 두개의 장단점을 활용하여 사용하자.
 */