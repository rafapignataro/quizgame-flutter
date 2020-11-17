import 'package:true_false_quiz/models/question_model.dart';

List<QuestionModel> getQuestions(){

  List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion("A taxa de mortalidade do novo Coronavírus é maior do que a de outras manifestações do vírus?");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion("Correspondências vindas da China correm o risco de transportar o vírus para outros locais?");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //3
  questionModel.setQuestion("Atualmente, não há vacinas disponíveis contra a COVID-19. Há várias em fase de testes.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //4
  questionModel.setQuestion("Os sintomas mais comuns da COVID-19 são febre, cansaço e tosse seca.");
  questionModel.setAnswer("True");
   questions.add(questionModel);

  questionModel = new QuestionModel();

  //5
  questionModel.setQuestion("Alguns pacientes podem apresentar dores, congestão nasal, dor de cabeça, conjuntivite, dor de garganta, diarreia, perda de paladar ou olfato, erupção cutânea na pele ou descoloração dos dedos das mãos ou dos pés. Esses sintomas geralmente são leves e começam gradualmente.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //6
  questionModel.setQuestion("Foram confirmados no mundo mais de 50MI casos de COVID-19.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //7
  questionModel.setQuestion("O corona virus tem este nome por causa da riqueza de sua familia.");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //8
  questionModel.setQuestion("A região africana é a que têm menos casos de mortes, em comparação com as regiões da américa e europa.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = new QuestionModel();


  return questions;

}