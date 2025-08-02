abstract class Role {
  void displayRole();
}

class Person implements Role {
  final String name;
  final int age;
  final String address;

  Person(this.name, this.age, this.address);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print("Role: Person");
  }
}

class Student extends Person {
  final String studentID;
  final String grade;
  final List<double> courseScores;

  Student(
    String name,
    int age,
    String address, {
    required this.studentID,
    required this.grade,
    List<double>? courseScores,
  }) : courseScores = courseScores ?? [],
       super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    double sum = 0;

    for (double i in courseScores) {
      sum = sum + i;
    }

    return sum / courseScores.length;
  }
}

class Teacher extends Person {
  final String teacherID;
  final List<String> coursesTaught;

  Teacher(
    String name,
    int age,
    String address, {
    required this.teacherID,
    List<String>? coursesTaught,
  }) : coursesTaught = coursesTaught ?? [],
       super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourses() {
    if (coursesTaught.isEmpty) {
      print("no courses.");
    } else {
      print("courses:");
      for (var course in coursesTaught) {
        print("- $course");
      }
    }
  }
}

void main() {
  Student student = Student(
    "Jhon Doe",
    20,
    "123 Main St",
    studentID: "S123",
    grade: "A",
    courseScores: [85.5, 90.0, 82.0],
  );

  Teacher teacher = Teacher(
    "Mrs. Smith",
    35,
    "456 Oak St",
    teacherID: "T456",
    coursesTaught: ["Math", "Physics", "Bangla"],
  );

  print("Student Information:");
  student.displayRole();
  print(
    "Name: ${student.getName}\nAge: ${student.getAge}\nAddress: ${student.getAddress}",
  );
  print(
    "Average Score: ${student.calculateAverageScore().toStringAsFixed(2)}\n",
  );

  print("Teacher Information:");
  teacher.displayRole();
  print(
    "Name: ${teacher.getName}\nAge: ${teacher.getAge}\nAddress: ${teacher.getAddress}",
  );
  teacher.displayCourses();
}
