import 'package:IntermediateAllDart/IntermediateAllDart.dart' as IntermediateAllDart;
import 'package:IntermediateAllDart/MyClass.dart';
import 'package:IntermediateAllDart/animal.dart';
import 'package:IntermediateAllDart/Dog.dart';
import 'package:IntermediateAllDart/felines.dart';
import 'package:IntermediateAllDart/monster.dart';
import 'package:IntermediateAllDart/manager.dart';
import 'package:IntermediateAllDart/racecar.dart';
import 'package:IntermediateAllDart/counter.dart';
import 'package:IntermediateAllDart/GetterSetterClass.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

Future<void> main(List<String> arguments) async {
  IntermediateAllDart.sayHello();
  print('Hello world: ${IntermediateAllDart.calculate()}!');

  String myValues='Hello World!';
  List<int> ebytes=utf8.encode(myValues);
  String encoded=base64.encode(ebytes);
  print('encoded: ${encoded}');

  List<int> dbytes=base64.decode(encoded);
  String decoded=utf8.decode(dbytes);
  print('decoded: ${decoded}');

  var url = Uri.parse('https://example.com/whatsit/create');
  var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  //print(await http.read('https://www.youtube.com/watch'));

  var client = http.Client();
  try {
    var uriResponse = await client.post(Uri.parse('https://www.youtube.com/watch'),
        body: {'name': 'doodle', 'color': 'blue'});
    //print(await client.get(uriResponse.bodyFields['uri']));
  } finally {
    client.close();
  }

  var url1=Uri.parse('https://example.com/whatsit/create');
  await http.get(url1).then((response){
    print('response code: ${response.statusCode}');
  });
  //classes

  MyClass mine=new MyClass();
  mine.sayHello('Rahul');

  print(IntermediateAllDart.calculate());

  //constructor

  Animal anml=new Animal('John');
  anml.sayHello();

  Animal cat=new Animal('Bob');
  Animal dog=new Animal('Franky');
  cat.sayHello();
  dog.sayHello();

  //this keyword

  Dog d1=new Dog(34,'Rahul');
  Dog d2=new Dog(26,'Ganesh');
  Dog d3=new Dog(32,'Shreya');
  Dog d4=new Dog(29,'Nikhil');
  d1.show();
  d2.show();
  d3.show();
  d4.show();

  //Getter Setter class

  GetterSetterClass person1 = new GetterSetterClass(101,'Cana');
  GetterSetterClass person2 = new GetterSetterClass(102,'Rana');
  GetterSetterClass person3 = new GetterSetterClass(103,'Sana');
  GetterSetterClass person4 = new GetterSetterClass(104,'Nana');

  print('name of persong 1 is ${person1.name}');
  print('roll of preson 1 is ${person1.roll}');

  print('name of persong 2 is ${person2.name}');
  print('roll of preson 2 is ${person2.roll}');

  print('name of persong 3 is ${person3.name}');
  print('roll of preson 3 is ${person3.roll}');

  print('name of persong 4 is ${person4.name}');
  print('roll of preson 4 is ${person4.roll}');

  person3.name = 'Gana';
  person3.roll = 105;
  print('new name of persong 3 is ${person3.name}');
  print('new roll of preson 3 is ${person3.roll}');

  //static variable

  GetterSetterClass person5 = new GetterSetterClass(106,'Rana');

  //inheritance

  felines cat1 = new felines();
  cat1.breath();
  cat1.growl();
  cat1.walk();

  cat1.test();

  //Mixins

  monster ugly=new monster();
  ugly.test();
  ugly.fly();

  //interface

  manager bob=new manager();
  bob.test();

  //abstraction

  racecar rc=new racecar();
  rc.honk();

  //Generics

  List<int> numbers=[0];
  numbers.addAll([1,2,3,4,5,6,7,8,9,0]);
  print(numbers);

  List<String> strings=['hello'];
  strings.addAll(['a','b','c','d']);
  print(strings);

  /*add<int>(10,20);
  add<String>('a','b');
  add<double>(10.10,10.11);*/

  addNums(20, 40);

  /*List<num> val=[1,2,3,4,5,6,7,8,9,10,11,12];
  print(add(0,val));*/



  counter<double> dblCountr=new counter<double>();
  dblCountr.addAll([1.1,2.2,3.3,4.4,5.5]);
  dblCountr.add(10.5);
  dblCountr.total();

  counter<int> intCountr=new counter<int>();
  intCountr.addAll([11,22,33,44,55]);
  intCountr.add(105);
  intCountr.total();

  // Sync -> wait to complete vs asyncs -> dont wait to complete ,do another also.
  String path='C:\\';
  Directory dir=new Directory(path);
  if(dir.existsSync()){
    print('Exist.');
  }
  else{
    print('Not Exists.');
  }

  //directory

  Directory dir1=Directory.systemTemp.createTempSync();
  print(dir1.path);
  /*if(dir.existsSync()){
    print('Removing ${dir1.path}');
    dir.deleteSync();
  }
  else{
    print('Not Removing ${dir1.path}');
  }*/

  Directory dir2=Directory.current;
  print(dir2.path);

  /*List<FileSystemEntity> list=dir.listSync(recursive:true);
  print('Entries in list ${list.length}');*/

  /*list.forEach((FileSystemEntity val){
    FileStat stat=val.statSync();
    print('Type : ${stat.type}');
    print('Changed : ${stat.changed}');
    print('Modified : ${stat.modified}');
    print('Mode : ${stat.mode}');
    print('Size : ${stat.size}');
    print('******************************');
  });*/


  Directory dir3=Directory.current;
  print(dir3.path);
  File file=new File(dir3.path+'/myfile.txt');
  writeFile(file);
  readFile(file);


}

/*void add<T>(T a, T b){
  print(a+b);
}*/

void addNums<T extends int>(T a, T b){
  print(a+b);
}

/*T add<T extends num>(T value, List<T> items){
  T ret=value;
  items.forEach((value){
    ret=ret+value;
  });

  return ret;
}*/

void writeFile(File file){
  RandomAccessFile raf=file.openSync(mode:FileMode.APPEND);
  raf.writeStringSync('Hello world \r\nHow are you today?');
  raf.flushSync();
  raf.closeSync();
}
void readFile(File file){
  if(!file.existsSync()){
    print('File not found!');
    return;
  }
  print('Rading string...');
  print(file.readAsStringSync());
  print('Reading bytes');
  List val=file.readAsBytesSync();
  val.forEach((value){
    print(value);
  });




}