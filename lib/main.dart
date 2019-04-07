import 'class.dart' as classLib;
import 'enum.dart' deferred as enumLib;

Future main(List<String> arguments) async {
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
  //print(clapping);

  //simpleFunctionExample();
  //print(returnStringSimpleFunction());
  //printFunction('Dart is amazing...', true);
  //noteList.forEach(asClassFunction);

  classLib.Point instance = new classLib.Point(2, 3);
  classLib.ThreeDPoint threeInstance = new classLib.ThreeDPoint(5, 10, 12);

  var date = new DateTime.now().weekday;

  switch (date) {
    case DateTime.sunday:
      print('sunday');
      break;
    case DateTime.monday:
      print('monday');
      break;
    case DateTime.tuesday:
      print('tuesday');
      break;
    case DateTime.wednesday:
      print('wednesday');
      break;
    case DateTime.thursday:
      print('thursday');
      break;
    case DateTime.friday:
      print('friday');
      break;
    case DateTime.saturday:
      print('saturday');
      break;
    default:
  }

  var names = new List<String>();
  num distance =
      classLib.Point.distanceBetween(instance, new classLib.Point(4, 5));
  print(distance);

  print(enumLib.Colors.Blue.index);

  bool enabled = true;
  greet(enabled).then((val) {
    print(val + ' return string in async method');
  }).catchError((err) {}); //handling error and getting value of it.
}

///such a basic async method <3
Future<String> greet(bool isEnabled) async {
  if (isEnabled) {
    return 'hi';
  }
  return 'hello';
}

simpleFunctionExample() => print('Very Simple Function');
returnStringSimpleFunction() => 'Dart Vader';

/// You can use [printFunction] like this:
///
/// ```
/// /// printFunction('Message',true); // "Message"
/// ```
void printFunction(String message, [bool isActive = true]) {
  if (isActive) {
    print(message);
  }
}

void asClassFunction(int element) {
  print(element);
}

void unImplementMethod() => throw UnimplementedError();

void nestedFunctions() {
  print('Master Function');

  void slaveFunction() {
    print('Slave Function');
  }

  slaveFunction();
}

void exceptionHandlingFunction() {
  try {
//codes...
  } catch (e, s) {
    //e is error message , s is stack trace for exception.
  }
}
