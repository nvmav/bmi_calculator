import 'dart:io';

//synchronous program example

void main() {
  performTasks();
}

void performTasks()  {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 result';
  print('Task 1 complete');
}

void task2()  {
  String result = 'task 2 result';
  print('Task 2 complete');
}

void task3() {
  String result = 'task 3 result';
  print('Task 3 complete');
}