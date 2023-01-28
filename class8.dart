void main() {
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');
  Employee jenny = Employee('제니');

  seulgi.name = '박사장'; // 값을 각각 변경.
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.building = '롯데타워';
  // static으로 선언한 building 변수를 바로 사용.
  // static으로 선언된 변수는 클래스에 직접 접근하여 한번만 변경해도 모든게 바뀐다.

  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();
  jenny.printNameAndBuilding();

  Employee.printBuilding();
}

// static은 instance에 귀속되지 않고 class에 귀속된다.
class Employee {
  static String? building; // 스태틱으로 선언한 building.
  String name; // 알바생 이름.

  // 컨스트럭스 생성
  Employee(
    this.name,
  );

  void printNameAndBuilding() {
    print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding() {
    print('저는 $building 건물에서 근무중입니다.');
  }
}

// static 변수가 아닌 name은 기존처럼 'seulgi.name = 박사장' 이런식으로 
// 인스턴스별로 바꿔줘야 하지만 static은 위와 다르게, 인스턴스 자체에 귀속되지 않고
// 클래스 통째로 귀속되기 때문에 해당 클래스로 생성된 인스턴스의 모든 값이 변경된다.

// Run
// 제 이름은 박사장입니다. null 건물에서 근무하고 있습니다.
// 제 이름은 초롱입니다. null 건물에서 근무하고 있습니다.
// 제 이름은 박사장입니다. 롯데타워 건물에서 근무하고 있습니다.
// 제 이름은 초롱입니다. 롯데타워 건물에서 근무하고 있습니다.
// 제 이름은 제니입니다. 롯데타워 건물에서 근무하고 있습니다.
// 저는 롯데타워 건물에서 근무중입니다.