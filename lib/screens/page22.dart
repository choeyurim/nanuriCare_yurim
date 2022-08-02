import 'package:flutter/material.dart';

class page22 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('활동 리포트',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.clear,
                    color: Colors.black,
                  ),
              ),
            ],
            elevation: 1.0,
            bottom: TabBar(
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: '주간 리포트'),
                Tab(text: '월간 리포트'),
              ],
            ),
          ),
          body: Container(
            color: Colors.white,
            child: TabBarView(
              children: [
                weeklyReport(),
                monthlyReport()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 주간 리포트
class weeklyReport extends StatefulWidget {
  @override
  State<weeklyReport> createState() => _weeklyReportState();
}
class _weeklyReportState extends State<weeklyReport> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('2022년 06월 4주차',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: Colors.grey[400],
                      size: 28,
                    )
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow[50],
                      border: Border.all(
                        color: Colors.yellow,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('포인트'),
                        Text('0P',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '이번주 열심히 모은 포인트예요.',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(color: Colors.grey[200], thickness: 1),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text('루틴 요약',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                color: Colors.grey[100],
                width: MediaQuery.of(context).size.width *1,
                height: MediaQuery.of(context).size.height *0.5,
              )
            ],
          ),
        ),
          Divider(color: Colors.grey[200], thickness: 5),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text('프로그램 이용',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    ),
                  ),
                ),
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
                      Text('이번 주 정보가 없어요. 다음 주를 기대할게요!',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
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


// 월간 리포트
class monthlyReport extends StatefulWidget {
  @override
  State<monthlyReport> createState() => _monthlyReportState();
}
class _monthlyReportState extends State<monthlyReport> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('2022년 06월',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                      ),
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: Colors.grey[400],
                      size: 28,
                    )
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow[50],
                      border: Border.all(
                        color: Colors.yellow,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('포인트'),
                        Text('0P',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '이번달 열심히 모은 포인트예요.',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(color: Colors.grey[200], thickness: 1),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text('루틴 요약',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[100],
                  width: MediaQuery.of(context).size.width *1,
                  height: MediaQuery.of(context).size.height *0.5,
                )
              ],
            ),
          ),
          Divider(color: Colors.grey[200], thickness: 5),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text('프로그램 이용',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    ),
                  ),
                ),
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
                      Text('이번 주 정보가 없어요. 다음 주를 기대할게요!',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
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