import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/di.config.dart';

@InjectableInit()
GetIt configureDependencies() => GetIt.instance.init();
