import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      apiServices: ApiServices(
        dio: Dio(),
      ),
    ),
  );
}
