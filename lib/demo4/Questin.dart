class Question{
  String _text;
  bool _answer;
  static int _index = 0;
  Question({required String text,required bool answer}):_text = text,_answer = answer;
  get text=>_text;
  get answer=>_answer;
  static List<Question> questions = [
    Question(text: "题目一：范德萨发发", answer: true),
    Question(text: "题目二", answer: false),
    Question(text: "题目三", answer: true ),
    Question(text: "题目四", answer: true ),
  ];

  static void restart(){
    _index = 0;
  }

  static bool hasNext(){
    if(_index<questions.length-1){
      return true;
    }
    return false;
  }

  static next(){
    _index++;
  }

  static getQuestionText(){
    return questions[_index].text;
  }
  static getQuestionAnswer(){
    return questions[_index].answer;
  }
}