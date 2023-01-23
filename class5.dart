void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

// named parameter 네임드 파라미터. 외부에서 입력.
  Idol bts = Idol.fromList([
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
    'BTS'
  ]);

  // getter
  print(blackPink.firstMember);
  print(bts.firstMember);

  // setter
  blackPink.firstMember = '소녀시대';
  bts.firstMember = '레드벨벳';

  print(blackPink.firstMember);
  print(bts.firstMember);
}

// getter - 데이터를 가져올때
// setter - 데이터를 설정할때

class Idol {
  String name;
  List<String> members;

// constructor - 컨스트럭터 - 생성자
  Idol(this.name, this.members); // 간결하게 작성된 기본 컨스트럭터.

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

  // getter
  String get firstMember {
    return this.members[0];
  }

  // setter
  set firstMember(String name) {
    this.members[0] = name;
  }
}
