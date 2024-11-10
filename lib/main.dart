import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.amber,

      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        IconButton(onPressed: (){}, icon: Icon(Icons.call))
      ],




      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purple.shade100,
              child: Icon(
                Icons.icecream_outlined,
                size: 60,
                color: Colors.black
              ),
            ),
            Text('Ice cream is very delicious, right?',
              style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(height: 20),
             CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purple.shade100,
              child: Icon(
                Icons.code,
                size: 60,
                color: Colors.black,
              ),
            ),
             Text('Programming is not boring if you love it',
               style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(height: 20),
             CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purple.shade100,
              child: Icon(
                Icons.water_drop_outlined,
                size: 60,
                color: Colors.black,
              ),
            ),
             Text('If you submit code directly copied from ChatGPT, then mark will be 0',
               style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

