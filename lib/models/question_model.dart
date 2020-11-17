class QuestionModel{

  String pergunta;
  String resposta;

  QuestionModel({this.pergunta,this.resposta});

  void setQuestion(String getQuestion){
    pergunta = getQuestion;
  }

  void setAnswer(String getAnswer){
    resposta = getAnswer;
  }


  String getQuestion(){
    return pergunta;
  }

  String getAnswer(){
    return resposta;
  }

}