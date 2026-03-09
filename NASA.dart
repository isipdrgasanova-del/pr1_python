import 'dart:io';

void main() {
  List<String> students = [
    'Афанасьев Александр',
    'Березанская Мария',
    'Болотский  Иван',
    'Гасанова Даниэла',
    'Колибаба Валерия',
    'Лисицына Екатерина'
  ];

  
  List<String> subjects = [
    'Разработка мобильных приложений',
    'Компьютерные сети',
    'Философия',
    'Элементы высшей математики'
  ];

  
  List<List<int>> grades = [
    [2, 4, 5, 4], 
    [4, 3, 4, 5], 
    [2, 3, 4, 5], 
    [5, 4, 4, 3], 
    [5, 5, 5, 5],
    [4, 5, 3, 4]  
  ];

  
  print('Список студентов:');
  for (int i = 0; i < students.length; i++) {
    print('${i + 1}. ${students[i]}');
  }
  print('');

  
  print('Список дисциплин:');
  for (int i = 0; i < subjects.length; i++) {
    print('${i + 1}. ${subjects[i]}');
  }
  print('');

 
  print('Оценки:');
  for (int i = 0; i < students.length; i++) {
    print('${students[i]}:');
    for (int j = 0; j < subjects.length; j++) {
      print('  ${subjects[j]}: ${grades[i][j]}');
    }
    print('');
  }

 
  print('Среднее кол-во баллов по каждому предмету:');
  for (int j = 0; j < subjects.length; j++) {
    double sum = 0;
    for (int i = 0; i < students.length; i++) {
      sum += grades[i][j];
    }
    double avg = sum / students.length;
    print('${subjects[j]}: ${avg.toStringAsFixed(2)}');
  }
  print('');


  print('Среднее кол-во баллов:');
  List<double> studentAvg = [];
  for (int i = 0; i < students.length; i++) {
    double sum = 0;
    for (int j = 0; j < subjects.length; j++) {
      sum += grades[i][j];
    }
    double avg = sum / subjects.length;
    studentAvg.add(avg);
    print('${students[i]}: ${avg.toStringAsFixed(2)}');
  }
  print('');

  int bestIndex = 0;
  for (int i = 1; i < studentAvg.length; i++) {
    if (studentAvg[i] > studentAvg[bestIndex]) {
      bestIndex = i;
    }
  }
  print('Лучший студент: ${students[bestIndex]} (средний балл: ${studentAvg[bestIndex].toStringAsFixed(2)})');
  print('');


  List<double> subjectAvg = [];
  for (int j = 0; j < subjects.length; j++) {
    double sum = 0;
    for (int i = 0; i < students.length; i++) {
      sum += grades[i][j];
    }
    subjectAvg.add(sum / students.length);
  }

  int worstSubjectIndex = 0;
  for (int j = 1; j < subjectAvg.length; j++) {
    if (subjectAvg[j] < subjectAvg[worstSubjectIndex]) {
      worstSubjectIndex = j;
    }
  }
  print('Предмет с наименьшим баллом: ${subjects[worstSubjectIndex]} (${subjectAvg[worstSubjectIndex].toStringAsFixed(2)})');
  print('');

  double totalSum = 0;
  for (int i = 0; i < students.length; i++) {
    for (int j = 0; j < subjects.length; j++) {
      totalSum += grades[i][j];
    }
  }
  double totalAvg = totalSum / (students.length * subjects.length);
  print('Ощий средний балл по группе: ${totalAvg.toStringAsFixed(2)}');
  print('');

  print('Всего предметов: ${subjects.length}');
  print('Список предмеов:');
  for (int i = 0; i < subjects.length; i++) {
    print('  ${subjects[i]}');
  }
  print('');

  
  print('Студенты без 2:');
  for (int i = 0; i < students.length; i++) {
    bool hasTwo = false;
    for (int j = 0; j < subjects.length; j++) {
      if (grades[i][j] == 2) {
        hasTwo = true;
        break;
      }
    }
    if (!hasTwo) {
      print('  ${students[i]}');
    }
  }
  print('');

  
  print('Студенты с оценками не ниже четырех 4:');
  for (int i = 0; i < students.length; i++) {
    bool allGood = true;
    for (int j = 0; j < subjects.length; j++) {
      if (grades[i][j] < 4) {
        allGood = false;
        break;
      }
    }
    if (allGood) {
      print('  ${students[i]}');
    }
  }
}