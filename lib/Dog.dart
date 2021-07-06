class Dog{
  String name='';
  int age=1;
  Dog(int age,String name){
    this.age=age;
    this.name=name;
  }

  int ageDogYears() {
    return age*7;
  }

  void show(){
    print('Name: ${name}');
    print('Age: ${age}');
    print('Age in Dog Years ${ageDogYears()}');
  }

}