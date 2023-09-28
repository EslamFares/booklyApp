import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void getItSetup() {
  // bdl m3od astd3eha kol mkan whyai nfsha
  //  single toon mrh 1 wastad3iha fy elmkan elly 3awzoh ..... kda lw 3dlt feha elta3dil hna bs
  //.................
  // ApiService single toon 34an lw 3dlt feh yba mrh 1 lw esta5dmth fy mkn tany
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  // da b8a kol cubit bdl maktbh fy kol wah7l
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
