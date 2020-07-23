import 'dart:io';

//simple asynchronous program example

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
  Duration delayInSec = Duration(seconds: 3);
  Function callback = (){
    String result = 'task 2 result';
    print('Task 2 complete');
  };
  //Code inside callback gets executed after delay of 3 sec
  //Here future.delayed() is similar to handler.sendMessageDelayed() in android
  Future.delayed(delayInSec, callback);
}

void task3() {
  String result = 'task 3 result';
  print('Task 3 complete');
}