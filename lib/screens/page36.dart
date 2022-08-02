import 'package:flutter/material.dart';
import 'package:nanuricare_yurim/screens/page32.dart';
import 'package:nanuricare_yurim/screens/page36_1.dart';

class page36 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('자주묻는 질문',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            elevation: 1.0,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => page36_1()
              )
              );
            },
            child: Icon(
              Icons.question_answer_outlined,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            elevation: 5,
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buttonWrap,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text('일반',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    ),
                  ),
                  NewsWrap,
                ],
            )
            // child:
          ),
        ),
      ),
    );
  }
}

// 버튼 영역
Widget buttonWrap = Padding(
  padding: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            elevation: 0, //그림자 제거
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            side: BorderSide(
              width: 1.0,
            ),
            primary: Colors.black,    //배경색
            onPrimary: Colors.white,  //글자색
        ),
        child: Text('일반',
          style: TextStyle(),
        ),
      ),
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            elevation: 0, //그림자 제거
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
            ),
            side: BorderSide(
              width: 1.0,
              color: Colors.grey
            ),
            primary: Colors.white,    //배경색
            onPrimary: Colors.black,  //글자색
        ),
        child: Text('건강검진',
          style: TextStyle(),
        ),
      ),
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            elevation: 0, //그림자 제거
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            side: BorderSide(
              width: 1.0,
                color: Colors.grey
            ),
            primary: Colors.white,    //배경색
            onPrimary: Colors.black,  //글자색
        ),
        child: Text('루틴',
          style: TextStyle(),
        ),
      ),
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            elevation: 0, //그림자 제거
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            side: BorderSide(
              width: 1.0,
                color: Colors.grey
            ),
            primary: Colors.white,    //배경색
            onPrimary: Colors.black,  //글자색
        ),
        child: Text('혜택',
          style: TextStyle(),
        ),
      ),
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          elevation: 0, //그림자 제거
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
          ),
          side: BorderSide(
              width: 1.0,
              color: Colors.grey
          ),
          primary: Colors.white,    //배경색
          onPrimary: Colors.black,  //글자색
        ),
        child: Text('회원관리',
          style: TextStyle(),
        ),
      ),
    ],
  ),
);

// 소식 글 영역
Widget NewsWrap = Padding(
  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
  child: ListView(
    shrinkWrap: true,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('[일반] 퇴사 후에도 구매한 서비스를 이용할 수 있나요?'),
                        Icon(Icons.keyboard_arrow_up)
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text('아쉽게도 퇴사 후에는 서비스 이용이 제한됩니다. 프로그램 구매전 퇴사 날짜를 유의해주세요.'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Divider(thickness: 1, height: 1, color: Colors.grey[400]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('[일반] 서비스 구현체'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Divider(thickness: 1, height: 1, color: Colors.grey[400]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('[일반] 나누리케어는 어떤 서비스인가요?'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Divider(thickness: 1, height: 1, color: Colors.grey[400]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('[일반] 구매 수량에 제한이 있나요?'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Divider(thickness: 1, height: 1, color: Colors.grey[400]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('[일반] 나누리케어는 얼마나 전문성이 있나요?'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Divider(thickness: 1, height: 1, color: Colors.grey[400]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('[일반] 혈당측정기에 혈액 주입 시 반응이 없어요.'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Divider(thickness: 1, height: 1, color: Colors.grey[400]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('[일반] 친구와 가족에게도 나누리케어를 추천하고 싶어요.'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            ],
          ),
        ],
      )
    ],
  ),
);

