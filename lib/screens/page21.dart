import 'package:flutter/material.dart';

class page21 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('결제내역',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            centerTitle: true,
            elevation: 1.0,
            bottom: TabBar(
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: '결제내역'),
                Tab(text: '취소내역'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              payHistory(),
              cancelHistory()
            ],
          ),
        ),
      ),
    );
  }
}

// 결제 내역
class payHistory extends StatefulWidget {
  @override
  State<payHistory> createState() => _payHistoryState();
}

class _payHistoryState extends State<payHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    minimumSize: Size(120, 40)
                ),
                child: Text('6개월',
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
                        width: 1.0, color: Colors.black
                    ),
                    primary: Colors.white,  //배경색
                    onPrimary: Colors.black, //글자색
                    minimumSize: Size(120, 40)
                ),
                child: Text('1년',
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
                        width: 1.0, color: Colors.black
                    ),
                    primary: Colors.white,  //배경색
                    onPrimary: Colors.black, //글자색
                    minimumSize: Size(120, 40)
                ),
                child: Text('기간조회',
                  style: TextStyle(),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                ),
              borderRadius: BorderRadius.circular(20)
            ),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline,
                  size: 50,
                  color: Colors.grey[500],
                ),
                Text('결제 내역이 없습니다.',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


// 취소 내역
class cancelHistory extends StatefulWidget {

  @override
  State<cancelHistory> createState() => _cancelHistoryState();
}

class _cancelHistoryState extends State<cancelHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    minimumSize: Size(120, 40)
                ),
                child: Text('6개월',
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
                        width: 1.0, color: Colors.black
                    ),
                    primary: Colors.white,  //배경색
                    onPrimary: Colors.black, //글자색
                    minimumSize: Size(120, 40)
                ),
                child: Text('1년',
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
                        width: 1.0, color: Colors.black
                    ),
                    primary: Colors.white,  //배경색
                    onPrimary: Colors.black, //글자색
                    minimumSize: Size(120, 40)
                ),
                child: Text('기간조회',
                  style: TextStyle(),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(20)
            ),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline,
                  size: 50,
                  color: Colors.grey[500],
                ),
                Text('취소 내역이 없습니다.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
