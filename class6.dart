void main() {
  print('------------- Idol ----------------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);

  apink.sayName();
  apink.sayMembersCount();

  print('------------- Boy Group ----------------');
  BoyGroup bts = BoyGroup('BTS', 7);

  bts.sayMembersCount(); // 부모한테 물려받은 메서드.
  bts.sayName(); // 부모한테 물려받은 메서드.
  bts.sayMale(); // 자식이 새로 추가한 메서드.

  print('------------- Girl Group ----------------');
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);

  redVelvet.sayMembersCount();
  redVelvet.sayName();
  redVelvet.sayFemale();

  print('------------- Type Comperison 1 ----------------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print('------------- Type Comperison 2 ----------------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print('------------- Type Comperison 3 ----------------');
  print(redVelvet is Idol);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

// 상속 - inheritance
//
// 상속을 받으면 부모 클래스의 모든 속성을
// 자식 클래스가 부여받는다.

class Idol {
  // 이름
  String name;

  // 멤버 숫자
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount, // 네임드 컨스트럭스.
  });

  void sayName() {
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

// extends 키워드를 사용해 상속받습니다.
// class 자식 클래스 extends 부모 클래스 순서.

class BoyGroup extends Idol {
  BoyGroup(
    String name,
    int membersCount, // 상속받은 생성자.  (포지셔널 컨스트럭스).
  ) : super(
          // super는 부모 클래스를 지칭합니다.
          name: name,
          membersCount: membersCount,
        );
// 상속받지 않은 기능.
  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(
    String name,
    int membersCount,
  ) : super(
          name: name,
          membersCount: membersCount,
        );

  void sayFemale() {
    print('저는 여자 아이돌입니다.');
  }
}

// Run
/*
------------- Idol ----------------
저는 에이핑크입니다.
에이핑크은 5명의 멤버가 있습니다.
------------- Boy Group ----------------
BTS은 7명의 멤버가 있습니다.
저는 BTS입니다.
저는 남자 아이돌입니다.
------------- Girl Group ----------------
Red Velvet은 5명의 멤버가 있습니다.
저는 Red Velvet입니다.
저는 여자 아이돌입니다.
------------- Type Comperison 1 ----------------
true
false
false
------------- Type Comperison 2 ----------------
true
true
false
------------- Type Comperison 3 ----------------
true
false
true 
*/
