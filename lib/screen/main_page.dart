import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List<String> Items = ['보리 산책하기', '알고리즘 풀기', '깃헙 잔디심기', '플러터 강의보기','pccp수업듣기'];
  //할 일을 리스틀 ㅗ저장

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todolist!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, //윗부분부터
        children: [
          Text('1월 11일'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('할 일'),
            ],
          ),
          Container(
            width: 250, //컨테이너 가로 크기를 지정하기위해 한 번 더 감쌈

          child : ListView.builder( //리스트 형태의 위젯을 생성할 때 사용되는 위젯 중 하나
            shrinkWrap: true, //스크롤 가능한 위젯에서 주로 사용되는 속성
            //ListView가 내부의 컨텐츠를 Column에 맞게 크기 조절
            itemCount: Items.length,//리스트에 표시할 아이템 총 개수
            itemBuilder: (context, index) { //생성할 위젯을 반환하는 함수
              
              return Container(
                alignment: Alignment.center,
                child: Text(Items[index]),
                height: 40,
                decoration: BoxDecoration(color: Colors.grey),
                margin: EdgeInsets.all(10),
              );
            },
          ),
          )
        ],
      ),
    );
  }
}
