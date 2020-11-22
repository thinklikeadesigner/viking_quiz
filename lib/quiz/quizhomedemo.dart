// import 'package:flutter/material.dart';
// import 'package:flutter_chat_bubble/bubble_type.dart';
// import 'package:flutter_chat_bubble/chat_bubble.dart';
// import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
// import 'package:navigationapp/models/viking_quiz_model.dart';
// import 'package:navigationapp/widgets/chat_bubbles.dart';

// class QuizHomeView extends StatefulWidget {
//   QuizHomeView({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<QuizHomeView> {
//   final VikingQuizModel model = VikingQuizModel();

//   List<Icon> scoreKeeper = [];

//   void checkAnswer(bool userPickedAnswer) {
//     bool correctAnswer = model.getCorrectAnswer();

//     setState(() {
//       if (model.isFinished() == true) {
//         /*Alert(
//           context: context,
//           title: 'Finished!',
//           desc: 'You\'ve reached the end of the quiz.',
//         ).show();*/

//         model.reset();

//         scoreKeeper = [];
//       } else {
//         if (userPickedAnswer == correctAnswer) {
//           scoreKeeper.add(Icon(
//             Icons.check,
//             color: Colors.green,
//           ));
//         } else {
//           scoreKeeper.add(Icon(
//             Icons.close,
//             color: Colors.red,
//           ));
//         }
//         model.nextQuestion();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("model: ");
//     print(model.getQuestionText());
//     return Scaffold(
//       backgroundColor: Colors.grey.shade900,
//       appBar: AppBar(
//         title: Text(widget.title),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Card(
//               color: Colors.blueGrey,
//               child: Row(
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.fromLTRB(20, 48, 20, 20),
//                     child: Image(image: AssetImage("dash.png"), height: 120),
//                   ),
//                   pickActivityBubble(
//                       ChatBubbleClipper2(type: BubbleType.receiverBubble),
//                       context),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 5,
//               child: Padding(
//                 padding: EdgeInsets.all(10.0),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(15.0),
//                 child: FlatButton(
//                   color: Colors.deepPurpleAccent,
//                   child: Text(
//                     'True',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20.0,
//                     ),
//                   ),
//                   onPressed: () {
//                     //The user picked true.
//                     checkAnswer(true);
//                   },
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(15.0),
//                 child: FlatButton(
//                   color: Colors.deepPurpleAccent,
//                   child: Text(
//                     'False',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                   onPressed: () {
//                     //The user picked false.
//                     checkAnswer(false);
//                   },
//                 ),
//               ),
//             ),
//             Row(
//               children: scoreKeeper,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
