class counter<T extends num>{
  List<T> _items=[];

  void addAll(Iterable<T> iterable){
    _items.addAll(iterable);
  }
  void add(T value){
    _items.add(value);
  }
  T? elementAt(int index){
    if(_items != null) {
      return _items.elementAt(index);
    }
    else {
      return null;
    }
  }
  void total(){
    num value=0;
    _items.forEach((item){
      value=value+item;
    });
    print(value);
  }

}
