import 'package:flutter/material.dart';

// 40. 알림수신 관리
class page40 extends StatefulWidget {
  @override
  State<page40> createState() => _page40State();
}

class _page40State extends State<page40> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('알람수신설정',
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
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 알림 동의
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('알림(Push)동의',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Semantics(
                          container: true,
                          label: '토글버튼',
                          child: Switch(
                            value: _isChecked,
                            onChanged: (value) {
                              _isChecked = value;
                            },
                            activeColor: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                    child: Text('이벤트/마케팅 소식 알림',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('알림 소식을 해제하면 다양한 혜택정보를 놓칠 수 있어요. 알림을 꺼도 중요한 정보는 받을 수 있어요.',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  // PUSH
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('PUSH',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Semantics(
                          container: true,
                          label: '토글버튼',
                          child: Switch(
                            value: _isChecked,
                            onChanged: (value) {
                              _isChecked = value;
                            },
                            activeColor: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  // SMS
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SMS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Semantics(
                          container: true,
                          label: '토글버튼',
                          child: Switch(
                            value: _isChecked,
                            onChanged: (value) {
                              _isChecked = value;
                            },
                            activeColor: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  // 이메일
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('이메일',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Semantics(
                          container: true,
                          label: '토글버튼',
                          child: Switch(
                            value: _isChecked,
                            onChanged: (value) {
                              _isChecked = value;
                            },
                            activeColor: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
