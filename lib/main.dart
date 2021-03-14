import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() => runApp(MaterialApp(home: FirstRoute()));

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Router'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context,//Navigator.pushが画面に遷移するためのメソッド。一つ目のcontextはひとまずおまじないと覚えておく。
                  MaterialPageRoute(//ここからが画面の遷移先になる。このMaterialPageRouteは画面遷移の方法を指定するWidgetで、Android風のアニメーションで画面を切り替えてくれる。
                      builder: (context) => SecondRoute()
                ));
              },
              child: Text('Push Here',
                style: TextStyle(fontSize: 20),
            )),
          ]
        )
      )
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Push Here',
                style: TextStyle(fontSize: 20),
            )),
          ]
        )
      )
    );
  }
}