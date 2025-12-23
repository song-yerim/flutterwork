/*
  1. var 타입 : 처음 들어온 값이 type이 됨. type이 정해지면 바꿀 수 없다
  2. dynamic 타입 : 처음 들어온 값이 type이 됨. 처음 타입과 상관없이 타입을 바꿀 수 있다.
 */

void main() {
  var name = 'hong';
  name = 'gil';
  // name = 5; 오류 발생

  dynamic number = 5;
  print(number);

  number = 'dong';
  print(number);

  dynamic bool1 = true;
  print(bool1);

  bool1 = false;
  print(bool1);

  bool1 = 'true';
  print(bool1);

  bool1 = 67;
  print(bool1);
}