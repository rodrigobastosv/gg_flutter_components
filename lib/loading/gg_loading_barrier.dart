import 'package:flutter/material.dart';
import 'package:gg_flutter_components/loading/gg_loading_double_bounce.dart';

class GGLoadingBarrier {
  GGLoadingBarrier.show(BuildContext context) {
    showGeneralDialog<dynamic>(
      context: context,
      barrierColor: Colors.black.withOpacity(0.75),
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 0),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return WillPopScope(
          onWillPop: () async => false,
          child: SafeArea(
            child: Builder(
              builder: (BuildContext context) {
                return Material(
                  color: Colors.transparent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const GGLoadingDoubleBounce(size: 48),
                        const SizedBox(height: 12),
                        Text(
                          'Carregando...',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  GGLoadingBarrier.hide(BuildContext context) {
    Navigator.pop(context);
  }
}