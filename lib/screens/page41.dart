import 'package:flutter/material.dart';

class page41 extends StatefulWidget {
  @override
  State<page41> createState() => _page41State();
}

class _page41State extends State<page41> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('약관 및 개인정보처리',
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
            // 나누리케어 서비스 이용약관
           InkWell(
             onTap: (){
             },
               child: Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('나누리케어 서비스 이용약관',
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
            // 개인정보 수집 및 이용 동의(필수)
            InkWell(
                onTap: (){
                  // Navigator.push(
                  //     context, MaterialPageRoute(
                  //     builder: (context) => page()
                  // )
                  // );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('개인정보 수집 및 이용 동의(필수)',
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
            // 개인정보 제 3자 제공 동의
            InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('개인정보 제 3자 제공 동의',
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
            // 나누리케어 유료 서비스 이용약관
            InkWell(
                onTap: (){
                  // Navigator.push(
                  //     context, MaterialPageRoute(
                  //     builder: (context) => page24()
                  //)
                  //);
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('나누리케어 유료 서비스 이용약관',
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
            // 마케팅정보 동의
            InkWell(
                onTap: (){
                  // Navigator.push(
                  //     context, MaterialPageRoute(
                  //     builder: (context) => page32()
                  // )
                  // );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('마케팅정보 동의',
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
