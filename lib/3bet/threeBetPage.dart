import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:porker_expected_value/3bet/threeBetJudge.dart';




class ThreeBetPage extends StatefulWidget {
  @override
  _ThreeBetPage createState() => _ThreeBetPage();
}

/*
 * カードページ
 */

class _ThreeBetPage extends State<ThreeBetPage> with TickerProviderStateMixin{

  var rand1 = math.Random();
  var rand2 = math.Random();
  var rand3 =math.Random();
  var rand4 =math.Random();
  var rand5 =math.Random();
  var rand6 =math.Random();

  int card1Number=1;
  int card2Number=1;
  int suit1Number=1;
  int suit2Number=2;
  String displaySpecialJudge;
  List<String> suit=['spade','diamond','heart','clover'];
  List<String> position =['','HJ','CO','BTN','SB','BB'];
  List<String> action =['','Fold','Call','Raise',];
  List<String> openRaisePosition=['UTG','HJ','CO','BTN','SB'];

  int positionNumber=1 ;
  int openRaiserNumber=0;
  int judgeResult;
  List<int> specialJudgeResult=[];

  final cardKey1 = GlobalKey<FlipCardState>();
  final cardKey2 = GlobalKey<FlipCardState>();

  bool _correct = false;
  bool _wrong = false;

  ThreeBetJudgeData threeBetJudgeData=ThreeBetJudgeData();

  @override
  Widget build(BuildContext context) {
    //todo
    // ここで判定結果を確定させる
    judgeResult= threeBetJudgeData.judge3bet(card1Number, card2Number, position[positionNumber], openRaisePosition[openRaiserNumber], suit1Number, suit2Number);
    specialJudgeResult= threeBetJudgeData.specialJudge3bet(card1Number, card2Number, position[positionNumber], openRaisePosition[openRaiserNumber], suit1Number, suit2Number);
    if(specialJudgeResult==null){
      specialJudgeResult=[0];
      print('特例が記述されていません');
    }
    if(judgeResult==null){
      judgeResult=1;
      print('通常の判定が記載されていません');
    }
    print(specialJudgeResult);
    print(judgeResult);
    print('特定のペア'+specialJudgeResult.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text('3Bet',
            style: TextStyle(
                fontWeight: FontWeight.w700
            ),),
        ),
        body: Stack(
            children:<Widget>[
              Column(
                children: [
                  SizedBox(height: 30,),
                  Text(
                    'あなたのポジションは : '+position[positionNumber],
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'オープンレイザーは : '+openRaisePosition[openRaiserNumber],
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white38,
                            onPrimary: Colors.blue,
                            elevation: 16
                        ),
                        onPressed: () async {
                          if(specialJudgeResult[0]!=0 ){
                            if(specialJudgeResult[0]==1){
                              setState(()  {
                                _correct =true;
                                displaySpecialJudge='正解\nまたは${specialJudgeResult[2]}%の確率で${action[specialJudgeResult[1]]}が推奨されています';
                              });
                              await Future.delayed(Duration(seconds: 1));
                              setState(()  {
                                _correct =false;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              setState(()  {
                                displaySpecialJudge=null;
                              });
                              print('正解\nまたは${specialJudgeResult[2]}%の確率で${action[specialJudgeResult[1]]}が推奨されています');
                            }
                            else{
                              setState(()  {
                                _wrong =true;
                              });
                              await Future.delayed(Duration(seconds: 1));
                              setState(()  {
                                _wrong =false;
                              });
                              print('不正解');
                            }
                          }
                          else{
                            if (judgeResult == 1) {
                              setState(()  {
                                _correct =true;
                              });
                              await Future.delayed(Duration(seconds: 1));
                              setState(()  {
                                _correct =false;
                              });
                              print('正解');
                            }
                            else {
                              setState(()  {
                                _wrong =true;
                              });
                              await Future.delayed(Duration(seconds: 1));
                              setState(()  {
                                _wrong =false;
                              });
                              print('不正解');
                            }
                          }},
                        child: Text('Fold',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white38,
                            onPrimary: Colors.green,
                            elevation: 16,
                          ),
                          onPressed: () async {
                            if(specialJudgeResult[0]!=0){
                              if(specialJudgeResult[0]==2 || specialJudgeResult[1]==2){
                                if(specialJudgeResult[0]==2){
                                  setState(()  {
                                    _correct =true;
                                    displaySpecialJudge='正解\nまたは${specialJudgeResult[2]}%の確率で${action[specialJudgeResult[1]]}が推奨されています';
                                  });
                                  await Future.delayed(Duration(seconds: 1));
                                  setState(()  {
                                    _correct =false;
                                  });
                                  await Future.delayed(Duration(seconds: 2));
                                  setState(()  {
                                    displaySpecialJudge=null;
                                  });
                                  print('正解\nまたは${specialJudgeResult[2]}%の確率で${action[specialJudgeResult[1]]}が推奨されています');
                                }
                                else if(specialJudgeResult[1]==2){
                                  setState(()  {
                                    _correct =true;
                                    displaySpecialJudge='正解\nまたは${100-specialJudgeResult[2]}%の確率で${action[specialJudgeResult[0]]}が推奨されています';
                                  });
                                  await Future.delayed(Duration(seconds: 1));
                                  setState(()  {
                                    _correct =false;
                                  });
                                  await Future.delayed(Duration(seconds: 2));
                                  setState(()  {
                                    displaySpecialJudge=null;
                                  });
                                  print('正解\nまたは${100-specialJudgeResult[2]}%の確率で${action[specialJudgeResult[0]]}が推奨されています');
                                }
                              }
                              else{
                                setState(()  {
                                  _wrong =true;
                                });
                                await Future.delayed(Duration(seconds: 1));
                                setState(()  {
                                  _wrong =false;
                                });
                                print('不正解');
                              }
                            }
                            else{
                              if (judgeResult == 2) {
                                setState(()  {
                                  _correct =true;
                                });
                                await Future.delayed(Duration(seconds: 1));
                                setState(()  {
                                  _correct =false;
                                });
                                print('正解');
                              }
                              else {
                                setState(()  {
                                  _wrong =true;
                                });
                                await Future.delayed(Duration(seconds: 1));
                                setState(()  {
                                  _wrong =false;
                                });
                                print('不正解');
                              }

                            }
                          },
                          child: Text('Call',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:Colors.white38,
                            onPrimary: Colors.red,
                            elevation: 16
                        ),
                        onPressed: () async {
                          if(specialJudgeResult[0]!=0){
                            if(specialJudgeResult[0]==3 ||specialJudgeResult[1]==3){
                              if(specialJudgeResult[0]==3){
                                setState(()  {
                                  _correct =true;
                                  displaySpecialJudge='正解\nまたは${specialJudgeResult[2]}%の確率で${action[specialJudgeResult[1]]}が推奨されています';
                                });
                                await Future.delayed(Duration(seconds: 1));
                                setState(()  {
                                  _correct =false;
                                });
                                await Future.delayed(Duration(seconds: 2));
                                setState(()  {
                                  displaySpecialJudge=null;
                                });
                                print('正解\nまたは${specialJudgeResult[2]}%の確率で${action[specialJudgeResult[1]]}が推奨されています');
                              }
                              else if(specialJudgeResult[1]==3){
                                setState(()  {
                                  _correct =true;
                                  displaySpecialJudge='正解\nまたは${100-specialJudgeResult[2]}%の確率で${action[specialJudgeResult[0]]}が推奨されています';
                                });
                                await Future.delayed(Duration(seconds: 1));
                                setState(()  {
                                  _correct =false;
                                });
                                await Future.delayed(Duration(seconds: 2));
                                setState(()  {
                                  displaySpecialJudge=null;
                                });
                                print('正解\nまたは${100-specialJudgeResult[2]}%の確率で${action[specialJudgeResult[0]]}が推奨されています');
                              }
                            }
                            else{
                              setState(()  {
                                _wrong =true;
                              });
                              await Future.delayed(Duration(seconds: 1));
                              setState(()  {
                                _wrong =false;
                              });
                              print('不正解');
                            }
                          }
                          else{
                            if (judgeResult == 3) {
                              setState(()  {
                                _correct =true;
                              });
                              await Future.delayed(Duration(seconds: 1));
                              setState(()  {
                                _correct =false;
                              });
                              print('正解');
                            }
                            else {
                              setState(()  {
                                _wrong =true;
                              });
                              await Future.delayed(Duration(seconds: 1));
                              setState(()  {
                                _wrong =false;
                              });
                              print('不正解');
                            }
                          }
                        },
                        child: Text('Raise',
                          style:TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 35,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          /*
                   * トランプを並べる
                   */
                          SizedBox(
                            width: 160,
                            height: 160,
                            child: FlipCard(
                              key: cardKey1,
                              front: Image.asset("assets/cards/${suit[suit1Number]}/$card1Number.png"),
                              back: Image.asset("assets/cards/${suit[suit1Number]}/$card1Number.png"),
                              direction: FlipDirection.HORIZONTAL,
                              flipOnTouch: false,
                              speed: 300,
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            height: 160,
                            child: FlipCard(
                              key: cardKey2,
                              front: Image.asset("assets/cards/${suit[suit2Number]}/$card2Number.png"),
                              back: Image.asset("assets/cards/${suit[suit2Number]}/$card2Number.png"),
                              direction: FlipDirection.HORIZONTAL,
                              flipOnTouch: false,
                              speed: 300,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white38,
                          onPrimary: Colors.black87,
                          elevation: 16
                      ),
                      onPressed: ()  {
                        setState(() {
                        });
                        card1Number=rand1.nextInt(13)+1;
                        card2Number=rand2.nextInt(13)+1;
                        positionNumber=rand3.nextInt(5)+1;
                        openRaiserNumber=rand6.nextInt(5);
                        suit1Number=rand4.nextInt(4);
                        suit2Number=rand5.nextInt(4);
                        cardKey1.currentState.toggleCard();
                        cardKey2.currentState.toggleCard();

                        do {
                          positionNumber=rand3.nextInt(5)+1;
                        } while(positionNumber<=openRaiserNumber);

                        if (card1Number==card2Number && suit1Number==suit2Number){
                          do {
                            card2Number=rand2.nextInt(13)+1;
                            suit2Number=rand5.nextInt(4);
                          } while(card1Number==card2Number && suit1Number==suit2Number);
                          print('同じになった');
                        }
                      },
                      child:Text('次へ',
                        style: TextStyle(
                            fontSize: 22
                        ),
                      )
                  ),
                  SizedBox(height: 30,),
                  (specialJudgeResult!=[0] && displaySpecialJudge!=null) ?
                  Text(displaySpecialJudge,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                    ),):
                  Container(),
                ],
              ),
              Center(
                  child: AnimatedContainer(
                    child: (_correct==true) ?
                    Text('⭕️',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ):Container(),
                    duration: Duration(milliseconds: 500),
                  )
              ),
              Center(
                  child: AnimatedContainer(
                    width: 200,
                    height: 200,
                    child: (_wrong==true) ?
                    Text(' ×️',
                      style: TextStyle(
                        fontSize: 180,
                      ),
                    ):Container(),
                    duration: Duration(milliseconds: 500),
                  )
              ),
            ]
        )
    );
  }
}





