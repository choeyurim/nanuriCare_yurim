import 'package:flutter/material.dart';

class page43 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('사업자 정보',
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
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //통신판매산업신고번호
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('통신판매업신고번호',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey[700]
                      ),
                      ),
                      SizedBox(height: 8),
                      Text('2022 -서울강남-0000호',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  )
                ),
                //사업자등록번호
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text('사업자등록번호',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[700]
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('000-00-00000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                ),
                //법인명
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text('법인명',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[700]
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('(주)나누리아이티',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                ),
                //대표자명
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text('대표자명',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[700]
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('임기현',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                ),
                //대표 전화번호
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text('대표 전화번호',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[700]
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('02-69590319',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                ),
                //사업장 소재지
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text('사업장 소재지',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[700]
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('(07788) 서울특별시 영등포구 선유로 49길 4 SK1타워, 805호',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
