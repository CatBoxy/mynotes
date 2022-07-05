import 'package:flutter/material.dart' show BuildContext, ModalRoute;

// generic way for extractic arguments from the BuildContext
extension GetArgument on BuildContext {
  // optionally return a value of any type
  T? getArgument<T>() {
    final modalRoute = ModalRoute.of(this);
    if (modalRoute != null) {
      final args = modalRoute.settings.arguments;
      if (args != null && args is T) {
        return args as T;
      }
    }
    return null;
  }
}
