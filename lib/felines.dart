import 'mamals.dart';
class felines extends mamals{
  bool hasClave=true;
  void growl() => print('Grrrrr...');

  @override
  void test(){
    print('Testing in feline.');
    super.test();
  }

}