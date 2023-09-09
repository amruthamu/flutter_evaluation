import 'package:hexagon_project/ui/detailed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../anim_bloc/anim_bloc.dart';
import '../anim_bloc/anim_event.dart';
import '../anim_bloc/anim_state.dart';
import '../constants/constants.dart';
import '../custom_widget/custom_painter.dart';
import 'hexagon.dart';

class HexagonScreen extends StatefulWidget {
  const HexagonScreen({super.key, required this.title});
  final String title;
  @override
  State<HexagonScreen> createState() => _HexagonScreen();
}

class _HexagonScreen extends State<HexagonScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  initState() {
    super.initState();
    BlocProvider.of<CountBloc>(context).add(StartAnimationEvent());
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CountBloc, AnimationStates>(
      listener: (context, state) {
        if (state.isSuccess) {
          _controller.forward();
        }
      },
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text(widget.title)),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FadeTransition(
                        opacity: Tween(begin: -10.0, end: 100.0)
                            .animate(_controller),
                        child: _buildHexagon(
                            Constants.title, Constants.title_des)),
                    FadeTransition(
                        opacity: Tween(begin: -40.0, end: 200.0)
                            .animate(_controller),
                        child: _buildHexagon(
                            Constants.title1, Constants.title1_des)),
                    FadeTransition(
                        opacity: Tween(begin: -100.0, end: 300.0)
                            .animate(_controller),
                        child: _buildHexagon(
                            Constants.title2, Constants.title2_des)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeTransition(
                        opacity: Tween(begin: -150.0, end: 400.0)
                            .animate(_controller),
                        child: CustomPaint(
                          painter: const LinePainter(
                            firstOffset: Offset(33, -30),
                            secondOffset: Offset(70, 20),
                          ),
                          child: CustomPaint(
                            painter: const LinePainter(
                              firstOffset: Offset(93, -30),
                              secondOffset: Offset(60, 20),
                            ),
                            child: _buildHexagon(
                                Constants.title3, Constants.title3_des),
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: Tween(begin: -250.0, end: 400.0)
                            .animate(_controller),
                        child: CustomPaint(
                          painter: const LinePainter(
                            firstOffset: Offset(33, -30),
                            secondOffset: Offset(70, 20),
                          ),
                          child: CustomPaint(
                            painter: const LinePainter(
                              firstOffset: Offset(93, -30),
                              secondOffset: Offset(60, 20),
                            ),
                            child: _buildHexagon(
                                Constants.title4, Constants.title4_des),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeTransition(
                        opacity: Tween(begin: -400.0, end: 600.0)
                            .animate(_controller),
                        child: CustomPaint(
                          painter: const LinePainter(
                            firstOffset: Offset(60, -30),
                            secondOffset: Offset(60, 20),
                          ),
                          child: _buildHexagon(
                              Constants.title5, Constants.title5_des),
                        ),
                      ),
                      FadeTransition(
                        opacity: Tween(begin: -600.0, end: 700.0)
                            .animate(_controller),
                        child: CustomPaint(
                          painter: const LinePainter(
                            firstOffset: Offset(60, -30),
                            secondOffset: Offset(60, 20),
                          ),
                          child: _buildHexagon(
                              Constants.title6, Constants.title6_des),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildHexagon(String title, String desc) {
    var h = 95.0;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(
              title: title,
              description: desc,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Hexagon(
          sideLength: h,
          color: Colors.white,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }


}