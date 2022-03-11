import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

abstract class LoggingService {
  void debug(String message, {String? prefix});

  void info(String message, {String? prefix});

  void warn(String message, {String? prefix});

  void error(String message, {String? prefix});
}

@LazySingleton(as: LoggingService)
class LoggingServiceImpl implements LoggingService {
  final Logger log;

  LoggingServiceImpl(this.log);

  @override
  void debug(String message, {String? prefix}) {
    log.d(message);
  }

  @override
  void info(String message, {String? prefix}) {
    log.i(message);
  }

  @override
  void warn(String message, {String? prefix}) {
    log.w(message);
  }

  @override
  void error(String message, {String? prefix}) {
    log.e(message);
  }
}
