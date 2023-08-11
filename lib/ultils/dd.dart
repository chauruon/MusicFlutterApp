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

    // var d12 = DateFormat('MM/dd/yyyy, hh:mm a').format(date); // 12/31/2000, 10:00 PM
    // logger.d("d12:   $d12");

    var d24 = DateFormat('dd-MM-yyyy').format(date);
    // logger.d("d24:   $d24");
    return d24;
  }

  static DateTime convertToDateUtc(String formattedDate) {
    DateTime utcDateTime = DateFormat('dd-MM-yyyy').parse(formattedDate,true);
    // var utcDateTime = dateTime.toUtc();
    // logger.d("utcDateTime:   $utcDateTime");
    return utcDateTime;
  }


  static String formatTimestamp(int timestamp) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    String formattedTime = DateFormat.yMMMd().add_Hms().format(dateTime);
    // logger.d("formattedTime:   $formattedTime");

    return formattedTime;
  }
  


  
  DateTime convertLocalTimeToUtc(String localTime) {
    DateTime now = DateTime.now();
    DateTime localDateTime = DateFormat.Hm().parse(localTime);
    
    // Combine the local time's hours and minutes with the current date
    DateTime localDateTimeCombined = DateTime(
      now.year,
      now.month,
      now.day,
      localDateTime.hour,
      localDateTime.minute,
    );

    // Convert to UTC
    DateTime utcDateTime = localDateTimeCombined.toUtc();
    return utcDateTime;
  }

  String formatUtcTime(DateTime utcTime) {
    String formattedTime = DateFormat.Hm().format(utcTime);
    return formattedTime;
  }


}


