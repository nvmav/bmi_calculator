import 'dart:io';

//what happens if you don't await, just declare async and return Future

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

Future<String> task2() async  {
  String result;

  Duration delayInSec = Duration(seconds: 3);
  Function callback = (){
    print('after delay completed');
    result = 'task 2 result';
    print('Task 2 complete');
    print('result: "$result"');
  };
  //Code inside callback gets executed after delay of 3 sec
  //Here future.delayed() is similar to handler.sendMessageDelayed() in android

  print('before future call');
  Future.delayed(delayInSec, callback);
  print('after future call - return');

  return result;
}

void task3(Future<String> result) {
  print('Task 3 complete with task2Data: $result');
}

/*Output:
Task 1 complete
before future call
after future call - return
Task 3 complete with task2Data: Instance of 'Future<String>'
after delay completed
Task 2 complete
result: "task 2 result"*/