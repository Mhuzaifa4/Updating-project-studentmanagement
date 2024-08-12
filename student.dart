// ignore_for_file: unused_import

import 'dart:io';
import  'dart:math';

void main() {
  String stdname = "Huzaifa";
  int stdpass = 00112233;

  print("-------WELCOME TO LEARNING MANAGEMENT SYSTEM-------\n");

  print("Login as student: Press 0 ");
  String? std = stdin.readLineSync();

  print(" Student name ");
  String? Std = stdin.readLineSync();

  print('Enter password: ');
  String? inputA = stdin.readLineSync(); // Read input as a string
  int sstd = int.tryParse(inputA ?? '') ?? 0;

  if (Std == stdname && sstd == stdpass) {
    print("Login Successfull");
  } else {
    print("Student not found");
  }
  String teachername = "Sir Bilal Rehman Khan";
  int teacherpass = 001122334455;
  print("Login as teacher: Press 1 ");

  String? td = stdin.readLineSync();

  print(" teacher name ");
  String? tname = stdin.readLineSync();

  print('Enter password: ');
  String? inputB = stdin.readLineSync(); // Read input as a string
  int ttpasword = int.tryParse(inputB ?? '') ?? 0;

  if (tname == teachername && ttpasword == teacherpass) {
    print("Login Successfull");
  } else {
    print("Teacher not found");
  }

  String Deanname = "Haris";
  int Deanpass = 00112233445566;

  print("Login as Dean: Press 3");
  String? D = stdin.readLineSync();

  print(" Dean name ");
  String? Dname = stdin.readLineSync();

  print('Enter password: ');
  String? inputC = stdin.readLineSync(); // Read input as a string
  int Dpassword = int.tryParse(inputC ?? '') ?? 0;
  if (Dname == Deanname && Dpassword == Deanpass) {
    print("Login Successfull");
  } else {
    print("Dean not found");
  }
  void StudentMenu() {
    while (true) {
      print("-------Student menu-----");
      print("1. View Marks");
      print("2. Record Attendance");
      print("3.Fees Status");
      print("4. Select Course");
      print("5. Exit");
      print(" Enter choice");
      String? choice = stdin.readLineSync();
      switch (choice) {
        case '1':
          Marks();
          break;
        case '2':
          recordAttendance();
          break;
        case '3':
      }
    }
  }

 void viewResults() {
  Map<String, double> subjects = {
    "Math": 85,
    "Science": 92,
    "English": 78,
    "History": 89,
  };

  double gpa = calculateGPA(subjects);
  print("Subjects and Marks: $subjects");
  print("GPA: $gpa");
}

double calculateGPA(Map<String, double> subjects) {
  double totalMarks = 0.0;
  subjects.forEach((subject, marks) {
    totalMarks += marks;
  });
  double gpa = totalMarks / subjects.length;
  return gpa;
}

  void recordAttendance() {
    Map<String, String> recordAttendance = {
      "2024-07-25": "Present",
      "2024-07-24": "Present",
      "2024-07-23": "Present",
      "2024-07-22": "Present",
      "2024-07-21": "Present",
      "2024-07-20": "Present",
      "2024-07-19": "Present",
      "2024-07-18": "Present",
      "2024-07-17": "Present",
      "2024-07-16": "Present",
    };

    print("$recordAttendance");
  }

  void printFeesStatus() {
    Map<String, String> printFeesStatus = {
      "March 2024": "Paid",
      "April 2024": "Paid",
      "May 2024": "Not Paid",
      "June 2024": "Paid",
      "July 2024": "Not Paid",
    };

    print("\nFees status for the last 5 months:");
    printFeesStatus.forEach((month, status) {
      print("$month: $status");
    });
    print("$printFeesStatus");
  }

  void selectCourses() {
    List<String> selectCourses = [
      "Introduction to Computer Science",
      "Data Structures",
      "Operating Systems",
      "Database Systems",
      "Computer Networks",
      "Software Engineering",
      "Artificial Intelligence",
      "Machine Learning",
      "Web Development",
      "Mobile App Development"
    ];
    print("$selectCourses");
  }
}
