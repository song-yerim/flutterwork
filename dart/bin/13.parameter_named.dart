// named parameter : 변수 이름 명시로 파라미터 순서가 필요 없다
void main() {
  addNumbers(x: 20, y: 15, z: 11);
  print('----------------------');
  addNumbers(y: 18, x: 22, z: 11);
  print('----------------------');
  addNumbers2(x: 15, y: 22);
}

// 파라미터 넣는 곳에 {}중괄호를 넣어주고, required를 붙인다
addNumbers({required int x, required int y, required int z }) {
  int sum = x + y + z;
  if(sum % 2 == 0) {
    print('$x + $y + $z = 짝수');
  } else {
    print('$x + $y + $z = 홀수');
  }
}

// required를 빼면 optional parameter임.
addNumbers2({required int x, required int y, int z = 50}) {
  int sum = x + y + z;
  if(sum % 2 == 0) {
    print('$x + $y + $z = 짝수');
  } else {
    print('$x + $y + $z = 홀수');
  }
}