import 'package:flutter/material.dart';

/// 시작 화면 (Splash_Screen)
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushNamed(context, '/main');
    },);

    return const Scaffold(
      backgroundColor: Color(0xFFDBFF76),
      // appBar: AppBar(
      //   title: Text('메인화면'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'TODO',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            'LIST',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.library_add_check_outlined, size: 100,)
            ],
          )
        ],
      ),
    );
  }
}