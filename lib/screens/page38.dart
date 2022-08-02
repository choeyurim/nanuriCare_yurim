import 'package:flutter/material.dart';
import 'package:nanuricare_yurim/screens/page39.dart';
import 'package:nanuricare_yurim/screens/page40.dart';
import 'package:nanuricare_yurim/screens/page41.dart';
import 'package:nanuricare_yurim/screens/page42.dart';
import 'package:nanuricare_yurim/screens/page43.dart';

// 38. 설정
class page38 extends StatefulWidget {
  @override
  State<page38> createState() => _page38State();
}

class _page38State extends State<page38> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('설정',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            menu()
            // menu(),
          ],
        ),
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
            // 로그인 관리
           InkWell(
             onTap: (){
               Navigator.push(
                   context, MaterialPageRoute(
                   builder: (context) => page39()
               )
               );
             },
               child: Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('로그인 관리',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_right),
                     )
                   ],
                 ),
               )
           ),
            // 알림수신 설정
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page40()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('알림수신 설정',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 약관 및 개인정보 처리
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page41()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('약관 및 개인정보 처리',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 앱정보
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page42()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('앱정보',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                )
            ),
            // 사업자 정보
            InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => page43()
                  )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('사업자 정보',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
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
