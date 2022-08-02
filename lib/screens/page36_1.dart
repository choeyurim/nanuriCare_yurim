import 'package:flutter/material.dart';

class page36_1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('1:1 문의',
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
                Tab(text: '작성하기'),
                Tab(text: '문의내역'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              write(),
              history()
            ],
          ),
        ),
      ),
    );
  }
}

// 작성하기
class write extends StatefulWidget {
  @override
  State<write> createState() => _writeState();
}

class _writeState extends State<write> {
  List<String> _items = ['일반', '건강검진', '루틴', '혜택', '회원관리', '기타'];
  String _selected = '일반';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Expanded(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: DropdownButton(
                  icon: Align(
                    alignment: Alignment.center,
                    child: Icon(
                        Icons.keyboard_arrow_down
                    ),
                  ),
                  underline: SizedBox.shrink(),
                  isExpanded: true,
                  value: _selected,
                  items: _items.map(
                          (value){
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }
                  ).toList(),
          onChanged: (String? value) {
                    setState(() {
                      _selected = value!;
                    });
                    },
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                labelText:'내용 200자 이내 입력',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('10MB까지 1개만 등록 가능합니다.',
                style: TextStyle(
                  color: Colors.grey
                ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 30),
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
                        Text('파일첨부'),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                child: Text('문의하기'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}


// 문의내역
class history extends StatefulWidget {

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Column(
        children: [
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
                Text('1:1문의 내역이 없습니다.',
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
