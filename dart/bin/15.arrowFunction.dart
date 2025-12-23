void main() {
  int result = addnumbers2(25, y: 48, z:15);
  print('반환값 : $result');

  result = addnumbers2(5, y: 50);
  print('반환값 : $result');

  result = addnumbers2(14, y: 15, z:50);
  print('반환값 : $result');
}
// 반환형은 int형으로 합계 반환
// (positional parameter, named parameter, optional parameter)
// 합계

int addnumbers2(int x, {required int y, int z = 37}) {
  return x + y + z;
}

// 화살표 함수로 변경 : int addnumbers2(int x, {required int y, int z = 37}) => x + y + z;


int addnumbers(int x,  {required int y, int z = 37}) {
  int sum = x + y + z;
  if(sum % 2 == 0) {
    print('$x + $y + $z = 짝수');
  } else {
    print('$x + $y + $z = 홀수');
  }
  return sum;
}