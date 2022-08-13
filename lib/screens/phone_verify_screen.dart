import 'package:flutter/material.dart';
import 'package:punk_panda_clone/components/size_widget.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            SizeWidget(),
            SizeWidget(),
            SizeWidget(),
            SizeWidget(),
            SizeWidget(),
            SizeWidget(),
            SizeWidget(),
            SizeWidget(),
          ],
        ),
      ),
    );
  }
}
