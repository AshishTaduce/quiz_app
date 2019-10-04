import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: QuizApp(),
      ),
    ),
  );
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

List question = ['This is the first question','This is the second question'];
List answer = ['True,False'];
int index = 0;

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 4,
                child: Container(
                  child: Text(' '),
                  color: Colors.black,
                )),
            Expanded(
              flex: 4,
              child: Container(
                child: Text(
                '${question[index]}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
              ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                //margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(

                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if(answer[index] == 'True'){
                                print('Answer is Right');
                              }
                              else{
                                print('Answer is Wrong');
                              }
                            });
                          },
                          child: Container(
                            color: Colors.green,
                            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16,),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('True',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                fontSize: 32,
                                  color: Colors.white,

                              ),
                              ),
                            ),

                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if(answer[index] == 'False'){
                                print('Answer is Right');
                              }
                              else{
                                print('Answer is Wrong');
                              }
                            });
                          },
                          child: Container(
                            color: Colors.red,
                            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15,),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('False',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                fontSize: 32,
                                    color: Colors.white,

                                ),
                          ),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
