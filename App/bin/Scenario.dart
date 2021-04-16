void main() {
  List<int> arr = [23, 453, 23423, 45, 2];
  print(func(arr));
}

dynamic func(List<int> arr){
  
  List<int> arrEven = [];
  List<int> arrOdd = [];

  arr.forEach((element) {
    if (element.isEven) {
      arrEven.add(element);
    } else {
      arrOdd.add(element);
    }
  });

  arrOdd.sort();
  arrEven.sort();
  arr = [...?arrEven, ...?arrOdd];
  return arr;
}