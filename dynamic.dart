void main(){
  // dynamic 타입
  dynamic name = '소녀시대';
  print(name);

  dynamic number = 1;
  print(number);

  var name2 = '여자친구';
  print(name2);

  print(name.runtimeType);
  print(name2.runtimeType);

  name = 2;  // dynamic은 특수한 타입으로
  name = true;  // var와의 큰 차이점은 어떤 형식이라도 항상 입력이 가능.

  // name2 = 5; // Error 발생
  // var의 경우 한번 선언한 경우 다른 타입을 저장할 수 없다.
}

/*  Dart에는 변수 선언시 다양한 자료형을 지원합니다.
    그 중에서 var와 dynamic라는 일반적인 자료형이 아니라
    입력된 정보를 통해 타입을 추론해서 데이터 형식을 저장합니다. */