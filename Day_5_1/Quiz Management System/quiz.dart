
class Quiz {
  String? _quizID;
  String? _topic;
  String? _difficultyLevel;

  set quizID(String id) => _quizID = id;
  set topic(String t) => _topic = t;
  set difficultyLevel(String level) => _difficultyLevel = level;

  //String get quizID => _quizID!;
  //String get topic => _topic!;
  //String get difficultyLevel => _difficultyLevel!;

  Quiz(this._quizID, this._topic, this._difficultyLevel);

  String getQuizID() => _quizID!;
  String getTopic() => _topic!;
  String getDifficultyLevel() => _difficultyLevel!;
}