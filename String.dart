void main(){
  // 글자 타입
  // String
  String name = '소녀시대';
  String name2 = '여자친구';

  print(name);
  print(name);

  print(name + name2);
  print(name +' '+ name2);

  print(' $name $name2 ');

  print(' ${name.runtimeType} ${name2} '); // 함수를 사용해야 할때 ('${변수.함수} ${변수}');

  print(' $name.runtimeType $name2 '); // 함수를 사용해야 할때는 중괄호{ }를 써야 한다.



  // 예) var String
  var name3 = '레드벨벳';
  var number = 20;

  print(name3.runtimeType); // runtimeType 어떤 타입인지 알려줌.
  print(number);
}