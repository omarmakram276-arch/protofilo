
import 'dart:io';
void main (){
  print(' calc GPA ');
  stdout.write('how many course yours study : ');
  int numberOfCourses =int.parse(stdin.readLineSync()!);
  List<Course> semesterCorses =[];
  for  (int i = 0 ; i < numberOfCourses ; i++){
    
    
      print('number of course :  ${i+1}');
      stdout.write('name of course : ');
      String courseName = stdin.readLineSync()!;
      stdout.write(' how many hours you study : ');
      double courseHours = double.parse(stdin.readLineSync()!);
      stdout.write ('points of courses : ');
      double coursePoints = double.parse(stdin.readLineSync()!);
      Course course =Course(name: courseName , cardiHours: courseHours , gradePoints:coursePoints );
      semesterCorses.add(course);


  }
  double totalPoints = 0;
  double totalHours =0;
  for (var course in semesterCorses) {
    totalPoints +=(course.gradePoints * course.cardiHours);
    totalHours += course.cardiHours;
    
    
  }
  if( totalHours == 0){
    print('error != 0 ');
    return;


  }
  double gpa = totalPoints / totalHours ;
  print('================\n');
  print('gpa ${ gpa.toStringAsFixed( 2)}');

}
class Course {
  String name;
  double cardiHours;
  double gradePoints ;

   Course({
    required this.name,
    required this.cardiHours,
    required this.gradePoints
   });
}