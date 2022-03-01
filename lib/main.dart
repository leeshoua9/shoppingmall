import 'package:flutter/material.dart';
import 'package:flutter_application_1/states/authen.dart';
import 'package:flutter_application_1/states/buyer_service.dart';
import 'package:flutter_application_1/states/create_account.dart';
import 'package:flutter_application_1/states/ridder_service.dart';
import 'package:flutter_application_1/states/saler_service.dart';
import 'package:flutter_application_1/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  '/buyerService': (BuildContext context) => BuyerService(),
  '/salerService': (BuildContext context) => SalerServcie(),
  '/riderService': (BuildContext context) => RidderService(),
};
String? initlRoute;

void main() {
  initlRoute = MyConstant.routeAuthen;
  runApp(MyAdd());
}

class MyAdd extends StatelessWidget {
  const MyAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlRoute,
    );
  }
}
