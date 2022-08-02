import 'package:flutter/material.dart';

// 39. 로그인관리
class page39 extends StatefulWidget {
  @override
  State<page39> createState() => _page39State();
}

class _page39State extends State<page39> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('로그인 관리',
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
            // 패턴 인증
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('패턴 인증',
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
            // 생체인증
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('생체 인증',
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
            // 자동로그인
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('자동 로그인',
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
            // 비밀번호변경
            InkWell(
              onTap: (){},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('비밀번호 변경',
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
              ),
            ),
          ],
        )
    );
  }
}
