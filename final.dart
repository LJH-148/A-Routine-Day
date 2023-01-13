void main(){

  final String name = '소녀시대';
  print(name);
  //name = '블랙핑크'; Error 발생.  final로 선언한 변수는 선언 후 값을 변경할 수 없음.
  // final name = '소녀시대'; int, String 변수를 선언해 주지 않아도 됨.

  const String name2 = '블랙핑크';
  print(name2);
  //name2 = '여자친구'; Error 발생. const로 선언한 변수는 선언 후 값을 변경할 수 없음.
  // const name2 = '블랙핑크'; int, String 변수를 선언해 주지 않아도 됨.


  final DateTime now = DateTime.now();
  print(now);
  // final 키워드를 사용했으니 now값이 한 번 저장되면 추후 변경할 수 없다.
  // DateTime.now() 함수는 실행되는 순간의 날짜 및 시간을 제공해준다. 다시 말해서
  // 런타임, 즉 실행을 해봐야 알 수 있다는 뜻.

  const DateTime now = DateTime.now();
  print(now);
  // const를 사용하면 에러가 난다. const로 지정한 변수는 빌드타임에 값을 알 수 있어야 하는데
  // DateTime.now() 함수는 런타임에 반환되는 값을 알 수 있기 때문.

  // 코드를 실행하지 않은 상태에서 값이 확정되면 const를, 실행될 때 확정되면 final을 사용.

}