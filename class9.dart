void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');

  bts.sayName();
  redVelvet.sayName();

  print('------------- Type Comperison 1 ----------------');
  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print(redVelvet is IdolInterface);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

// interface
// interface인터페이스는 공통으로 필요한 기능을 정의만 해두는 역할.
// abstract 는 상속이나 인터페이스로 사용하는 데 필요한 속성만 정의하고
// 인스턴스화할 수 없도록 하는 기능. 메세지.
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName();
}

// implements를 사용하는 경우는 클래스의 모든 변수와 함수 등을 상속받는 것이 아니라
// 단지 타입을 상속 받기 위한 것.
// abstract 추상 클래스를 구현하는 implements 클래스.
// 컨스트럭스를 비롯한 모든 메서드를 정의해줘야 한다.
// 하나라도 정의하지 않으면 에러가 난다.
class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}

// Run
// 제 이름은 BTS입니다.
// 제 이름은 레드벨벳입니다.
// ------------- Type Comperison 1 ----------------
// true
// true
// false
// true
// false
// true
