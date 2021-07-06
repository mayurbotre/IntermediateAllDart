import 'employee.dart';

class manager implements employee{
  String name='Bob';
  void test(){
    print('I am a Manager');
    print(super.toString());

  }

}