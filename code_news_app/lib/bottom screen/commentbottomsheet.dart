import 'package:flutter/material.dart';

commentbottomsheet(BuildContext context) {
  return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Align(
                //   alignment: Alignment.topRight,
                //   child: IconButton(
                //     onPressed: () => Navigator.pop(context),
                //     icon: const Icon(
                //       Icons.cancel,
                //     ),
                //   ),
                // ),
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset('asset/reaction bottomsheet.png'))
              ],
            ),
          ),
        );
      });
}
