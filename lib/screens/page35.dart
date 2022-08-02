import 'package:flutter/material.dart';
import 'package:nanuricare_yurim/screens/page32.dart';

class page35 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('소식',
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
          body: Container(
            color: Colors.white,
            child: Column(

                children: [
                  buttonWrap,
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
        child: Text('전체',
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
        child: Text('공지사항',
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
        child: Text('언론보도',
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
        child: Text('이벤트',
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
              Divider(thickness: 1, height: 1, color: Colors.grey[400]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('애플워치 7 특가 이벤트',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('2022.08.01 14:56',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text('|',
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ),
                        Text('이벤트',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('나누리케어와 함께 건강한 나 만들기',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('2022.07.31 10:08',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text('|',
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ),
                        Text('이벤트',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('공지사항 승인 게시일 건 수정',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('2022.07.24 19:24',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text('|',
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ),
                        Text('공지사항',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('나누리 포인트 적립 안내',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('2022.07.22 13:00',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text('|',
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ),
                        Text('공지사항',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('나누리 케어 오픈 이벤트',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('2022.07.21 13:01',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text('|',
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ),
                        Text('이벤트',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('나누리케어 어플 출시',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('2022.07.20 09:00',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text('|',
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ),
                        Text('언론보도',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ],
                    )
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

