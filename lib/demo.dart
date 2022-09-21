import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Profile Page'),
      ),
    );
  }
}

class Courses extends StatefulWidget {
  const Courses({ Key? key }) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Courses"),
    );
  }
}

class Syllabus extends StatefulWidget {
  const Syllabus({ Key? key }) : super(key: key);

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}