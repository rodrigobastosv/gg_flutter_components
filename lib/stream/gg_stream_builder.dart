import 'package:flutter/material.dart';

class GGStreamBuilder<T> extends StatelessWidget {
  GGStreamBuilder(
      {Key key,
        @required this.stream,
        @required this.mainWidget,
        @required this.loadingIndicator,
        @required this.errorIndicator})
      : assert(stream != null),
        assert(mainWidget != null),
        assert(loadingIndicator != null),
        assert(errorIndicator != null),
        super(key: key);

  final Stream stream;
  final Widget Function(dynamic snapshotData) mainWidget;
  final Widget loadingIndicator;
  final Widget errorIndicator;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      stream: stream,
      builder: (_, snapshot) {
        print(snapshot);
        switch (snapshot.connectionState) {
          case ConnectionState.done:
          case ConnectionState.active:
            return snapshot.hasError
                ? errorIndicator
                : mainWidget(snapshot.data);
          case ConnectionState.waiting:
            return loadingIndicator;
          default:
            return loadingIndicator;
        }
      },
    );
  }
}
