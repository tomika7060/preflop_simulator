import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:porker_expected_value/homePage.dart';
import 'package:porker_expected_value/services/admob.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey,
        accentColor: Colors.cyan[600],
      ),
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:  AdmobBanner(
          adUnitId: AdMobServiceBottom().getBannerAdUnitId(),
          adSize: AdmobBannerSize(
            width: MediaQuery.of(context).size.width.toInt(),
            height: AdMobServiceBottom().getHeight(context).toInt(),
            name: 'SMART_BANNER',
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              AdmobBanner(
                adUnitId: AdMobServiceTop().getBannerAdUnitId(),
                adSize: AdmobBannerSize(
                  width: MediaQuery.of(context).size.width.toInt(),
                  height: AdMobServiceTop().getHeight(context).toInt(),
                  name: 'SMART_BANNER',
                ),
              ),

              Expanded(
                child: Navigator(
                  onGenerateRoute: (settings){
                    Widget page = HomePage();
                    return MaterialPageRoute(builder: (_) => page);
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}





