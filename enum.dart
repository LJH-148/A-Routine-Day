enum Status {
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}

void main() {
  Status status = Status.approved;

  // if..else if.. else

  if (status == Status.approved) {
    print('승인입니다.');
  } else if (status == Status.pending) {
    print('대기입니다.');
  } else {
    print('거절입니다.');
  }

  // switch 과 함께 사용하면 유용합니다.

  switch (status) {
    case Status.approved:
      print('승인 상태입니다.');
      break;

    case Status.pending:
      print('대기 상태입니다.');
      break;

    case Status.rejected:
      print('거절 상태입니다.');
      break;

    default:
      print('알 수 없는 상태입니다.');
  }
  print(Status.values); // Enum 의 모든 수를 리스트로 반환.
}
