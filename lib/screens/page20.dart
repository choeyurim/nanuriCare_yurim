import 'package:flutter/material.dart';
import 'package:nanuricare_yurim/screens/page21.dart';
import 'package:nanuricare_yurim/screens/page22.dart';
import 'package:nanuricare_yurim/screens/page24.dart';
import 'package:nanuricare_yurim/screens/page32.dart';
import 'package:nanuricare_yurim/screens/page35.dart';
import 'package:nanuricare_yurim/screens/page36.dart';
import 'package:nanuricare_yurim/screens/page38.dart';

class page20 extends StatefulWidget {
  @override
  State<page20> createState() => _page20State();
}

class _page20State extends State<page20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('더보기',
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
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            user(),
            menu()
            // menu(),
          ],
        ),
      ),
    );
  }
}

// 유저 정보
class user extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('나누리 헬스케어',
                style: TextStyle(
                  color: Colors.grey[600]
                ),
              ),
              Text('홍길동님',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text('안녕하세요',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(
            width: 115,
            height: 30,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0, //그림자 제거
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  side: BorderSide(
                    width: 1.0, color: Colors.grey
                  ),
                  primary: Colors.white,  //배경색
                  onPrimary: Colors.grey, //글자색
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text('내정보관리'),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}

// 메뉴정보
class menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          children: [
            // 결제내역
           InkWell(
             onTap: (){
               Navigator.push(context,
                 MaterialPageRoute(builder: (context) => page21(),
                 )
               );
             },
               child: Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon( Icons.receipt_long,
                           color: Colors.grey[400],
                           size: 30,
                         ),
                         SizedBox(
                           width: 10,
                         ),
                         Text('결재내역',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_right),
                     )
                   ],
                 ),
               )
           ),
            // 주간,월간 리포트
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page22()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon( Icons.bar_chart,
                            color: Colors.grey[400],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('주간/월간 리포트',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 마이프로그램
            InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon( Icons.admin_panel_settings_outlined,
                            color: Colors.grey[400],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('마이프로그램',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 나누리몰
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page24()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.shopping_cart,
                            color: Colors.grey[400],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('나누리몰',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 건강정보연동
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page32()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon( Icons.link,
                            color: Colors.grey[400],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('건강정보연동',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 소식
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page35()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon( Icons.campaign,
                            color: Colors.grey[400],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('소식',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => page35()
                          )
                          );
                        },
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 고객센터
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page36()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon( Icons.support_agent,
                            color: Colors.grey[400],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('고객센터',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 설정
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page38()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon( Icons.settings,
                            color: Colors.grey[400],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('설정',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
          ],
        )
    );
  }
}
