import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todolist!'),
        ),
        body: (Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('1월 11일'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Text('완료')),
                Expanded(child: Text('할 일')),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: Text('보리 산책하기') ,
              width: 300,
              height: 40,
              decoration: BoxDecoration(color: Colors.grey,),
            ),
          ],
        )));
  }
}
