import 'package:flutter/material.dart';
import 'package:super_quiz/data/questions.dart';
import 'package:super_quiz/gradient_container.dart';
import 'package:super_quiz/questions_screen.dart';
import 'package:super_quiz/results_screen.dart';
import 'package:super_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  void restart() {
    selectedAnswers = [];
    setState(() {
      activeScreen = "start-screen";
    });
    
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    }

    if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, restart: restart,);
    }

    if (activeScreen == "questions-screen") {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(screenWidget),
      ),
    );
  }
}
