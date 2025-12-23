/*
    기존 프로그램과 동일
      - +, -, *, ++, --, +=, %= ...
    다른 것
      - 나눗셈 : int / int = double
      - 몫 : ~/
    ??= : 만약 값이 null이면 오른쪽에 있는 값을 변수에 저장
          null이 아니면 왼쪽 값을 저장
 */

void main() {
  int num1 = 4;
  int num2 = 2;
  // int result = num1 / num2;  // 오류 : 결과는 무조건 double형
  double result = num1 / num2;  // double 대신 var로 써도 됨.
  print(result);

  int num3 = 3;
  print('몫 : ${num1 ~/ num3}');

  int? num4 = 2;
  print(num4);

  num4 = null;
  print(num4);

  num4 ??= 5;   // num4가 null 이므로 오른쪽의 값(5)을 num4에 값을 넣음
  print(num4);

  num3 ??= 10;
  print(num3);

  num4 ??= 20;
  print(num4);

  /*
      ? : 자료형에 붙여줌. null값 허용
      ?? : 변수에 붙여줌. null일 때 기본값 제공(원본 안 바뀜)
      ??= : 변수에 붙여줌. null일 때 기본값 제공(원본 바뀜)
   */
}
