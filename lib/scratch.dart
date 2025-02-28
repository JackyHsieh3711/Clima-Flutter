import 'dart:io';

void main() {
  performTask();
}

void performTask() async {
  task1();
  print(await task2());
  // String task2Data = await task2();
  // task3(task2Data);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSecs = Duration(seconds: 3);

  String result;

  await Future.delayed(threeSecs, (){
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}