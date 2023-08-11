
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
var logger = Logger();


class DateFormats {
  final String? yymmdd;
  final String? ddmmyy;

  const DateFormats({
    this.ddmmyy = "dd-mm-yy",
    this.yymmdd = "yy-mm-dd",
  });

}

DateFormats formats = const DateFormats();
enum DateFormatComponent {
  yymmdd,
  ddmmyy,
}

class Convert {
  /// Convert timestamp to date string.
  /// return date string.
  static convertTimestamp(int timestamp, String? separationDate, DateFormatComponent dateFormats ) {
    DateTime tsdate = DateTime.fromMillisecondsSinceEpoch(timestamp);
    final dateFormat = getFormattedDate(formats,dateFormats);
    switch (dateFormat) {
      case "yy-mm-dd":
        return "${tsdate.year}$separationDate${tsdate.month}$separationDate${tsdate.day}";
      case "dd-mm-yy":
        return "${tsdate.day}$separationDate${tsdate.month}$separationDate${tsdate.year}";
      default:
        break;
    }
  }
  static getFormattedDate(DateFormats formats, DateFormatComponent component) {
    switch (component) {
      case DateFormatComponent.yymmdd:
        return formats.yymmdd ?? "Invalid Format";
      case DateFormatComponent.ddmmyy:
        return formats.ddmmyy ?? "Invalid Format";
    }
  }

  static DateTime convertToDateUtc(String formattedDate) {
    DateTime utcDateTime = DateFormat('dd-MM-yyyy').parse(formattedDate,true);
    // var utcDateTime = dateTime.toUtc();
    logger.d("utcDateTime:   $utcDateTime");
    return utcDateTime;
  }


  /// Get current date by timestamp. 
  ///  Return is int
  static getCurrentDateTimestamp (){
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    return timestamp;
  }
}