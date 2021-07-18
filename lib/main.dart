import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyLoginPage(title: 'Login'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyLoginPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              'Email ID',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Email ID',
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).accentColor))))),
            Text(
              'Password',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                autocorrect: true,
                obscureText: true,
                decoration: InputDecoration.collapsed(
                    hintText: 'Email ID',
                    border: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).accentColor))),
              ),
            ),
            ButtonBar(
              children: [
                TextButton(
                  onPressed: pressAction,
                  child: Text('LOGIN'),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Theme.of(context).accentColor),
                )
              ],
            ),
            Ink(
              color: Color(0xFF397AF3),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/btn_google_light.svg',
                      width: 24,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 10,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void pressAction() {}
}
