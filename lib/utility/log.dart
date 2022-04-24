import 'package:logging/logging.dart';

class Log{
  static const String _name = 'Logger';
  static late Logger _instance;

  static void init(){
    _instance = Logger(_name);
  }

  static void info(message, [Object? error, StackTrace? stackTrace]){
    _instance.info(message, error, stackTrace);
  }

  static void warning(message, [Object? error, StackTrace? stackTrace]){
    _instance.warning(message, error, stackTrace);
  }

  static void severe(message, [Object? error, StackTrace? stackTrace]){
    _instance.severe(message, error, stackTrace);
  }

}