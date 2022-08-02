import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class page14 extends StatefulWidget {
  @override
  State<page14> createState() => _page14State();
}

class _page14State extends State<page14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('나누리케어 코디네이터',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
            tooltip: '나가기',
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
        color: Colors.grey[200],
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Bubble(
              padding: BubbleEdges.all(15),
              nip: BubbleNip.leftTop,
              radius: Radius.circular(15),
              child: Text(
                '6월 4주차, 주간 활동 리포트',
                textAlign: TextAlign.left,
              ),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              padding: BubbleEdges.all(15),
              nip: BubbleNip.leftTop,
              radius: Radius.circular(15),
              child: Text(
                '오늘 나와의 약속! 나만의 루틴, 잊지마세요!'
              ),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              padding: BubbleEdges.all(15),
              nip: BubbleNip.leftTop,
              radius: Radius.circular(15),
              child: Text(
                  '건강 검진 정보를 입력하고 2,000포인트 받으세요!'
              ),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              padding: BubbleEdges.all(15),
              nip: BubbleNip.leftTop,
              radius: Radius.circular(15),
              child: Text(
                  '삼성헬스와 연동하고 2,000포인트 받으세요!'
              ),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              padding: BubbleEdges.all(15),
              nip: BubbleNip.leftTop,
              radius: Radius.circular(15),
              child: Text(
                  '홍길동님에게 딱 한 달로 끝내는 홈트레이닝을 추천합니다.'
              ),
            )
          ],
        )
      ),
    );
  }
}

