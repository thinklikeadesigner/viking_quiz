import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
import 'package:navigationapp/widgets/chat_bubbles.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text('Flutter Quiz'),
        backgroundColor: Color(0xff548FF7),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: Color(0xff252525),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 48, 20, 20),
                    child: Image(image: AssetImage("dash.png"), height: 120),
                  ),
                  pickActivityBubble(
                      ChatBubbleClipper2(type: BubbleType.receiverBubble),
                      context,
                      'Welcome to the Flutter Quiz! Tap on the button below to test your wits!'),
                ]),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: FlatButton(
                    color: Color(0xff548FF7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: Text(
                      'Let\'s go!',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/quizhomeview');
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // FlatButton(
              //   color: Color(0xff548FF7),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(25.0),
              //   ),
              //   onPressed: () {
              //     Navigator.of(context).pushNamed('/quizhomeview');
              //   },
              //   child: Text('hi'),
              // ),
            ]),
      ),
    );
  }
}
