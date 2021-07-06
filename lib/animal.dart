class Animal{ //_ means private variable
  String _name='';
  /*Animal(){
    print('Default Constructor');
    _name='Sam';
  }*/
  Animal(String name){
    _name=name;
  }

  void sayHello(){
    if(_name.isNotEmpty){
      print('Hello ${_name} nice to meet you.');
    }
    else{
      print('Hello');
    }

  }


}