import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: this.child,
        decoration: _createCardShape(),
      )
    );
  }

  BoxDecoration _createCardShape () => BoxDecoration(
    color: const Color.fromARGB(255, 65, 43, 255),
    borderRadius: BorderRadius.circular(2),
    boxShadow: const [
      BoxShadow(
        color: Color.fromARGB(255, 0, 0, 0),
        blurRadius: 15,
        offset: Offset(0, 5)
      )
    ]
  )
}
