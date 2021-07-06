import 'mamals.dart';
import 'dragon.dart';
class feline1 extends mamals with dragon {
  bool hasClaws=true;
  void growl() => print('Grrrrr...');

  @override
  void test(){
    print('Testing in feline1.');
    super.test();
  }

}

