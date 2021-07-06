class GetterSetterClass{
  int _roll=1;
  String _name='';
  static int _cnt=0;
  GetterSetterClass(int roll,String name){
    _roll=roll;
    _name=name;
    _cnt++;
    print('There are ${_cnt} of us.');
  }
  String get name => _name;
  void set name(String val) => _name=val;
  int get roll => _roll;
  void set roll(int val) => _roll=val;

}