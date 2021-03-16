import 'package:flutter/material.dart';
import 'package:morcati/page2.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SHOW SNACKBAR"),
            TextButton(
              onPressed: () {
                Get.snackbar("HI", "This is Snackbar using Flutter GetX");
              },
              child: Text("Snackbar"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("SHOW  Dialog"),
            TextButton(
              onPressed: () {
                Get.defaultDialog(title: "This is dialog using GetX Flutter");
              },
              child: Text("Dialog"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Go to Next Page"),
            TextButton(
              onPressed: () {
                Get.to(Page2());
              },
              child: Text("GO TO PAGE 2"),
            ),
          ],
        ),
      ),
    );
  }
}
