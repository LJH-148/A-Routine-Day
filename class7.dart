void main() {
  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
}

// method - function (class 내부에 있는 함수)
// override - 덮어쓰다 (우선시하다)

// 부모 클래스
class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  // method
  int calculate() {
    return number * 2;
  }
}

// 자식 클래스
class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);

  @override
  int calculate() {
    return super.calculate() * 2;
  }
}
// 부모 클래스에 이미 존재하는 메서드를 재정의할 경우 override(오버라이드) 키워드를
// 사용해 메서드 오버라이드를 합니다. 메서드 재정의라고도 합니다.

// Run
// 4
// 8