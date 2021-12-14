import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injections.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);
