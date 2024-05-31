// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mentor_match/auth/bloc/auth_bloc.dart' as _i9;
import 'package:mentor_match/auth/infrastructure/auth_repo.dart' as _i8;
import 'package:mentor_match/core/file_picker/file_picker_service.dart' as _i4;
import 'package:mentor_match/core/local_storage/local_storage_service.dart'
    as _i5;
import 'package:mentor_match/core/local_storage/module.dart' as _i10;
import 'package:mentor_match/profile/mentor/bloc/mentor_profile_create_bloc.dart'
    as _i7;
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart'
    as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs(),
      preResolve: true,
    );
    gh.factory<_i4.FilePickerService>(() => _i4.FilePickerService());
    gh.factory<_i5.LocalStorageService>(() => _i5.LocalStorageService(
        sharedPreferences: gh<_i3.SharedPreferences>()));
    gh.factory<_i6.StudentProfileCreateBloc>(
        () => _i6.StudentProfileCreateBloc(gh<_i4.FilePickerService>()));
    gh.factory<_i7.MentorProfileCreateBloc>(
        () => _i7.MentorProfileCreateBloc(gh<_i4.FilePickerService>()));
    gh.factory<_i8.AuthRepo>(
        () => _i8.AuthRepo(service: gh<_i5.LocalStorageService>()));
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i8.AuthRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
