import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'authentication.service.dart';
import 'database.notifier.dart';

class AppProviders {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthenticationNotifier()),
    ChangeNotifierProvider(create: (_) => DatabaseNotifier())
  ];
}
