void main(){
  // nullable - null이 될 수 있다. ?
  // non-nullable - null이 될 수 없다.
  // null - 아무런 값도 있지 않다.

  String name = '소녀시대';
  //name = null; // null이 들어갈 수 없는 String 타입인데 null를 넣으려고 했다. non-nullable
  print(name); // Error


  String? name2 = '블랙핑크'; // ? null까지 들어갈 수 있는 타입으로 선언. nullable(널러벌)
  name2 = null;
  print(name2);
}

/*
void main(){
  int ? a = 3;
  int c = a!;

  print('c: ${c}');
}

   nullable type의 변수를 선언하고 이 변수에 절대로 null이 대입되지 않는다고
   100% 확신할 수 있는 경우, null assertion(어서션) 연산자(!)를 사용할 수 있다. */
