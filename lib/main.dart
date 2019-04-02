void main() {
  //List examples...
  List<int> noteList = [50, 60, 80, 10, 30];
  for (var item in noteList) {
    //print(item);
  }
  List<String> studentList = ['Murat', 'Fatih', 'Arkan', 'Kübra', 'Çamcı'];
  studentList.add('Seda');
  for (var i = 0; i < studentList.length; i++) {
    //print(studentList[i].toLowerCase());
  }

  //Maps examples...
  var personAndAges = {'age': 26, 'note': 54, 'Id': 99};
  personAndAges.addAll({'countryCode': 90});
  //print(personAndAges['countryCode']);

  var clapping = '\u{1f44f}';
  print(clapping);
}
