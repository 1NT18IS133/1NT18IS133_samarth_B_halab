import 'package:flutter/material.dart';
import 'package:quiz/question.dart'; // add the question class

class Questions {
  List<Question> questionBank = [
    // create a list of Questions using default constructor of Question()
    Question(
        questionText: "Question1", answer: true), // set the Question and Answer
    Question(questionText: "Question2", answer: true),
    Question(questionText: "Question3", answer: false),
    Question(questionText: "Question4", answer: true),
    Question(questionText: "Question5", answer: false),
    Question(questionText: "Question6", answer: false),
    Question(questionText: "Question7", answer: false),
  ];
}

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: QuizPage(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
          Center(
            child: Text(
              checkquestionNumber(questionNumber)
                  ? questions.questionBank[questionNumber].questionText.toString()
                  : " End",
              style: const TextStyle(fontSize: 40.0),
            ),
          ),
          if (checkquestionNumber(questionNumber)) SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                print('True is pressed');
                if (questionNumber == questions.questionBank.length) {
                  // check the boundof the list
                  print("End of questions");
                } else {
// check the user answer against the answer in the list
                  udpateCurrentScore(true, questionNumber);
// increment the Question Number
                  updateQuestionNumber();
                }
              });
            },
            child: Text('True'),
          ),
          if (checkquestionNumber(questionNumber)) SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                print('False is pressed');
                if (questionNumber == questions.questionBank.length) {
                  // check the boundof the list
                  print("End of questions");
                } else {
// check the user answer against the answer in the list
                  udpateCurrentScore(false, questionNumber);
// increment the Question Number
                  updateQuestionNumber();
                }
              });
            },
            child: Text('False'),
          ),
          SizedBox(
            height: 100.0,
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                "Current Score is:",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                '${currentScore}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ])); // Build the Widget Tree here
  }

  int questionNumber = 0; // stores the questionNumber, default = first
  int currentScore = 0; // final score initialized to 0
  Questions questions = Questions(); // Create an object of the Question Class

  void updateQuestionNumber() {
    setState(() {
      questionNumber = questionNumber + 1; // Increments the Question Number
      print('$questionNumber');
    });
  }

  void udpateCurrentScore(bool choice, int question_number) {
// based on the choice (T/F button) score will be updated
    if (questions.questionBank.length == question_number) {
      print("End of questions");
    } else {
// checks the current user input against the list answer, if true increments thecount
      if (questions.questionBank[question_number].answer == choice) {
        setState(() {
          currentScore++;
        });
      }
    }
  }

// function to ensure that the question number to be not crossing the boundary of the list
  bool checkquestionNumber(int questionNumber) {
    return questionNumber < questions.questionBank.length ? true : false;
  }
}