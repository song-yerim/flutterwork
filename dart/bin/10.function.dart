// 함수 반환형을 쓰지 않으면 void 생략한 것
void main() {
  addNumbers();
  addNumbers2(); // 합계는 짝수, 합계는 홀수
}

addNumbers() { // void 생략 가능
  print('addNumbers 실행');
}

// 3개의 숫자를 변수에 넣고 모두 더한 값이 짝수인지 홀수인지 알려주는 함수
addNumbers2() {
  int a = 5;
  int b = 6;
  int c = 7;
  int result = a + b + c;
  if(result % 2 ==0) {
    print('합계는 짝수');
    print('$a + $b + $c = 짝수');
  } else {
    print('합계는 홀수');
    print('$a + $b + $c = 홀수');
  }
}

