import 'car.dart';

class racecar extends car{
  racecar(){
    this.hasHorn=true;
    this.hasWheel=true;
  }
  void honk() {
    print('honk in racecar');
    super.honk();
  }
}