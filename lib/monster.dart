import 'feline1.dart';
import 'dragon.dart';
import 'ghost.dart';

class monster extends feline1 with dragon,ghost {
  bool glowInDark=true;
  @override
  void test(){
    print('Test called in Monster.');
    super.test();
  }

}