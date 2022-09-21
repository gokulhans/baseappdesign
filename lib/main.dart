import 'package:baseappdesign/demo.dart';
import 'package:baseappdesign/menucard.dart';
import 'package:baseappdesign/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDDkW6ko3rjmKGRn1nUqteDUwM5P19tFOo",
      appId: "hotelapp-a4725",
      messagingSenderId: "279608906227",
      projectId: "hotelapp-a4725",
    ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.deepPurpleAccent),
          headline2: TextStyle(color: Colors.deepPurpleAccent),
          bodyText2: TextStyle(color: Colors.deepPurpleAccent),
          subtitle1: TextStyle(color: Colors.pinkAccent),
        ),
      ),
      // routes: {
      //   'login': (ctx) {
      //     return const MyLogin();
      //   },
      //   'splash': (ctx) {
      //     return const Splash();
      //   },
      //   'noti': (ctx) {
      //     return DemoAd();
      //   },
      // },
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      home: MainPage(),
    );
  }
}

// class SplashPage extends StatefulWidget {
//   @override
//   _SplashPageState createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => MainPage())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white,
//         child: FlutterLogo(size: MediaQuery.of(context).size.height));
//   }
// }

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [Home(), Courses(), Syllabus(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        ),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Hotel Disoosa",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            icon: const Icon(
                Icons.share,
                color: Colors.teal,
              ),
            onPressed: () {
              // AdmobHelper.createInterad();
              // AdmobHelper.showInterad();
              Navigator.of(context).pushNamed('noti');
            },
          )
        ],
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: const SingleChildScrollView(
        child: MenuCard()
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          unselectedLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          selectedIconTheme: const IconThemeData(
            color: Colors.green,
          ),
          selectedLabelStyle: const TextStyle(
            color: Colors.green,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
            BottomNavigationBarItem(
                icon: Icon(Icons.graphic_eq_outlined), label: 'Syllabus'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile'),
          ]),
    );
  }

  // Future<void> saveNote() async {
  //   final test = NoteDB().test();
  //   print(test);
  //   return test;
  // }
}