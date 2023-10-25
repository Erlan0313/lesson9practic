import 'dart:math';

void main(List<String> args) {
  showUser('Erlan', 20);

  showList(['Adylbek', 8, 6, 7, 'Ruslanov']);

  print(showList2([true, 456, 'Attokurov', 'ITC']));

  pifagor(4, 3);

  print(pifagor2(2.5, 2.3));

  tasc4(5, 5);

  task4_2(4, 4);

  // print(task4_3(5, 5));
  // print(task4_3(4, 4));

  task6('954684');
  print(task6_2('234432'));
  task8('afsfa');
}

// }
// // 1) Функция showUser принимает два параметра. Первый параметр имя
// // пользователя, а второй его возраст. Внутри функции реализовать вывод
// // на экран данных о пользователе.

void showUser(String name, int age) {
  print(name);
  print(age);
}

// // 2) Функция showList принимает массив. Внутри функции реализовать
// // вывод на экран первого и последнего элемента массива.

void showList(List array) {
  print(array.first);
  print(array.last);
}

dynamic showList2(List<dynamic> array) {
  return [array.first, array.last];
}

// // 3) Дан прямоугольный треугольник. Написать функцию, которая
// // принимает два катета(a,b) и вычисляет гипотенузу. Вычислить по
// // теореме Пифагора.
pifagor(int a, int b) {
  int c = a * a + b * b;
  print(c);
}

double pifagor2(double a, double b) {
  double c = sqrt(a * a + b * b);
  return c;
}

// // 4) Нарисовать квадрат из символов. Функция принимает два параметра
// // (height и width).
// // Пример: *****
// // *****
// // *****
// // *****

void tasc4(int height, int width) {
  for (int i = 0; i < height; i++) {
    String stolb = '';
    for (int j = 0; j < width; j++) {
      stolb += ' * ';
    }
    print(stolb);
  }
}

void task4_2(int height, int width) {
  for (int i = 0; i < height; i++) {
    String stolb = ' * ' * width;
    print(stolb);
  }
}

// // 5) Нарисовать пирамиду. Функция принимает один параметр (height)
// // Высота пирамиды
// // *
// // ***
// // *****
// // *******
// // *********
// // ***********
// // *************
// // ***************

// // 6)Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр
// // равняется сумме вторых трех цифр. Если это так - выведите 'да', в
// // противном случае выведите 'нет'.

void task6(String str) {
  //String str = '394736';
  int a = 0;
  int b = 0;
  if (str.length == 6) {
    for (int i = 0; i < 3; i++) {
      a += int.parse(str[i]);
    }
    for (int i = 3; i < 6; i++) {
      b += int.parse(str[i]);
    }
    if (a == b) {
      print('da');
    } else {
      print('net');
    }
  } else {
    print('Vvedite 6 znachnoe chislo');
  }
}

String task6_2(String str) {
  String result = '';
  int a = 0;
  int b = 0;
  if (str.length == 6) {
    for (int i = 0; i < 3; i++) {
      a += int.parse(str[i]);
    }
    for (int i = 3; i < 6; i++) {
      b += int.parse(str[i]);
    }
    if (a == b) {
      result = 'da';
    } else {
      result = 'net';
    }
  } else {
    result = 'Vvedite 6 znachnoe chislo';
  }
  return result;
}

// // 7)Дана строка с цифрами, например, '12345'. Проверьте, что первым
// // символом этой строки является цифра 1, 2 или 3. Если это так -
// // выведите 'да', в противном случае выведите 'нет'.
void task7(String str) {
  if (str.isNotEmpty) {
    if (str[0] == '1' || str[0] == '2' || str[0] == '3') {
      print('da');
    } else {
      print('net');
    }
  } else {
    print('Stroka pusta');
  }
}

// // 8) Дана строка, состоящая из символов, например, 'abcde'. Проверьте,
// // что первым символом этой строки является буква 'a'. Если это так -
// // выведите 'да', в противном случае выведите 'нет'.
void task8(String str) {
  if (str.isNotEmpty) {
    if (str[0] == 'a') {
      print('da');
    } else {
      print('net');
    }
  } else {
    print('Stroka pusta');
  }
}git