import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/components/messages_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
            headline1: TextStyle(color: Colors.white),
            headline2: TextStyle(color: Colors.white),
            headline3: TextStyle(color: Colors.white),
            headline4: TextStyle(color: Colors.white),
            headline5: TextStyle(color: Colors.white),
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
            subtitle1: TextStyle(color: Colors.white),
            subtitle2: TextStyle(color: Colors.white)),
      ),
      home: const BarTabController(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BarTabController extends StatelessWidget {
  const BarTabController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Text(
                "CONVERSAS",
                style: TextStyle(fontSize: 15, height: 5),
              ),
              Text(
                "STATUS",
                style: TextStyle(fontSize: 15, height: 5),
              ),
              Text(
                "CHAMADAS",
                style: TextStyle(fontSize: 15, height: 5),
              ),
            ],
          ),
          actions: const <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 10,
            ),
          ],
          // leading: ,
        ),
        body: const TabBarView(children: [
          MessagesPage(),
          StatusPage(),
          CallsPage(),
        ]),
      ),
    );
  }
}

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Página de Status"),
      ),
    );
  }
}

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Página de chamadas"),
      ),
    );
  }
}
