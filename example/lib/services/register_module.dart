// ignore_for_file: public_member_api_docs

import 'package:example/injector/Service.dart';
import 'package:example/injector/injector.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  List<String> get strings => ["One", "Tow"];

  @prod
  @platformMobile
  @Injectable(as: Repo)
  RepoImpl get repo;
}

abstract class Repo {}

class RepoImpl extends Repo {
  RepoImpl(Service service);
}
