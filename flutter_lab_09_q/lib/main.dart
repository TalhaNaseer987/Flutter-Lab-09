import 'package:flutter/material.dart';
import 'apifetch.dart';

void main() {
  runApp(const mainfunction());
}
class mainfunction extends StatelessWidget {
  const mainfunction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return apifetch();
  }
}
