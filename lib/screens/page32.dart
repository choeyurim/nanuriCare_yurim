import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page32 extends StatefulWidget {

  @override
  State<page32> createState() => _page32State();
}


class _page32State extends State<page32> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('건강정보 연동',
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
            elevation: 0,
          ),
          body: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Top,
                          platform(),
                          bloodSugar(),
                          bloodPressure(),
                          weight()
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ),
    );
  }
}

// Top 영역
Widget Top = Container(
  child: Column(
    children: [
      Text(
        '이용중인 건강 서비스 플랫폼 또는 건강측정기를 연결하여 건강기록을 관리할 수 있습니다.',
        style: TextStyle(
            fontSize: 16
        ),
      ),
      SizedBox(height: 20),
      Container(
        decoration: BoxDecoration(
            color: Colors.yellow[50],
            border: Border.all(
              color: Colors.yellow,
            ),
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                Icons.announcement_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text('플랫폼 최초 연동 시 2000P를 지급'),
            ],
          ),
        ),
      ),
    ],
  ),
);

// 플랫폼 영역
class platform extends StatefulWidget {
  @override
  State<platform> createState() => _platformState();
}

class _platformState extends State<platform> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 삼성 헬스
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text('플랫폼',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: (Colors.grey[350])!,
                      width: 1.2
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "images/shealth_150.png",
                              width: 40,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samsung Health',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '연결 안 됨',
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              )
                            ],
                          )
                        ],
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
              ),
            ],
          ),
        ),
        // 구글 피트니스
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: (Colors.grey[350])!,
                      width: 1.2
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "images/GoogleFit.png",
                              width: 40,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Google 피트니스',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '연결 안 됨',
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              )
                            ],
                          )
                        ],
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// 혈당기기 영역
class bloodSugar extends StatefulWidget {
  @override
  State<bloodSugar> createState() => _bloodSugarState();
}

class _bloodSugarState extends State<bloodSugar> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text('혈당 기기',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: (Colors.grey[350])!,
                      width: 1.2
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.bloodtype,
                            color: Colors.grey,
                            size: 40,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CareSens N Premier BLE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '연결 안 됨',
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              )
                            ],
                          )
                        ],
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// 혈압기기 영역
class bloodPressure extends StatefulWidget {
  @override
  State<bloodPressure> createState() => _bloodPressureState();
}

class _bloodPressureState extends State<bloodPressure> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text('혈압 기기',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: (Colors.grey[350])!,
                      width: 1.2
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.local_hospital_sharp,
                            color: Colors.grey,
                            size: 40,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Omron HEM-9200T',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '연결 안 됨',
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              )
                            ],
                          )
                        ],
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// 체중계
class weight extends StatefulWidget {
  @override
  State<weight> createState() => _weightState();
}

class _weightState extends State<weight> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text('체중계',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: (Colors.grey[350])!,
                      width: 1.2
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.monitor_weight_outlined,
                            color: Colors.grey,
                            size: 40,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Omron HEM-9200T',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '연결 안 됨',
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              )
                            ],
                          )
                        ],
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}