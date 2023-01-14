void main() {
  // List
  // 리스트
  List<String> blackPink = ['제니', '지수', '로제', '리사'];
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  print(blackPink);
  print(numbers);

  // index
  // 순서
  // 0 부터시작
  print(blackPink[0]);
  print(blackPink[1]);
  print(blackPink[2]);
  print(blackPink[3]);
  // print(blackPink[4]); 에러 발생.

  print(blackPink.length); // 길이 반환.

  blackPink.add('소녀시대'); // 리스트의 끝에 추가.
  print(blackPink);

  blackPink.remove('소녀시대'); // 리스트의 값을 지울때.
  print(blackPink);

  print(blackPink.indexOf('로제')); // 리스트의 인덱스 값을 찾는 방법.
  print(blackPink.indexOf('태연')); // 해당값이 있으면 인덱스를 반환하고 없으면 -1를 반환.
}
