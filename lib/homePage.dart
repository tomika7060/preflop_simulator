import 'package:flutter/material.dart';
import 'package:porker_expected_value/3bet/threeBetPage.dart';
import 'package:porker_expected_value/openRaise/openRangePage.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ホーム画面',
            style: TextStyle(
                fontWeight: FontWeight.w700
            ),),
        ),
        body: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white38,
                      onPrimary: Colors.green,
                      elevation: 16,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OpenRaisePage()),
                      );
                    },
                    child: Text('オープンレイズ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white38,
                      onPrimary: Colors.green,
                      elevation: 16,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThreeBetPage()),
                      );
                    },
                    child: Text('3Bet',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    )
                ),
              ),
              /*~
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white38,
                      onPrimary: Colors.green,
                      elevation: 16,
                    ),
                    onPressed: () {

                    },
                    child: Text('4Bet',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )
                ),~*/
              SizedBox(
                height: 30,
              )
            ],
          ),

        )
    );
  }


}