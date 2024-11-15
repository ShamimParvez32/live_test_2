import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}


class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  ShowSnakeBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: Text('Need blood'),
        centerTitle: true,
        toolbarHeight: 50,
        actions: [
          IconButton(onPressed: () {ShowSnakeBar('I am add', context);}, icon: Icon(Icons.add)),

        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCircleAvatarWithText(Icons.bloodtype_outlined, 'Donate Blood'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatarWithText(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.black45,
          child: Icon(
            icon,
            size: 50,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ],
    );
  }
}





