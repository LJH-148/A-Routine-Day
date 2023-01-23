void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  Idol blackPink2 = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
// const 가 없으면 서로 다른 인스턴스로 인식. false.

  //Idol blackPink = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  //Idol blackPink2 = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
// const 가 있으면 서로 같은 인스턴스로 인식. ture.

  print(blackPink.name); // 변수 출력.
  print(blackPink.members);
  blackPink.sayHello(); // 함수 출력.
  blackPink.introduce();

  print('----------------------------------------------');
  print(blackPink == blackPink2);

// named parameter 네임드 파라미터. 외부에서 입력.
  Idol bts = Idol.fromList([
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
    'BTS'
  ]);

  print(bts.name); // 변수 출력.
  print(bts.members);
  bts.sayHello(); // 함수 출력.
  bts.introduce();
}

// Idol class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수
//
// constructor (생성자)
// immutable 프로그래밍
//
// final / const 키워드는 변수의 값을 처음 선언 후 변경할 수 없다.
// final 은 런타임, 즉 실행을 해봐야 값을 알 수 있다는 뜻.
// const 로 지정한 변수는 빌드타임에 값을 알 수 있어야 한다.
// 코드를 실행하지 않은 상태에서 값이 확정되면 const를, 실행될 대 확정되면 final을 사용.
class Idol {
  final String name;
  final List<String> members;

// constructor - 컨스트럭터 - 생성자
  const Idol(this.name, this.members); // 간결하게 작성된 기본 컨스트럭터.

// named parameter 네임드 파라미터. 컨스트럭터.
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

// sayHello, introduce 함수.
  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
