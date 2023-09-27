import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [_PurpleBox(), _HeaderIcon(), this.child],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: const Icon(
        Icons.account_circle,
        color: Colors.white,
        size: 150,
      ),
    ));
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _PurpleBackground(),
      child: Stack(
        children: [
          Positioned(
            child: _Bubble(),
            top: 90,
            left: 30,
          ),
          Positioned(
            child: _Bubble(),
            top: -40,
            left: -30,
          ),
          Positioned(
            child: _Bubble(),
            top: -50,
            left: -20,
          ),
          Positioned(
            child: _Bubble(),
            top: 120,
            left: 20,
          ),
        ],
      ),
    );
  }

  BoxDecoration _PurpleBackground() => BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xFFB500AF), Color.fromRGBO(90, 70, 178, 1)]));
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      color: Color.fromRGBO(255, 255, 255, 0.5),
    );
  }
}
