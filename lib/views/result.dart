import 'package:flutter/material.dart';
import 'package:true_false_quiz/views/homepage.dart';
import 'package:true_false_quiz/views/play_quiz.dart';

// ignore: must_be_immutable
class Result extends StatefulWidget {
  int score, totalQuestion, correct, incorrect, notattempted;
  Result({this.score, this.totalQuestion,this.correct,this.incorrect,this.notattempted});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var score = 0;
  var totalQuestion = 0;

  String mensagem = "";

  @override
  void initState() {
    super.initState();
  
  var porcento = widget.score/(widget.totalQuestion*20);
  
    if(porcento >= 90) {
      mensagem = "Muito bom";
    }else if (porcento > 80 && porcento < 90) {
      mensagem = "Bom trabalho";
    }else if (porcento > 70 && porcento < 80) {
      mensagem = "Valeu o esforco";
    }else { mensagem = "Precisa melhorar";}
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
                Text("$mensagem", style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 14,),
                Text("Voce pontuou ${widget.score} de ${widget.totalQuestion*20}"),
                SizedBox(height: 8),
                Text("${widget.correct} certas, ${widget.incorrect} erradas"),
                SizedBox(height: 16,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => PlayQuiz()
                    )
                    );
                  },
                  child:Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
                    child: Text("Tente novamente",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                      ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.blue
                    ),
                  )
                ),
                SizedBox(height: 16,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => HomePage()
                    )
                    );
                  },
                  child:Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
                    child: Text("Voltar ao inicio", style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.red, width: 2)
                    ),
                  ),
                )
          ],
      ),
      ),
    );
  }
} 