import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
var logger = Logger();


class TimeFormat {
  final String? yymmdd;
  final String? ddmmyy;

  const TimeFormat({
    this.ddmmyy = "dd-mm-yy",
    this.yymmdd = "yy-mm-dd",
  });
  
  static convertTimes(int timestamp ) {
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    var d12 = DateFormat('MM/dd/yyyy, hh:mm a').format(date); // 12/31/2000, 10:00 PM
    // logger.d("d12:   $d12");

    var d24 = DateFormat('dd-MM-yyyy').format(date);
    logger.d("d24:   $d24");
    return d24;
  }

  static DateTime convertToUtc(String formattedDate) {
    logger.d("111111:   $formattedDate");

    DateTime dateTime = DateFormat('dd-MM-yyyy').parse(formattedDate);
    logger.d("convertToUtc utcDateTime:   $dateTime");
    DateTime utcDateTime = dateTime.toUtc();
    logger.d("utcDateTime:   $utcDateTime");
    return utcDateTime;
  }


  static String formatTimestamp(int timestamp) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    String formattedTime = DateFormat.yMMMd().add_Hms().format(dateTime);
    logger.d("formattedTime:   $formattedTime");

    return formattedTime;
  }
  

}


