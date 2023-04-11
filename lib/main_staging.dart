import 'package:flutter/material.dart';
import 'core/utils/date_time_util.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'di.dart';
import 'flavors.dart';
import 'my_app.dart';

void main() async {
  F.appFlavor = Flavor.staging;

  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await initializeDateFormatting(DateTimeUtil.locale, null);

  runApp(const MyApp());
}
