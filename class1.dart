void main() {
  // positional parameter. 포지셔널 파라미터. 외부에서 입력.
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

  print(blackPink.name); // 변수 출력.
  print(blackPink.members);
  blackPink.sayHello(); // 함수 출력.
  blackPink.introduce();
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
// positional parameter 생성. 외부에서 입력.
  Idol(String name, List<String> members)
      : this.name = name,
        this.members = members;

  void sayHello() {
    print('안녕하세요 블랙핑크입니다.');
  }

  void introduce() {
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다.');
  }
}
