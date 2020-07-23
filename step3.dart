import 'dart:io';

//sync task depending on async task without waiting

void main() {
  performTasks();
}

void performTasks()  {
  task1();
  task3(task2());
}

void task1() {
  String result = 'task 1 result';
  print('Task 1 complete');
}

String task2()  {
  String result;

  Duration delayInSec = Duration(seconds: 3);
  Function callback = (){
    result = 'task 2 result';
    print('Task 2 complete');
  };
  //Code inside callback gets executed after delay of 3 sec
  //Here future.delayed() is similar to handler.sendMessageDelayed() in android
  Future.delayed(delayInSec, callback);

  return result;
}

void task3(String result) {
  print('Task 3 complete with task2Data: $result');
}