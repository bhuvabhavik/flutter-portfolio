import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/globals/app_assets.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({super.key});

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation> with TickerProviderStateMixin{

  late final AnimationController _controller;
  late Animation<Offset> _animation;


  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 3))
    ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0,0.1),end: const Offset(0,0.2)).animate(_controller);
  }


  @override
  void dispose() {
    super.dispose();
_controller.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation,
    child:Image.asset(AppAssets.profile1,width: 360,height: 360,),);
  }
}
