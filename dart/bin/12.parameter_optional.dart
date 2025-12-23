// optional parameter : 있어도 되고 없어도 되는 파라미터. 대괄호로 묶음
void main() {
  addNumbers(20);
  print('---------------------');
  addNumbers(20, 35, 56);
}

// addNumbers(int x, [int y, int z]) // 오류 null이 들어갈 수 있기 때문. non-nullable 타입 -> ?를 붙여야 함
/* 방법 1
addNumbers(int x, [int? y, int? z]) {
  y ??= 1;
  z ??= 1;
  int sum = x + y + z;
  if(sum % 2 == 0) {
    print('$x + $y + $z = 짝수');
  } else {
    print('$x + $y + $z = 홀수');
  }
}

*/
// 방법 2
addNumbers(int x, [int y = 1, int z = 1]) {
  int sum = x + y + z;
  if(sum % 2 == 0) {
    print('$x + $y + $z = 짝수');
  } else {
    print('$x + $y + $z = 홀수');
  }
}
