import '../lib/core/json_helper.dart';
import '../lib/domain/students.dart';

void main() {
  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  List<Map<String, String>> studentList = JsonHelper.parseJsonToList(json);

  Students students = Students(studentList);

  print('Original List:');
  students.output();

  students.sort('first');
  print('\nSorted by first name:');
  students.output();

  students
      .plus({"first": "John", "last": "Doe", "email": "john.doe@example.com"});
  print('\nAfter adding a new student:');
  students.output();

  students.remove('first', 'Steve');
  print('\nAfter removing Steve:');
  students.output();
}
