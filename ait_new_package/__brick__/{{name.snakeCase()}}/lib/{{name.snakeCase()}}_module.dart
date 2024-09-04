import 'package:common_dependency/common_dependency.dart';
import 'src/data/datasources/{{name.snakeCase()}}_remote_ds.dart';
import 'src/data/repositories/{{name.snakeCase()}}_repository_impl.dart';
import 'src/domain/repositories/_repositories.dart';

class {{name.pascalCase()}} {
    Future<void> call() async {
    // repository

    di.registerLazySingleton<{{name.pascalCase()}}Repository> (()=> {{name.pascalCase()}}RepositoryImpl(di()));
    di.registerLazySingleton<{{name.pascalCase()}}RemoteDs> (()=> {{name.pascalCase()}}RemoteDsImpl(di()));

      }
  }
