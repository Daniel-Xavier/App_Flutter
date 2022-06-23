import 'package:flutter/widgets.dart';

class Feeling {
  String _feeling;

  Feeling({String feeling}) {
    this._feeling = feeling;
  }

  String get feeling => _feeling;
  set feeling(String feeling) => _feeling = feeling;

  Feeling.fromJson(Map<String, dynamic> json) {
    _feeling = json['feeling'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feeling'] = this._feeling;
    return data;
  }
}

class Feeling_details {
  String _feeling;
  List _action_units;
  String _model_used;
  double _accuracy;
  int _avg_predict_time;

  Feeling_details(
      {String feeling,
      List action_units,
      String model_used,
      double accuracy,
      int avg_predict_time}) {
    this._feeling = feeling;
    this._action_units = action_units;
    this._model_used = model_used;
    this._accuracy = accuracy;
    this._avg_predict_time = avg_predict_time;
  }

  String get feeling => _feeling;
  set feeling(String feeling) => _feeling = feeling;

  List get action_units => _action_units;
  set action_units(List action_units) => _action_units = action_units;

  String get model_used => _model_used;
  set model_used(String model_used) => _model_used = model_used;

  double get accuracy => _accuracy;
  set accuracy(double accuracy) => _accuracy = accuracy;
  int get avg_predict_time => _avg_predict_time;
  set avg_predict_time(int avg_predict_time) =>
      _avg_predict_time = avg_predict_time;

  Feeling_details.fromJson(Map<String, dynamic> json) {
    _feeling = json['feeling'];
    _action_units = json['action_units'];
    _model_used = json['model_used'];
    _accuracy = json['accuracy'];
    _avg_predict_time = json['avg_predict_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feeling'] = this._feeling;
    data['action_units'] = this._action_units;
    data['model_used'] = this._model_used;
    data['accuracy'] = this._accuracy;
    data['avg_predict_time'] = this._avg_predict_time;
    return data;
  }
}

class Models {
  List _models;

  Models({List models}) {
    this._models = models;
  }

  List get models => _models;
  set models(List models) => _models = models;

  Models.fromJson(Map<String, dynamic> json) {
    _models = json['models'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['models'] = this._models;

    return data;
  }
}

class Assists {
  int _healingDone;

  Assists({int healingDone}) {
    this._healingDone = healingDone;
  }

  int get healingDone => _healingDone;
  set healingDone(int healingDone) => _healingDone = healingDone;

  Assists.fromJson(Map<String, dynamic> json) {
    _healingDone = json['healingDone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['healingDone'] = this._healingDone;
    return data;
  }
}

class Best {
  int _allDamageDoneMostInGame;
  int _barrierDamageDoneMostInGame;
  int _eliminationsMostInGame;
  int _healingDoneMostInGame;
  int _heroDamageDoneMostInGame;
  int _meleeFinalBlowsMostInGame;

  Best(
      {int allDamageDoneMostInGame,
      int barrierDamageDoneMostInGame,
      int eliminationsMostInGame,
      int healingDoneMostInGame,
      int heroDamageDoneMostInGame,
      int meleeFinalBlowsMostInGame}) {
    this._allDamageDoneMostInGame = allDamageDoneMostInGame;
    this._barrierDamageDoneMostInGame = barrierDamageDoneMostInGame;
    this._eliminationsMostInGame = eliminationsMostInGame;
    this._healingDoneMostInGame = healingDoneMostInGame;
    this._heroDamageDoneMostInGame = heroDamageDoneMostInGame;
    this._meleeFinalBlowsMostInGame = meleeFinalBlowsMostInGame;
  }

  int get allDamageDoneMostInGame => _allDamageDoneMostInGame;
  set allDamageDoneMostInGame(int allDamageDoneMostInGame) =>
      _allDamageDoneMostInGame = allDamageDoneMostInGame;
  int get barrierDamageDoneMostInGame => _barrierDamageDoneMostInGame;
  set barrierDamageDoneMostInGame(int barrierDamageDoneMostInGame) =>
      _barrierDamageDoneMostInGame = barrierDamageDoneMostInGame;
  int get eliminationsMostInGame => _eliminationsMostInGame;
  set eliminationsMostInGame(int eliminationsMostInGame) =>
      _eliminationsMostInGame = eliminationsMostInGame;
  int get healingDoneMostInGame => _healingDoneMostInGame;
  set healingDoneMostInGame(int healingDoneMostInGame) =>
      _healingDoneMostInGame = healingDoneMostInGame;
  int get heroDamageDoneMostInGame => _heroDamageDoneMostInGame;
  set heroDamageDoneMostInGame(int heroDamageDoneMostInGame) =>
      _heroDamageDoneMostInGame = heroDamageDoneMostInGame;
  int get meleeFinalBlowsMostInGame => _meleeFinalBlowsMostInGame;
  set meleeFinalBlowsMostInGame(int meleeFinalBlowsMostInGame) =>
      _meleeFinalBlowsMostInGame = meleeFinalBlowsMostInGame;

  Best.fromJson(Map<String, dynamic> json) {
    _allDamageDoneMostInGame = json['allDamageDoneMostInGame'];
    _barrierDamageDoneMostInGame = json['barrierDamageDoneMostInGame'];
    _eliminationsMostInGame = json['eliminationsMostInGame'];
    _healingDoneMostInGame = json['healingDoneMostInGame'];
    _heroDamageDoneMostInGame = json['heroDamageDoneMostInGame'];
    _meleeFinalBlowsMostInGame = json['meleeFinalBlowsMostInGame'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['allDamageDoneMostInGame'] = this._allDamageDoneMostInGame;
    data['barrierDamageDoneMostInGame'] = this._barrierDamageDoneMostInGame;
    data['eliminationsMostInGame'] = this._eliminationsMostInGame;
    data['healingDoneMostInGame'] = this._healingDoneMostInGame;
    data['heroDamageDoneMostInGame'] = this._heroDamageDoneMostInGame;
    data['meleeFinalBlowsMostInGame'] = this._meleeFinalBlowsMostInGame;
    return data;
  }
}

class Combat {
  int _barrierDamageDone;
  int _damageDone;
  int _deaths;
  int _eliminations;
  int _heroDamageDone;
  int _meleeFinalBlows;

  Combat(
      {int barrierDamageDone,
      int damageDone,
      int deaths,
      int eliminations,
      int heroDamageDone,
      int meleeFinalBlows}) {
    this._barrierDamageDone = barrierDamageDone;
    this._damageDone = damageDone;
    this._deaths = deaths;
    this._eliminations = eliminations;
    this._heroDamageDone = heroDamageDone;
    this._meleeFinalBlows = _meleeFinalBlows;
  }

  int get barrierDamageDone => _barrierDamageDone;
  set barrierDamageDone(int barrierDamageDone) =>
      _barrierDamageDone = barrierDamageDone;
  int get damageDone => _damageDone;
  set damageDone(int damageDone) => _damageDone = damageDone;
  int get deaths => _deaths;
  set deaths(int deaths) => _deaths = deaths;
  int get eliminations => _eliminations;
  set eliminations(int eliminations) => _eliminations = eliminations;
  int get heroDamageDone => _heroDamageDone;
  set heroDamageDone(int heroDamageDone) => _heroDamageDone = heroDamageDone;
  int get meleeFinalBlows => _meleeFinalBlows;
  set meleeFinalBlows(int meleeFinalBlows) =>
      _meleeFinalBlows = meleeFinalBlows;

  Combat.fromJson(Map<String, dynamic> json) {
    _barrierDamageDone = json['barrierDamageDone'];
    _damageDone = json['damageDone'];
    _deaths = json['deaths'];
    _eliminations = json['eliminations'];
    _heroDamageDone = json['heroDamageDone'];
    _meleeFinalBlows = json['meleeFinalBlows'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['barrierDamageDone'] = this._barrierDamageDone;
    data['damageDone'] = this._damageDone;
    data['deaths'] = this._deaths;
    data['eliminations'] = this._eliminations;
    data['heroDamageDone'] = this._heroDamageDone;
    data['meleeFinalBlows'] = this._meleeFinalBlows;
    return data;
  }
}

class Game {
  int _gamesPlayed;
  int _gamesWon;
  String _timePlayed;

  Game({int gamesPlayed, int gamesWon, String timePlayed}) {
    this._gamesPlayed = gamesPlayed;
    this._gamesWon = gamesWon;
    this._timePlayed = timePlayed;
  }

  int get gamesPlayed => _gamesPlayed;
  set gamesPlayed(int gamesPlayed) => _gamesPlayed = gamesPlayed;
  int get gamesWon => _gamesWon;
  set gamesWon(int gamesWon) => _gamesWon = gamesWon;
  String get timePlayed => _timePlayed;
  set timePlayed(String timePlayed) => _timePlayed = timePlayed;

  Game.fromJson(Map<String, dynamic> json) {
    _gamesPlayed = json['gamesPlayed'];
    _gamesWon = json['gamesWon'];
    _timePlayed = json['timePlayed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gamesPlayed'] = this._gamesPlayed;
    data['gamesWon'] = this._gamesWon;
    data['timePlayed'] = this._timePlayed;
    return data;
  }
}

class Games {
  int _played;
  int _won;

  Games({int played, int won}) {
    this._played = played;
    this._won = won;
  }

  int get played => _played;
  set played(int played) => _played = played;
  int get won => _won;
  set won(int won) => _won = won;

  Games.fromJson(Map<String, dynamic> json) {
    _played = json['played'];
    _won = json['won'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['played'] = this._played;
    data['won'] = this._won;
    return data;
  }
}

class Ratings {
  int _level;
  String _role;
  String _rankIcon;

  Ratings({int level, String role, String rankIcon}) {
    this._level = level;
    this._role = role;
    this._rankIcon = rankIcon;
  }

  int get level => _level;
  set level(int level) => _level = level;
  String get role => _role;
  set role(String role) => _role = role;
  String get rankIcon => _rankIcon;
  set rankIcon(String rankIcon) => _rankIcon = rankIcon;

  Ratings.fromJson(Map<String, dynamic> json) {
    _level = json['level'];
    _role = json['role'];
    _rankIcon = json['rankIcon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['level'] = this._level;
    data['role'] = this._role;
    data['rankIcon'] = this._rankIcon;
    return data;
  }
}
