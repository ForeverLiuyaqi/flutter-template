import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/di/kiwi_container.dart';
import 'package:flutter_template/util/env/flavor_config.dart';

Future<void> main() async {
  const values = FlavorValues(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    logNetworkInfo: false,
  );
  FlavorConfig(
    flavor: Flavor.PRODUCTION,
    name: 'PROD',
    color: Colors.transparent,
    values: values,
  );
  await KiwiContainer.init();
  runApp(MyApp());
}
