import 'package:intl/intl.dart';

class DateTimeUtil {
  static const second = 1000;
  static const fifteenSeconds = 15 * second;

  static const formatFull = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
  static const formatSimple = "dd MMM yyyy";
  static const formatDayFull = "EEEE, dd MMMM yyyy";
  static const formatDayFullSimpler = "EEE, dd MMM yyyy";
  static const formatDateOnly = "dd MMMM yyyy";
  static const formatTimeOnly = "HH:mm";
  static const formatDateMonthOnly = "dd MMM";

  static const locale = 'id_ID';

  static String translateDateTime(
    String dateTime, {
    String toFormat = formatSimple,
    bool toLocalTimeZone = true,
  }) {
    try {
      var dt = DateTime.parse(dateTime);
      if (toLocalTimeZone) {
        dt = dt.toLocal();
      }

      return DateFormat(toFormat, locale).format(dt);
    } on FormatException catch (_) {
      return dateTime;
    }
  }

  static String translateRangeDateTime(
    String startTime,
    String endTime, {
    String toFormatStart = formatSimple,
    String toFormatEnd = formatSimple,
    bool toLocalTimeZone = true,
  }) {
    try {
      var dtStart = DateTime.parse(startTime);
      var dtEnd = DateTime.parse(endTime);

      if (toLocalTimeZone) {
        dtStart = dtStart.toLocal();
        dtEnd = dtEnd.toLocal();
      }

      var start = DateFormat(toFormatStart, locale).format(dtStart);
      var end = DateFormat(toFormatEnd, locale).format(dtEnd);

      return '$start - $end';
    } on FormatException catch (_) {
      return '$startTime - $endTime';
    }
  }

  static String formatTime(
    DateTime dateTime, {
    String toFormat = formatSimple,
    bool toLocalTimeZone = true,
  }) {
    try {
      return DateFormat(toFormat, locale).format(dateTime);
    } on FormatException catch (_) {
      return '';
    }
  }

  static String timeZoneName(String dateTime) {
    switch (DateTime.now().timeZoneName) {
      case '+07':
        return 'WIB';
      case '+08':
        return 'WITA';
      case '+09':
        return 'WIT';
      default:
        return DateTime.now().timeZoneName;
    }
  }
}
