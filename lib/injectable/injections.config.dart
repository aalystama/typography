// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../app/orders/data/blocs/orders_cubit.dart' as _i7;
import '../app/orders/data/models/order_model.dart' as _i4;
import '../app/orders/data/sources/i_orders_datasource.dart' as _i5;
import '../app/orders/data/sources/orders_datasource.dart' as _i6;
import 'injectable_modules.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.factory<_i3.Box<_i4.Order>>(() => injectableModules.ordersBox);
  gh.lazySingleton<_i5.IOrdersDatasource>(
      () => _i6.OrdersDatasource(box: get<_i3.Box<_i4.Order>>()));
  gh.lazySingleton<_i7.OrdersCubit>(
      () => _i7.OrdersCubit(ordersDatasource: get<_i5.IOrdersDatasource>()));
  return get;
}

class _$InjectableModules extends _i8.InjectableModules {}
