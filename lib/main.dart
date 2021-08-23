import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:exam/SecondPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      title: "abc",
      home: Rty(),
    );
  }
}
class Rty extends StatefulWidget {
  @override
  _RtyState createState() => _RtyState();
}

class _RtyState extends State<Rty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Exam"),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 60,
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                      brightness: Brightness.light,
                      primarySwatch: Colors.cyan,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                              color: Colors.cyanAccent
                          )
                      )
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20
                          ),
                          decoration: InputDecoration(
                            labelText: "Enter Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextField(
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20
                          ),
                          decoration: InputDecoration(
                              labelText: "Enter Password"
                          ),
                          obscureText: true,
                          keyboardType: TextInputType.text,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(9.0),
                    child: ElevatedButton(
                      child: Text("Login"),
                      onPressed: ()=>{},
                    ),
                  ),
                  ElevatedButton(
                    child: Text("Register"),
                    onPressed: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondP()),
                      );
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}