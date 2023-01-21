void main() {
  // positional parameter. 포지셔널 파라미터. 외부에서 입력.
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

  print(blackPink.name); // 변수 출력.
  print(blackPink.members);
  blackPink.sayHello(); // 함수 출력.
  blackPink.introduce();

/* positional parameter. 포지셔널 파라미터. 외부에서 입력.
  Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']); */

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

class Idol {
  String name; // = '블랙핑크'; X
  List<String> members; // = ['지수', '제니', '리사', '로제']; X

// constructor - 컨스트럭터 - 생성자
  Idol(this.name, this.members); // 간결하게 작성된 기본 컨스트럭터.

/* positional parameter 포지셔널 파라미터 외부에서 입력.
  Idol(String name, List<String> members)
      : this.name = name,
        this.members = members; */

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
