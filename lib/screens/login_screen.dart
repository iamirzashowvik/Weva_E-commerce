

import 'package:adobe_xd/pinned.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:international_phone_input/international_phone_input.dart';

import 'package:weva/screens/register_screen.dart';
import 'package:weva/widgets/AppAlertDialog.dart';
import 'package:weva/widgets/custom_btn.dart';

import 'foget_password_screen.dart';
import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> { void UserPasswordToggle() {
  if (userPasswordVisible) {
    userPasswordVisible = false;
  } else {
    userPasswordVisible = true;
  }

  setState(() {
    // ignore: unnecessary_statements
    userPasswordVisible;
  });
}
  String phone;
  bool obs = true;
  String pass;final _loginForm = GlobalKey<FormState>();
  bool userPasswordVisible = false;

  TextEditingController _userName = TextEditingController();
  TextEditingController _userPassword = TextEditingController();
  Pattern emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  Map<String, dynamic> loginData = Map<String, dynamic>();
  Map<String, dynamic> currentData = Map<String, dynamic>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _loginForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  child: Transform.translate(
                     offset: Offset(46, 57.0),
                    child:
                    // Adobe XD layer: 'Group 2042' (group)
                    SizedBox(
                       width: 249.0,
                      height: 149.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 248.9, 148.7),
                            size: Size(248.9, 148.7),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                            // Adobe XD layer: 'Path 240' (shape)
                            SvgPicture.string(
                              _svg_c58i4e,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(66.0, 11.0, 135.2, 106.8),
                            size: Size(248.9, 148.7),
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                            // Adobe XD layer: 'Group 1830' (group)
                            Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 135.2, 79.0),
                                  size: Size(135.2, 106.8),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child:
                                  // Adobe XD layer: 'Group 1828' (group)
                                  Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(0.0, 0.0, 135.2, 79.0),
                                        size: Size(135.2, 79.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child:
                                        // Adobe XD layer: 'Group 16' (group)
                                        Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(0.0, 0.0, 135.2, 79.0),
                                              size: Size(135.2, 79.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_5qfnj8,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(5.9, 3.5, 123.4, 72.1),
                                              size: Size(135.2, 79.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_wc6q3,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(19.8, 59.1, 18.5, 6.3),
                                              size: Size(135.2, 79.0),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 4' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffecf2f8),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(8.8, 8.8, 117.6, 22.5),
                                        size: Size(135.2, 79.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Group 11' (group)
                                        Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(0.0, 0.0, 117.6, 22.5),
                                              size: Size(117.6, 22.5),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_we96bt,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(7.5, 3.5, 59.7, 3.5),
                                              size: Size(117.6, 22.5),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 2' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffbdcfef),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(7.5, 14.0, 59.7, 3.5),
                                              size: Size(117.6, 22.5),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 4' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffbdcfef),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(7.5, 8.8, 47.7, 3.5),
                                              size: Size(117.6, 22.5),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 3' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xfff2f6f9),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(94.8, 12.3, 15.8, 15.8),
                                        size: Size(135.2, 79.0),
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Page 1' (group)
                                        Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(0.0, 0.0, 15.8, 15.8),
                                              size: Size(15.8, 15.8),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: '064   Crop Photo' (group)
                                              Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        12.5, 0.0, 1.6, 2.2),
                                                    size: Size(15.8, 15.8),
                                                    pinRight: true,
                                                    pinTop: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_7p3fq6,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        3.0, 3.0, 9.8, 9.8),
                                                    size: Size(15.8, 15.8),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child:
                                                    // Adobe XD layer: 'Rectangle path' (shape)
                                                    SvgPicture.string(
                                                      _svg_bsbcg,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        1.6, 1.6, 14.2, 14.2),
                                                    size: Size(15.8, 15.8),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_q5smq7,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 3.3, 14.2, 10.9),
                                                    size: Size(15.8, 15.8),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinBottom: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_gx67dr,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        4.4, 4.4, 1.6, 1.6),
                                                    size: Size(15.8, 15.8),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Oval' (shape)
                                                    SvgPicture.string(
                                                      _svg_4877jp,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        8.4, 5.4, 2.5, 1.6),
                                                    size: Size(15.8, 15.8),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_vitl46,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        6.5, 4.9, 1.0, 1.0),
                                                    size: Size(15.8, 15.8),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_yeyhhe,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        4.9, 6.5, 1.0, 1.0),
                                                    size: Size(15.8, 15.8),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_nh0z1s,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        3.3, 8.7, 5.4, 3.8),
                                                    size: Size(15.8, 15.8),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_q0lcbt,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        6.2, 9.4, 6.3, 3.1),
                                                    size: Size(15.8, 15.8),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Shape' (shape)
                                                    SvgPicture.string(
                                                      _svg_24r228,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        5.9, 7.8, 4.9, 2.3),
                                                    size: Size(15.8, 15.8),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Group' (group)
                                                    Stack(
                                                      children: <Widget>[
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              0.0, 0.0, 1.9, 1.5),
                                                          size: Size(4.9, 2.3),
                                                          pinLeft: true,
                                                          pinTop: true,
                                                          pinBottom: true,
                                                          fixedWidth: true,
                                                          child:
                                                          // Adobe XD layer: 'Shape' (shape)
                                                          SvgPicture.string(
                                                            _svg_7rr0lj,
                                                            allowDrawingOutsideViewBox:
                                                            true,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              3.0, 0.8, 1.9, 1.5),
                                                          size: Size(4.9, 2.3),
                                                          pinRight: true,
                                                          pinBottom: true,
                                                          fixedWidth: true,
                                                          fixedHeight: true,
                                                          child:
                                                          // Adobe XD layer: 'Shape' (shape)
                                                          SvgPicture.string(
                                                            _svg_v0nvi4,
                                                            allowDrawingOutsideViewBox:
                                                            true,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(8.8, 33.4, 117.6, 22.5),
                                        size: Size(135.2, 79.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Group 17' (group)
                                        Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(0.0, 0.0, 117.6, 22.5),
                                              size: Size(117.6, 22.5),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_q3694b,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(44.3, 3.5, 59.7, 3.5),
                                              size: Size(117.6, 22.5),
                                              pinRight: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 2' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffbdcfef),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(44.3, 14.0, 59.7, 3.5),
                                              size: Size(117.6, 22.5),
                                              pinRight: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 4' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffbdcfef),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(44.3, 8.8, 47.7, 3.5),
                                              size: Size(117.6, 22.5),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 3' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xfff2f6f9),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(8.8, 57.9, 117.6, 15.5),
                                        size: Size(135.2, 79.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinBottom: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Group 18' (group)
                                        Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(0.0, 0.0, 117.6, 15.5),
                                              size: Size(117.6, 15.5),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_9z3dhr,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(3.9, 2.4, 59.7, 2.4),
                                              size: Size(117.6, 15.5),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 2' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffbdcfef),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(3.9, 9.7, 59.7, 2.4),
                                              size: Size(117.6, 15.5),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 4' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xffbdcfef),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(3.9, 6.0, 47.7, 2.4),
                                              size: Size(117.6, 15.5),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Rectangle 3' (shape)
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xfff2f6f9),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(19.3, 35.1, 15.8, 15.8),
                                        size: Size(135.2, 79.0),
                                        pinLeft: true,
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Group 19' (group)
                                        Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(0.5, 0.5, 14.8, 14.8),
                                              size: Size(15.8, 15.8),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_niyaox,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(0.0, 0.0, 15.8, 15.8),
                                              size: Size(15.8, 15.8),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                              // Adobe XD layer: 'Group' (group)
                                              Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 14.3, 1.5, 1.5),
                                                    size: Size(15.8, 15.8),
                                                    pinLeft: true,
                                                    pinBottom: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Vector' (shape)
                                                    SvgPicture.string(
                                                      _svg_j8jkkr,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 1.5, 1.5),
                                                    size: Size(15.8, 15.8),
                                                    pinLeft: true,
                                                    pinTop: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Vector' (shape)
                                                    SvgPicture.string(
                                                      _svg_29tgym,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        14.3, 14.3, 1.5, 1.5),
                                                    size: Size(15.8, 15.8),
                                                    pinRight: true,
                                                    pinBottom: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Vector' (shape)
                                                    SvgPicture.string(
                                                      _svg_u2rxn0,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        14.3, 0.0, 1.5, 1.5),
                                                    size: Size(15.8, 15.8),
                                                    pinRight: true,
                                                    pinTop: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                    // Adobe XD layer: 'Vector' (shape)
                                                    SvgPicture.string(
                                                      _svg_jfz2sr,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds:
                                              Rect.fromLTWH(1.5, 1.6, 10.5, 7.8),
                                              size: Size(15.8, 15.8),
                                              pinLeft: true,
                                              pinTop: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_gsnya0,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(4.5, 3.6, 7.5, 5.7),
                                              size: Size(15.8, 15.8),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_5qolc4,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(4.5, 3.6, 4.0, 5.7),
                                              size: Size(15.8, 15.8),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_tane01,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(1.7, 5.5, 5.5, 3.9),
                                              size: Size(15.8, 15.8),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_couf53,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(1.7, 5.5, 2.7, 3.9),
                                              size: Size(15.8, 15.8),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_c464n0,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(4.9, 2.4, 1.5, 1.5),
                                              size: Size(15.8, 15.8),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_dqq066,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(4.9, 2.4, 1.0, 1.5),
                                              size: Size(15.8, 15.8),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_13nf3u,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(9.9, 9.8, 4.1, 4.1),
                                              size: Size(15.8, 15.8),
                                              pinRight: true,
                                              pinBottom: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                              // Adobe XD layer: 'Vector' (shape)
                                              SvgPicture.string(
                                                _svg_x4twei,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(84.3, 59.7, 26.3, 12.3),
                                        size: Size(135.2, 79.0),
                                        pinBottom: true,
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Rectangle 50' (shape)
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0x75c4c4c4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(2.0, 19.0, 59.6, 87.8),
                                  size: Size(135.2, 106.8),
                                  pinLeft: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child:
                                  // Adobe XD layer: 'Group 1829' (group)
                                  Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(9.2, 50.8, 41.3, 27.7),
                                        size: Size(59.6, 87.8),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinBottom: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Path 209' (shape)
                                        SvgPicture.string(
                                          _svg_m18gpv,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(0.0, 0.0, 59.6, 69.3),
                                        size: Size(59.6, 87.8),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child:
                                        // Adobe XD layer: 'Path 210' (shape)
                                        SvgPicture.string(
                                          _svg_lcv7x5,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(9.2, 11.5, 41.3, 48.5),
                                        size: Size(59.6, 87.8),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Path 212' (shape)
                                        SvgPicture.string(
                                          _svg_w788ta,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(13.8, 55.4, 32.1, 32.3),
                                        size: Size(59.6, 87.8),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinBottom: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Ellipse 39' (shape)
                                        SvgPicture.string(
                                          _svg_efn3e8,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(20.6, 64.7, 18.3, 13.9),
                                        size: Size(59.6, 87.8),
                                        pinBottom: true,
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child:
                                        // Adobe XD layer: 'Path 222' (shape)
                                        SvgPicture.string(
                                          _svg_7m217x,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 160,
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Mobile Number',style: TextStyle(fontSize: 14,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _userName,
                    validator: (value) {
                      // RegExp regex = new RegExp(emailPattern);
                      if (value.isEmpty) {
                        return 'Mobile Number can not be empty';
                      }
                      //  else if (!regex.hasMatch(value)) {
                      //   return 'Enter Valid Email Format';
                      // }

                      return null;
                    },decoration: InputDecoration(

                    border: OutlineInputBorder(),

                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Password',style: TextStyle(fontSize: 14,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _userPassword,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password can not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: userPasswordVisible
                            ? Icon(Icons.visibility, color: Colors.grey)
                            : Icon(Icons.visibility_off,color: Colors.grey),
                        onPressed: UserPasswordToggle,
                      ),
                    ),
                    obscureText: userPasswordVisible ? false : true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          for (var i = 0; i < 1; i += 1)
                            Row(
                              children: [
                                // Checkbox(
                                //   onChanged: i == 1
                                //       ? null
                                //       : (bool value) {
                                //           setState(() {
                                //             checked[i] = value;
                                //           });
                                //         },
                                //   tristate: i == 1,
                                //   value: checked[i],
                                //   activeColor: Colors.red,
                                // ),
                                Text(
                                  'Remember ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassordScreen()),
                          );
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomBtn(
                  text: "Login",
                  onPressed: () {
                    if (_loginForm.currentState.validate()) {
                       Login();
                    } else {
                      print("invalid");
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16.0,
                  ),
                  child: CustomBtn(
                    text: "Create New Account",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    outlineBtn: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print("as a guest");
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (_) =>MainScreen()));
                    },
                    child: Center(
                      child: Text(
                        "As a guest",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
void Login() async {
  try {
    CircularIndicator();

    FormData formData = new FormData.fromMap(
        {'mobile': _userName.text, 'password': _userPassword.text});
    Dio dio = Dio();
    Response response =
    await dio.post("https://wevaapp.com/api/v1/login",
        data: formData,
        options: Options(headers: {
          // 'Content-Type': 'application/json',
          // 'Accept': 'application/json'
        }));
    print('REs $response');
    // final loginApi = loginApiFromJson(response.toString());
    // final loginApiFail = loginApiFailFromJson(response.toString());
    // ignore: unrelated_type_equality_checks
    // if (loginApiFail.code == '401') {
    //   _showDialog();
    // } else



    // if (loginApi.tokenType == "bearer") {
    //   print("welcome");
    //   SharedPreferences pref = await SharedPreferences.getInstance();
    //   // context.read<Counter>().accessTOKEN(loginApi.accessToken);
    //   pref.setString('accessTOKEN', loginApi.accessToken);
    //   pref.setBool('islogedin', true);
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (_) =>MainScreen()));
    //   Navigator.of(context, rootNavigator: true).pop();
    // } else if (loginApiFail.code == 401) {
    //   Navigator.of(context, rootNavigator: true).pop();
    //   ShowErrorDialog(response.toString());
    // } else {
    //   Navigator.of(context, rootNavigator: true).pop();
    //   ShowErrorDialog("Your Internet is not Working Properly");
    // }
  } catch (e) {
    Navigator.of(context, rootNavigator: true).pop();
    ShowErrorDialog("Check Your Email/Phone/Password Combination");
    print("Error:" + e.toString());
  }
}void CircularIndicator() {
  AppAlertDialog.ShowDialog(context, "Logging in");
}

// ignore: non_constant_identifier_names
void ShowErrorDialog(String ErrorMessage) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () {},
          child: Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 25.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                // Image(
                //   image: AssetImage("images/errorimage.png"),
                //   width: 50.0,
                //   height: 50.0,
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05),
                  child: Text(
                    ErrorMessage,
                    style: TextStyle(
                        color: Color.fromARGB(0XFF, 0X3E, 0X40, 0X46)),
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    //width: MediaQuery.of(context).size.width*0.5,
                    //height: MediaQuery.of(context).size.height*0.05,
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.015,
                        bottom: MediaQuery.of(context).size.height * 0.015),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.red),
                    child: Text(
                      "Okay, Acknowledge",
                      style: TextStyle(
                          color: Color.fromARGB(0XFF, 0XFF, 0XFF, 0XFF),
                          fontWeight: FontWeight.bold),
                      textScaleFactor: 0.9,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
              ],
            ),
          ),
        );
      });
}

// ignore: non_constant_identifier_names
void ToastFunction(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

}


const String _svg_wzgo1z =
    '<svg viewBox="29.0 413.0 13.0 9.0" ><path transform="translate(29.0, 413.0)" d="M 12.68001270294189 0.302617222070694 C 13.10666275024414 0.7063087821006775 13.10666275024414 1.360692739486694 12.68001270294189 1.764182448387146 L 5.352740287780762 8.697382926940918 C 4.926091194152832 9.100872039794922 4.234706401824951 9.100872039794922 3.808057069778442 8.697382926940918 L 0.319986879825592 5.396800518035889 C -0.1066622883081436 4.993310928344727 -0.1066622883081436 4.338926792144775 0.319986879825592 3.935437440872192 C 0.7464226484298706 3.531745910644531 1.438020944595337 3.531745910644531 1.86445689201355 3.935437440872192 L 4.580292224884033 6.505136013031006 L 11.13533020019531 0.302617222070694 C 11.56197929382324 -0.1008724197745323 12.25357723236084 -0.1008724197745323 12.68001270294189 0.302617222070694 Z" fill="#fffcfc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z9ail6 =
    '<svg viewBox="309.5 11.0 24.5 11.5" ><path  d="M 313.0892944335938 22.5 C 311.8554077148438 22.5 311.3946228027344 22.37400054931641 310.9320068359375 22.12560081481934 C 310.4757080078125 21.88170051574707 310.1192932128906 21.52530097961426 309.8735961914063 21.06719970703125 C 309.6260986328125 20.60370063781738 309.5001220703125 20.14290046691895 309.5001220703125 18.91080093383789 L 309.5001220703125 14.5890007019043 C 309.5001220703125 13.35690021514893 309.6260986328125 12.89610004425049 309.8735961914063 12.4326000213623 C 310.1192932128906 11.97450065612793 310.4757080078125 11.6181001663208 310.9320068359375 11.37419986724854 C 311.3963928222656 11.12580013275146 311.8580932617188 10.99980068206787 313.0892944335938 10.99980068206787 L 327.9105224609375 10.99980068206787 C 329.1416931152344 10.99980068206787 329.6033935546875 11.12580013275146 330.0678100585938 11.37419986724854 C 330.5249938964844 11.61900043487549 330.8814086914063 11.97450065612793 331.126220703125 12.4326000213623 C 331.3737182617188 12.89610004425049 331.4996948242188 13.35690021514893 331.4996948242188 14.5890007019043 L 331.4996948242188 18.91080093383789 C 331.4996948242188 20.14290046691895 331.3737182617188 20.60370063781738 331.126220703125 21.06719970703125 C 330.8814086914063 21.52530097961426 330.5249938964844 21.88080024719238 330.0678100585938 22.12560081481934 C 329.6051940917969 22.37400054931641 329.1444091796875 22.5 327.9105224609375 22.5 L 313.0892944335938 22.5 Z M 311.4035949707031 12.25619983673096 C 311.1237182617188 12.40560054779053 310.9059143066406 12.62340068817139 310.755615234375 12.90420055389404 C 310.5576171875 13.27500057220459 310.5 13.65299987792969 310.5 14.5890007019043 L 310.5 18.91080093383789 C 310.5 19.84679985046387 310.5576171875 20.22480010986328 310.755615234375 20.59560012817383 C 310.90771484375 20.88000106811523 311.1192016601563 21.09239959716797 311.4035949707031 21.2445011138916 C 311.7752990722656 21.44250106811523 312.1533203125 21.50010108947754 313.0892944335938 21.50010108947754 L 327.9105224609375 21.50010108947754 C 328.847412109375 21.50010108947754 329.2254028320313 21.44250106811523 329.5962219238281 21.2445011138916 C 329.880615234375 21.09239959716797 330.0921020507813 20.88000106811523 330.2442016601563 20.59560012817383 C 330.4421997070313 20.22480010986328 330.4998168945313 19.84679985046387 330.4998168945313 18.91080093383789 L 330.4998168945313 14.5890007019043 C 330.4998168945313 13.65299987792969 330.4421997070313 13.27500057220459 330.2442016601563 12.90420055389404 C 330.0939025878906 12.62340068817139 329.8760986328125 12.40560054779053 329.5962219238281 12.25619983673096 C 329.2254028320313 12.05730056762695 328.847412109375 11.99970054626465 327.9105224609375 11.99970054626465 L 313.0892944335938 11.99970054626465 C 312.1533203125 11.99970054626465 311.7752990722656 12.05730056762695 311.4035949707031 12.25619983673096 Z M 332.4996032714844 14.68980026245117 C 332.4996032714844 14.68980026245117 333.9999084472656 15.45300006866455 333.9999084472656 16.68959999084473 C 333.9999084472656 17.92620086669922 332.4996032714844 18.69029998779297 332.4996032714844 18.69029998779297 L 332.4996032714844 14.68980026245117 Z" fill="#000000" fill-opacity="0.36" stroke="#000000" stroke-width="0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ew198c =
    '<svg viewBox="267.0 11.4 17.1 10.7" ><path  d="M 282.30029296875 22.14000129699707 C 281.6369934082031 22.14000129699707 281.0997009277344 21.60270118713379 281.0997009277344 20.94029998779297 L 281.0997009277344 12.63960075378418 C 281.0997009277344 11.97720050811768 281.6369934082031 11.43990039825439 282.30029296875 11.43990039825439 L 282.8997192382813 11.43990039825439 C 283.5630187988281 11.43990039825439 284.1003112792969 11.97720050811768 284.1003112792969 12.63960075378418 L 284.1003112792969 20.94029998779297 C 284.1003112792969 21.60270118713379 283.5630187988281 22.14000129699707 282.8997192382813 22.14000129699707 L 282.30029296875 22.14000129699707 Z M 277.599609375 22.14000129699707 C 276.9371948242188 22.14000129699707 276.39990234375 21.60270118713379 276.39990234375 20.94029998779297 L 276.39990234375 15.03990077972412 C 276.39990234375 14.37750053405762 276.9371948242188 13.84020042419434 277.599609375 13.84020042419434 L 278.1999206542969 13.84020042419434 C 278.8623046875 13.84020042419434 279.3995971679688 14.37750053405762 279.3995971679688 15.03990077972412 L 279.3995971679688 20.94029998779297 C 279.3995971679688 21.60270118713379 278.8623046875 22.14000129699707 278.1999206542969 22.14000129699707 L 277.599609375 22.14000129699707 Z M 272.9996948242188 22.14000129699707 C 272.3373107910156 22.14000129699707 271.8000183105469 21.60270118713379 271.8000183105469 20.94029998779297 L 271.8000183105469 17.34029960632324 C 271.8000183105469 16.67700004577637 272.3373107910156 16.13969993591309 272.9996948242188 16.13969993591309 L 273.6000061035156 16.13969993591309 C 274.2624206542969 16.13969993591309 274.7997131347656 16.67700004577637 274.7997131347656 17.34029960632324 L 274.7997131347656 20.94029998779297 C 274.7997131347656 21.60270118713379 274.2624206542969 22.14000129699707 273.6000061035156 22.14000129699707 L 272.9996948242188 22.14000129699707 Z M 268.2000122070313 22.14000129699707 C 267.53759765625 22.14000129699707 267.0003051757813 21.60270118713379 267.0003051757813 20.94029998779297 L 267.0003051757813 19.34010124206543 C 267.0003051757813 18.67770004272461 267.53759765625 18.14039993286133 268.2000122070313 18.14039993286133 L 268.80029296875 18.14039993286133 C 269.4627075195313 18.14039993286133 270 18.67770004272461 270 19.34010124206543 L 270 20.94029998779297 C 270 21.60270118713379 269.4627075195313 22.14000129699707 268.80029296875 22.14000129699707 L 268.2000122070313 22.14000129699707 Z" fill="#000000" stroke="#000000" stroke-width="0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f2uayb =
    '<svg viewBox="289.1 11.2 15.4 11.1" ><path  d="M 296.8002014160156 22.29750442504883 C 296.7169494628906 22.29750442504883 296.6355895996094 22.26338386535645 296.5769958496094 22.20390319824219 L 294.5628051757813 20.17170333862305 C 294.5009765625 20.11077308654785 294.4665222167969 20.02580451965332 294.4682922363281 19.9386043548584 C 294.4700927734375 19.85220336914063 294.5081176757813 19.76920318603516 294.5726928710938 19.71090316772461 C 295.1947021484375 19.18464469909668 295.9859313964844 18.89483451843262 296.8006286621094 18.89483451843262 C 297.6153259277344 18.89483451843262 298.4065856933594 19.18464469909668 299.0285949707031 19.71089363098145 C 299.0931701660156 19.76919364929199 299.1312255859375 19.8521842956543 299.1329956054688 19.9386043548584 C 299.1347961425781 20.02611351013184 299.1000366210938 20.11107444763184 299.03759765625 20.17169380187988 L 297.0243225097656 22.20390319824219 C 296.9639282226563 22.26426315307617 296.8843383789063 22.29750442504883 296.8002014160156 22.29750442504883 Z M 300.3372497558594 18.73038291931152 C 300.2569274902344 18.73038291931152 300.1805419921875 18.69984436035156 300.1221008300781 18.6444034576416 C 299.2106018066406 17.81853294372559 298.0308532714844 17.36370468139648 296.8002014160156 17.36370468139648 C 295.5712890625 17.36460304260254 294.3925170898438 17.81943321228027 293.4810180664063 18.6444034576416 C 293.4230346679688 18.69984436035156 293.3467407226563 18.73038291931152 293.2662353515625 18.73038291931152 C 293.1823120117188 18.73039436340332 293.1035766601563 18.69762420654297 293.0444946289063 18.63810348510742 L 291.8799133300781 17.4618034362793 C 291.8189697265625 17.4008846282959 291.7845153808594 17.31624412536621 291.785400390625 17.22959327697754 C 291.7862854003906 17.14339447021484 291.8223571777344 17.05942344665527 291.8843994140625 16.99920463562012 C 293.2246398925781 15.75255393981934 294.9709167480469 15.06600379943848 296.8015747070313 15.06600379943848 C 298.6322021484375 15.06600379943848 300.3784790039063 15.7525634765625 301.7187194824219 16.99920463562012 C 301.78076171875 17.05947303771973 301.8168334960938 17.1434440612793 301.8177185058594 17.22959327697754 C 301.818603515625 17.31621360778809 301.7841491699219 17.40085411071777 301.7232055664063 17.4618034362793 L 300.55859375 18.63810348510742 C 300.4995422363281 18.6976146697998 300.4209289550781 18.73038291931152 300.3372497558594 18.73038291931152 Z M 290.580078125 16.02282333374023 C 290.496826171875 16.02280426025391 290.4186096191406 15.99016380310059 290.3598022460938 15.93090343475342 L 289.1943054199219 14.75460338592529 C 289.1333618164063 14.69365406036377 289.0997924804688 14.61182403564453 289.0997924804688 14.52420330047607 C 289.1007080078125 14.43797397613525 289.13525390625 14.35647392272949 289.197021484375 14.29470348358154 C 291.2528381347656 12.32462406158447 293.9530334472656 11.23965358734131 296.8002014160156 11.23965358734131 C 299.6473693847656 11.23965358734131 302.3475952148438 12.32462406158447 304.4034118652344 14.29470348358154 C 304.4655151367188 14.35681343078613 304.4996948242188 14.43831348419189 304.4996948242188 14.52420330047607 C 304.5006103515625 14.60932350158691 304.4664916992188 14.69330406188965 304.4060974121094 14.75460338592529 L 303.2397155761719 15.93090343475342 C 303.1810913085938 15.9899435043335 303.1028747558594 16.02247428894043 303.0194396972656 16.02249336242676 C 302.9380493164063 16.02249336242676 302.8612365722656 15.99124336242676 302.8031921386719 15.93450355529785 C 301.1779174804688 14.38871383666992 299.0460205078125 13.53690338134766 296.8002014160156 13.53600406646729 C 294.5553894042969 13.53600406646729 292.4234619140625 14.38781356811523 290.7972106933594 15.93450355529785 C 290.738525390625 15.99145412445068 290.6614074707031 16.02282333374023 290.580078125 16.02282333374023 Z" fill="#000000" stroke="#000000" stroke-width="0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5qfnj8 =
    '<svg viewBox="112.0 68.0 135.2 79.0" ><path transform="translate(112.0, 68.0)" d="M 15.90316200256348 0 L 119.2746200561523 0 C 128.0576171875 0 135.1777801513672 2.439279317855835 135.1777801513672 5.448222637176514 L 135.1777801513672 73.55178070068359 C 135.1777801513672 76.56072235107422 128.0576171875 79 119.2746200561523 79 L 15.90316200256348 79 C 7.120166778564453 79 3.944304526105059e-30 76.56072235107422 3.944304526105059e-30 73.55178070068359 L 3.944304526105059e-30 5.448222637176514 C -6.400383390327887e-15 2.439279317855835 7.120166778564453 0 15.90316200256348 0 Z" fill="#e4eaf8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wc6q3 =
    '<svg viewBox="117.9 71.5 123.4 72.1" ><path transform="translate(117.86, 71.55)" d="M 14.51825714111328 0 L 108.8877563476563 0 C 116.9058990478516 0 123.4060134887695 2.224889755249023 123.4060134887695 4.969375133514404 L 123.4060134887695 67.08726501464844 C 123.4060134887695 69.83174896240234 116.9058990478516 72.056640625 108.8877563476563 72.056640625 L 14.51825714111328 72.056640625 C 6.500116348266602 72.056640625 5.84301495872735e-15 69.83174896240234 5.84301495872735e-15 67.08726501464844 L 5.84301495872735e-15 4.969375133514404 C 0 2.224889755249023 6.500116348266602 0 14.51825714111328 0 Z" fill="#ecf2f8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_we96bt =
    '<svg viewBox="120.8 76.8 117.6 22.5" ><path transform="translate(120.78, 76.78)" d="M 13.837815284729 0 L 103.7844085693359 0 C 111.4267501831055 0 117.6222229003906 0.6953640580177307 117.6222229003906 1.55312180519104 L 117.6222229003906 20.96736335754395 C 117.6222229003906 21.82512092590332 111.4267501831055 22.52048492431641 103.7844085693359 22.52048492431641 L 13.837815284729 22.52048492431641 C 6.195469379425049 22.52048492431641 5.569164548198825e-15 21.82512092590332 5.569164548198825e-15 20.96736335754395 L 5.569164548198825e-15 1.55312180519104 C 0 0.6953640580177307 6.195469379425049 0 13.837815284729 0 Z" fill="#fefffd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7p3fq6 =
    '<svg viewBox="219.3 80.3 1.6 2.2" ><path transform="translate(219.33, 80.29)" d="M 0 2.179164886474609 L 0 0.2723956108093262 C 0 0.1219556629657745 0.1219556853175163 0 0.2723956406116486 0 L 1.36197817325592 0 C 1.512418150901794 0 1.634373784065247 0.1219556629657745 1.634373784065247 0.2723956108093262 L 1.634373784065247 2.179164886474609 L 0 2.179164886474609 Z" fill="#ff5364" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bsbcg =
    '<svg viewBox="209.8 83.3 9.8 9.8" ><path transform="translate(209.8, 83.29)" d="M 0 0 L 9.806241989135742 0 L 9.806241989135742 9.806241989135742 L 0 9.806241989135742 L 0 0 Z" fill="#2fa8cc" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q5smq7 =
    '<svg viewBox="208.4 81.9 14.2 14.2" ><path transform="translate(208.44, 81.92)" d="M 1.634373664855957 10.89582443237305 L 1.634373664855957 1.77057147026062 C 1.634373664855957 1.695351481437683 1.695351481437683 1.634373664855957 1.77057147026062 1.634373664855957 L 13.89217567443848 1.634373664855957 C 14.04261589050293 1.634373664855957 14.16457176208496 1.512418031692505 14.16457176208496 1.361978054046631 L 14.16457176208496 0.2723956108093262 C 14.16457176208496 0.1219556629657745 14.04261589050293 0 13.89217567443848 0 L 0.2723956108093262 0 C 0.1219556629657745 0 0 0.1219556629657745 0 0.2723956108093262 L 0 13.89217567443848 C 0 14.04261589050293 0.1219556629657745 14.16457176208496 0.2723956108093262 14.16457176208496 L 1.361978054046631 14.16457176208496 C 1.512418031692505 14.16457176208496 1.634373664855957 14.04261589050293 1.634373664855957 13.89217567443848 L 1.634373664855957 10.89582443237305 Z" fill="#df4d60" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gx67dr =
    '<svg viewBox="206.8 83.6 14.2 10.9" ><path transform="translate(206.8, 83.56)" d="M 14.16457176208496 0 L 14.16457176208496 10.6234302520752 C 14.16457176208496 10.77387046813965 14.04261589050293 10.89582633972168 13.89217567443848 10.89582633972168 L 0.2723956108093262 10.89582633972168 C 0.1219556629657745 10.89582633972168 0 10.77387046813965 0 10.6234302520752 L 0 9.533847808837891 C 0 9.383408546447754 0.1219556629657745 9.261452674865723 0.2723956108093262 9.261452674865723 L 12.39400005340576 9.261452674865723 C 12.46922016143799 9.261452674865723 12.530198097229 9.200474739074707 12.530198097229 9.12525463104248 L 12.530198097229 0 L 14.16457176208496 0 Z" fill="#ff5364" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4877jp =
    '<svg viewBox="211.2 84.6 1.6 1.6" ><path transform="translate(211.16, 84.65)" d="M 1.634373784065247 0.8171868920326233 C 1.634373784065247 1.268506765365601 1.268506765365601 1.634373784065247 0.8171868920326233 1.634373784065247 C 0.365867018699646 1.634373784065247 0 1.268506765365601 0 0.8171868920326233 C 0 0.365867018699646 0.365867018699646 0 0.8171868920326233 0 C 1.268506765365601 0 1.634373784065247 0.365867018699646 1.634373784065247 0.8171868920326233 Z" fill="#f0c419" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vitl46 =
    '<svg viewBox="215.2 85.7 2.5 1.6" ><path transform="translate(215.24, 85.74)" d="M 2.451560497283936 1.089582562446594 C 2.450663089752197 1.390089869499207 2.207276582717896 1.633476257324219 1.906769275665283 1.634373784065247 L 0.5447912216186523 1.634373784065247 C 0.2439113259315491 1.634373784065247 0 1.390462398529053 0 1.089582562446594 C 0 0.7887026071548462 0.2439113259315491 0.5447912812232971 0.5447912216186523 0.5447912812232971 C 0.6426140666007996 0.5445078611373901 0.7386666536331177 0.570875346660614 0.8226348757743835 0.6210622191429138 C 0.8193674683570862 0.5957632064819336 0.817548394203186 0.57029789686203 0.8171868324279785 0.5447912812232971 C 0.8171868324279785 0.2439113408327103 1.061098098754883 0 1.361978054046631 0 C 1.662858009338379 0 1.906769275665283 0.2439113408327103 1.906769275665283 0.5447912812232971 C 2.207276582717896 0.5456887483596802 2.450663089752197 0.7890751361846924 2.451560497283936 1.089582562446594 Z" fill="#ecf0f1" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yeyhhe =
    '<svg viewBox="213.3 85.2 1.0 1.0" ><path transform="translate(213.34, 85.19)" d="M 0.5447912812232971 0.5447912216186523 L 0.2723956406116486 0.5447912216186523 C 0.1219556853175163 0.5447912216186523 0 0.4228355586528778 0 0.2723956108093262 C 0 0.1219556778669357 0.1219556853175163 0 0.2723956406116486 0 L 0.5447912812232971 0 C 0.6952311992645264 0 0.8171868920326233 0.1219556778669357 0.8171868920326233 0.2723956108093262 C 0.8171868920326233 0.4228355586528778 0.6952311992645264 0.5447912216186523 0.5447912812232971 0.5447912216186523 Z" fill="#f3d55b" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nh0z1s =
    '<svg viewBox="211.7 86.8 1.0 1.0" ><path transform="translate(211.7, 86.83)" d="M 0.2723956108093262 0.8171868920326233 C 0.1219556778669357 0.8171868920326233 0 0.6952311992645264 0 0.5447912812232971 L 0 0.2723956406116486 C 0 0.1219556853175163 0.1219556778669357 0 0.2723956108093262 0 C 0.4228355586528778 0 0.5447912216186523 0.1219556853175163 0.5447912216186523 0.2723956406116486 L 0.5447912216186523 0.5447912812232971 C 0.5447912216186523 0.6952311992645264 0.4228355586528778 0.8171868920326233 0.2723956108093262 0.8171868920326233 Z" fill="#f3d55b" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q0lcbt =
    '<svg viewBox="210.1 89.0 5.4 3.8" ><path transform="translate(210.07, 88.98)" d="M 5.423397064208984 1.026931643486023 L 2.96638822555542 3.838054656982422 L 0 3.838054656982422 L 0 3.266024112701416 L 2.62044620513916 0.05992737412452698 C 2.825866222381592 0.3873698711395264 3.189706325531006 0.5811090469360352 3.576053142547607 0.5687728524208069 C 3.96239972114563 0.5564366579055786 4.313139915466309 0.3398803770542145 4.497251987457275 0 L 5.423397064208984 1.026931643486023 Z" fill="#35495e" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7rr0lj =
    '<svg viewBox="212.7 88.1 1.9 1.5" ><path transform="translate(212.69, 88.06)" d="M 1.876805901527405 0.9194378852844238 C 1.692693710327148 1.259318232536316 1.341953635215759 1.475874543190002 0.9556069374084473 1.488210797309875 C 0.5692601799964905 1.500546932220459 0.205420047044754 1.30680775642395 0 0.9793652296066284 L 0.7191243767738342 0.09952685236930847 C 0.7696717977523804 0.03797199949622154 0.8446282744407654 0.001624861732125282 0.9242622852325439 5.313865040079691e-05 C 1.003896236419678 -0.001518611563369632 1.080228924751282 0.0318429097533226 1.133165836334229 0.09135531634092331 L 1.876805901527405 0.9194378852844238 Z" fill="#ecf0f1" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v0nvi4 =
    '<svg viewBox="215.7 88.9 1.9 1.5" ><path transform="translate(215.66, 88.86)" d="M 1.93673312664032 0.8641507029533386 C 1.769405007362366 1.238064050674438 1.406008243560791 1.4860919713974 0.9968298077583313 1.505658864974976 C 0.5876513719558716 1.525225758552551 0.2022440284490585 1.313005685806274 0 0.9567652344703674 L 0.7545360326766968 0.09327106177806854 C 0.8041288256645203 0.03645442798733711 0.8750576972961426 0.002741028787568212 0.9504294991493225 0.0001598077506059781 C 1.025801301002502 -0.002421413315460086 1.098869800567627 0.02636074088513851 1.152233362197876 0.07965148985385895 L 1.93673312664032 0.8641507029533386 Z" fill="#ecf0f1" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_24r228 =
    '<svg viewBox="213.0 89.7 6.3 3.1" ><path transform="translate(213.04, 89.73)" d="M 6.295063972473145 1.732436537742615 L 6.295063972473145 2.958216905593872 C 6.295063972473145 3.03343677520752 6.234086036682129 3.094414710998535 6.158865928649902 3.094414710998535 L 0 3.094414710998535 L 2.457009077072144 0.2832917273044586 L 2.625894069671631 0.0926145613193512 C 2.828138113021851 0.4488550126552582 3.213545560836792 0.6610751748085022 3.622723817825317 0.6415082216262817 C 4.031902313232422 0.6219413876533508 4.395299434661865 0.3739133775234222 4.56262731552124 0 L 6.295063972473145 1.732436537742615 Z" fill="#3f5c6c" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q3694b =
    '<svg viewBox="120.8 101.4 117.6 22.5" ><path transform="translate(120.78, 101.36)" d="M 13.837815284729 0 L 103.7844085693359 0 C 111.4267501831055 0 117.6222229003906 0.6953640580177307 117.6222229003906 1.55312180519104 L 117.6222229003906 20.96736335754395 C 117.6222229003906 21.82512092590332 111.4267501831055 22.52048492431641 103.7844085693359 22.52048492431641 L 13.837815284729 22.52048492431641 C 6.195469379425049 22.52048492431641 5.569164548198825e-15 21.82512092590332 5.569164548198825e-15 20.96736335754395 L 5.569164548198825e-15 1.55312180519104 C 0 0.6953640580177307 6.195469379425049 0 13.837815284729 0 Z" fill="#fefffd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9z3dhr =
    '<svg viewBox="120.8 125.9 117.6 15.5" ><path transform="translate(120.78, 125.93)" d="M 13.837815284729 0 L 103.7844085693359 0 C 111.4267501831055 0 117.6222229003906 0.4785391986370087 117.6222229003906 1.068835377693176 L 117.6222229003906 14.42942810058594 C 117.6222229003906 15.01972389221191 111.4267501831055 15.49826335906982 103.7844085693359 15.49826335906982 L 13.837815284729 15.49826335906982 C 6.195469379425049 15.49826335906982 5.569164548198825e-15 15.01972389221191 5.569164548198825e-15 14.42942810058594 L 5.569164548198825e-15 1.068835377693176 C 0 0.4785391986370087 6.195469379425049 0 13.837815284729 0 Z" fill="#fefffd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j8jkkr =
    '<svg viewBox="131.3 117.4 1.5 1.5" ><path transform="translate(131.31, 117.39)" d="M 0 0 L 1.521973371505737 0 L 1.521973371505737 1.521973371505737 L 0 1.521973371505737 L 0 0 Z" fill="#e51c42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_29tgym =
    '<svg viewBox="131.3 103.1 1.5 1.5" ><path transform="translate(131.31, 103.11)" d="M 0 0 L 1.521973371505737 0 L 1.521973371505737 1.521973371505737 L 0 1.521973371505737 L 0 0 Z" fill="#e51c42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u2rxn0 =
    '<svg viewBox="145.6 117.4 1.5 1.5" ><path transform="translate(145.59, 117.39)" d="M 0 0 L 1.521973371505737 0 L 1.521973371505737 1.521973371505737 L 0 1.521973371505737 L 0 0 Z" fill="#e51c42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jfz2sr =
    '<svg viewBox="145.6 103.1 1.5 1.5" ><path transform="translate(145.59, 103.11)" d="M 0 0 L 1.521973371505737 0 L 1.521973371505737 1.521973371505737 L 0 1.521973371505737 L 0 0 Z" fill="#e51c42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_niyaox =
    '<svg viewBox="131.8 103.6 14.8 14.8" ><path transform="translate(131.83, 103.63)" d="M 14.51962184906006 14.76143074035645 L 0.2418088614940643 14.76143074035645 C 0.1082474365830421 14.76143074035645 0 14.65318298339844 0 14.51962184906006 L 0 0.2418088614940643 C 0 0.1082474365830421 0.1082474365830421 0 0.2418088614940643 0 L 14.51962184906006 0 C 14.65318298339844 0 14.76143074035645 0.1082474365830421 14.76143074035645 0.2418088614940643 L 14.76143074035645 14.51962184906006 C 14.76143074035645 14.65318298339844 14.65318298339844 14.76143074035645 14.51962184906006 14.76143074035645 Z M 0.4836177229881287 14.27781295776367 L 14.27781295776367 14.27781295776367 L 14.27781295776367 0.4836177229881287 L 0.4836177229881287 0.4836177229881287 L 0.4836177229881287 14.27781295776367 Z" fill="#b4d2d7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gsnya0 =
    '<svg viewBox="132.9 104.7 10.5 7.8" ><path transform="translate(132.86, 104.7)" d="M 10.50578594207764 1.095372438430786 L 10.50578594207764 6.691089630126953 C 10.50578594207764 7.295973777770996 10.01577949523926 7.786462306976318 9.410775184631348 7.786462306976318 L 1.095010638237 7.786462306976318 C 0.6774504780769348 7.786462306976318 0.3146167099475861 7.552609443664551 0.1299451291561127 7.20894193649292 C 0.04701168462634087 7.054767608642578 0 6.878413200378418 0 6.691089630126953 L 0 1.095372438430786 C 0 0.4904886484146118 0.4901269674301147 0 1.095010638237 0 L 9.410775184631348 0 C 10.01577949523926 0 10.50578594207764 0.4904886484146118 10.50578594207764 1.095372438430786 Z" fill="#bce8f1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5qolc4 =
    '<svg viewBox="135.9 106.7 7.5 5.7" ><path transform="translate(135.86, 106.75)" d="M 7.501980781555176 4.50538158416748 L 7.501980781555176 4.637255668640137 C 7.501980781555176 5.242139339447021 7.011974334716797 5.732627868652344 6.406970024108887 5.732627868652344 L 0 5.732627868652344 L 3.615319490432739 0.2909649014472961 C 3.720673799514771 0.1323306113481522 3.878102779388428 0.03854828327894211 4.04505443572998 0.0098591148853302 C 4.287224769592285 -0.03245140984654427 4.549044132232666 0.06145142391324043 4.701892375946045 0.2909649014472961 L 7.501980781555176 4.50538158416748 Z" fill="#f9d35a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tane01 =
    '<svg viewBox="135.9 106.8 4.0 5.7" ><path transform="translate(135.86, 106.76)" d="M 4.04505443572998 0 L 2.708596467971802 5.722769260406494 L 0 5.722769260406494 L 3.615319490432739 0.2811057865619659 C 3.720673799514771 0.1224715113639832 3.878102779388428 0.02868917025625706 4.04505443572998 0 L 4.04505443572998 0 Z" fill="#f7aa5c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_couf53 =
    '<svg viewBox="133.0 108.6 5.5 3.9" ><path transform="translate(132.99, 108.59)" d="M 5.492170810699463 3.895450115203857 L 0.965065598487854 3.895450115203857 C 0.5475053787231445 3.895450115203857 0.1846715956926346 3.661597013473511 0 3.31792950630188 L 2.01101541519165 0.2911003530025482 C 2.172542810440063 0.04832719638943672 2.456300497055054 -0.04256207495927811 2.709078788757324 0.01831202581524849 C 2.860721588134766 0.05507759749889374 3.00091290473938 0.1457257717847824 3.097347021102905 0.2911003530025482 L 5.492170810699463 3.895450115203857 Z" fill="#f9d35a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c464n0 =
    '<svg viewBox="133.0 108.6 2.7 3.9" ><path transform="translate(132.99, 108.59)" d="M 2.709079027175903 0.01831202581524849 L 1.866243720054626 3.895450115203857 L 0.9650657176971436 3.895450115203857 C 0.5475054383277893 3.895450115203857 0.1846716105937958 3.661597013473511 0 3.31792950630188 L 2.011015653610229 0.2911003530025482 C 2.172543048858643 0.04832719638943672 2.456300735473633 -0.04256207495927811 2.709079027175903 0.01831202581524849 L 2.709079027175903 0.01831202581524849 Z" fill="#f7aa5c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dqq066 =
    '<svg viewBox="136.2 105.5 1.5 1.5" ><path transform="translate(136.19, 105.52)" d="M 1.544032692909241 0.7720766067504883 C 1.544032692909241 1.198436498641968 1.198436498641968 1.544032692909241 0.7720766067504883 1.544032692909241 C 0.3457167446613312 1.544032692909241 0 1.198436498641968 0 0.7720766067504883 C 0 0.3457167446613312 0.3457167446613312 0 0.7720766067504883 0 C 1.198436498641968 0 1.544032692909241 0.3457167446613312 1.544032692909241 0.7720766067504883 Z" fill="#ff435e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_13nf3u =
    '<svg viewBox="136.2 105.5 1.0 1.5" ><path transform="translate(136.19, 105.52)" d="M 1.039802074432373 1.496177434921265 C 0.956265926361084 1.527036428451538 0.8660998940467834 1.543912410736084 0.7720765471458435 1.543912410736084 C 0.3457167148590088 1.543912410736084 0 1.198436617851257 0 0.771956205368042 C 0 0.3455962538719177 0.3457167148590088 0 0.7720765471458435 0 C 0.8660998940467834 0 0.956265926361084 0.01687599532306194 1.039802074432373 0.04773495718836784 C 0.7455571293830872 0.1565851271152496 0.5356921553611755 0.4397402107715607 0.5356921553611755 0.771956205368042 C 0.5356921553611755 1.104413270950317 0.7455571293830872 1.387447834014893 1.039802074432373 1.496177434921265 Z" fill="#e51c42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x4twei =
    '<svg viewBox="141.2 112.9 4.1 4.1" ><path transform="translate(141.21, 112.94)" d="M 3.893773078918457 2.267048120498657 C 3.760211706161499 2.267048120498657 3.65196418762207 2.375295639038086 3.65196418762207 2.508857011795044 L 3.65196418762207 3.309863805770874 L 0.4128590524196625 0.07087916135787964 C 0.3183535039424896 -0.02362638711929321 0.1652641743421555 -0.02362638711929321 0.07087916135787964 0.07087916135787964 C -0.02362638711929321 0.1652641743421555 -0.02362638711929321 0.3183535039424896 0.07087916135787964 0.4128590524196625 L 3.309863805770874 3.651843786239624 L 2.508857011795044 3.651843786239624 C 2.375295639038086 3.651843786239624 2.267048120498657 3.760091066360474 2.267048120498657 3.893652677536011 C 2.267048120498657 4.027214050292969 2.375295639038086 4.135581970214844 2.508857011795044 4.135581970214844 L 3.893773078918457 4.135581970214844 C 4.027334690093994 4.135581970214844 4.135581970214844 4.027214050292969 4.135581970214844 3.893652677536011 L 4.135581970214844 2.508857011795044 C 4.135581970214844 2.375295639038086 4.027334690093994 2.267048120498657 3.893773078918457 2.267048120498657 L 3.893773078918457 2.267048120498657 Z" fill="#ff435e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m18gpv =
    '<svg viewBox="123.2 137.8 41.3 27.7" ><path transform="translate(123.17, 137.81)" d="M 20.6390323638916 5.430474266177043e-05 C 17.33488464355469 -0.00756038399413228 14.07743358612061 0.7857381105422974 11.14177417755127 2.312962293624878 C 8.206114768981934 3.840186595916748 5.678457736968994 6.056476593017578 3.772262334823608 8.774678230285645 C 1.866067051887512 11.49287986755371 0.637311577796936 14.63315963745117 0.1897694170475006 17.93032264709473 C -0.2577727735042572 21.22748565673828 0.0890430212020874 24.58473014831543 1.200920104980469 27.71848297119141 L 40.07714462280273 27.71848297119141 C 41.188232421875 24.5849494934082 41.53442764282227 21.22815895080566 41.08650970458984 17.93152618408203 C 40.63859176635742 14.6348934173584 39.40970611572266 11.4951753616333 37.50360107421875 8.77748966217041 C 35.59749603271484 6.05980396270752 33.07013702392578 3.84394645690918 30.13489532470703 2.316938400268555 C 27.19965362548828 0.7899303436279297 23.94270896911621 -0.003396928776055574 20.6390323638916 0.003990212455391884 L 20.6390323638916 5.430474266177043e-05 Z" fill="#d5dced" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lcv7x5 =
    '<svg viewBox="114.0 87.0 59.6 69.3" ><path transform="translate(114.0, 87.0)" d="M 57.32777786254883 69.28682708740234 L 2.293212175369263 69.28682708740234 C 1.68501353263855 69.28682708740234 1.101727485656738 69.04349517822266 0.6716660857200623 68.6103515625 C 0.2416046857833862 68.17720794677734 0 67.58974456787109 0 66.97718811035156 L 0 2.309645175933838 C 0 1.697088241577148 0.2416046857833862 1.109627485275269 0.6716660857200623 0.676484227180481 C 1.101727485656738 0.2433410286903381 1.68501353263855 1.079161718342344e-27 2.293212175369263 1.079161718342344e-27 L 57.32777786254883 1.079161718342344e-27 C 57.93597793579102 -1.87020419360447e-14 58.51926803588867 0.2433410286903381 58.9493293762207 0.676484227180481 C 59.37939071655273 1.109627485275269 59.62100219726563 1.697088241577148 59.62100219726563 2.309645175933838 L 59.62100219726563 66.97718811035156 C 59.62100219726563 67.58974456787109 59.37939071655273 68.17720794677734 58.9493293762207 68.6103515625 C 58.51926803588867 69.04349517822266 57.93597793579102 69.28682708740234 57.32777786254883 69.28682708740234 Z" fill="#80a8ff" fill-opacity="0.69" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w788ta =
    '<svg viewBox="123.2 98.5 41.3 48.5" ><path transform="translate(123.17, 98.54)" d="M 38.98859786987305 48.50265884399414 C 39.59679794311523 48.50265884399414 40.18007659912109 48.25930786132813 40.61013793945313 47.82616424560547 C 41.04019927978516 47.39302062988281 41.28181076049805 46.80555725097656 41.28181076049805 46.19300079345703 L 41.28181076049805 40.28397750854492 C 41.2818489074707 39.31444549560547 40.9789924621582 38.3694953918457 40.4161491394043 37.58295822143555 C 39.85330963134766 36.79642105102539 39.05901718139648 36.20816421508789 38.14578628540039 35.90156173706055 L 29.08791160583496 32.86020660400391 C 28.63214302062988 32.70719146728516 28.23560333251953 32.41387557983398 27.95425987243652 32.02165985107422 C 27.67291641235352 31.62944030761719 27.52098083496094 31.15811729431152 27.51990509033203 30.67425155639648 L 27.5107536315918 26.56690979003906 C 28.21476936340332 26.21247291564941 28.81635093688965 25.68147659301758 29.25757598876953 25.0250358581543 C 29.69880294799805 24.36859703063965 29.96481895446777 23.60880661010742 30.03002548217773 22.81881904602051 L 30.53048706054688 17.31908798217773 C 31.02429389953613 16.88962173461914 31.42076683044434 16.35836410522461 31.69308853149414 15.76123046875 C 31.96541023254395 15.16409587860107 32.10723114013672 14.51500511169434 32.10895156860352 13.85789680480957 L 32.10895156860352 2.309656143188477 C 32.10895156860352 1.697098970413208 31.86734199523926 1.109637856483459 31.43728065490723 0.6764945387840271 C 31.0072193145752 0.2433511763811111 30.42392730712891 0 29.81572914123535 0 L 16.05251693725586 0 C 14.22792053222656 -3.740409742461655e-14 12.47805690765381 0.7300134301185608 11.18787288665771 2.029443502426147 C 9.897688865661621 3.3288733959198 9.172869682312012 5.0912766456604 9.172869682312012 6.928948402404785 L 9.172869682312012 13.86317825317383 C 9.174506187438965 14.52030086517334 9.316285133361816 15.16938495635986 9.58861255645752 15.7665319442749 C 9.860939979553223 16.36367797851563 10.25745964050293 16.89493942260742 10.75133419036865 17.32434844970703 L 11.25178527832031 22.8240795135498 C 11.31711578369141 23.61403274536133 11.58319187164307 24.37375831604004 12.02440357208252 25.03017807006836 C 12.46561622619629 25.68659782409668 13.06711959838867 26.21763229370117 13.77105808258057 26.57217025756836 L 13.7619161605835 30.67953300476074 C 13.76103591918945 31.1634464263916 13.60917091369629 31.63484382629395 13.32779979705811 32.027099609375 C 13.04642868041992 32.41935729980469 12.64977550506592 32.71262741088867 12.19389915466309 32.86547088623047 L 3.136023759841919 35.90684127807617 C 2.2227942943573 36.21344757080078 1.428502082824707 36.80168151855469 0.8656607270240784 37.58821868896484 C 0.3028194308280945 38.37475967407227 -3.705849667312577e-05 39.31970596313477 3.401168680028377e-09 40.28923797607422 L 3.401168680028377e-09 46.19826507568359 C 3.40113137653475e-09 46.81082153320313 0.2416097074747086 47.39828109741211 0.6716711521148682 47.83142471313477 C 1.101732611656189 48.26456832885742 1.685023665428162 48.50791931152344 2.293222427368164 48.50791931152344 L 38.98859786987305 48.50265884399414 Z" fill="#e4eaf8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_efn3e8 =
    '<svg viewBox="127.8 142.4 32.1 32.3" ><path transform="translate(127.76, 142.43)" d="M 32.10240936279297 16.16623306274414 C 32.10240936279297 25.09459686279297 24.91604042053223 32.33246612548828 16.05120468139648 32.33246612548828 C 7.186368942260742 32.33246612548828 0 25.09459686279297 0 16.16623306274414 C 0 7.237869262695313 7.186368942260742 0 16.05120468139648 0 C 24.91604042053223 0 32.10240936279297 7.237869262695313 32.10240936279297 16.16623306274414 Z" fill="#80a8ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7m217x =
    '<svg viewBox="134.6 151.7 18.3 13.9" ><path transform="translate(134.64, 151.67)" d="M 7.641565799713135 13.85828018188477 C 7.09453821182251 13.85927486419678 6.565388202667236 13.66216850280762 6.150650501251221 13.30291557312012 L 0.8011187314987183 8.683602333068848 C 0.3393383026123047 8.285178184509277 0.05361165851354599 7.718348503112793 0.006807261146605015 7.107752323150635 C -0.03999713435769081 6.497155666351318 0.1559521704912186 5.892810821533203 0.5515411496162415 5.42772102355957 C 0.9471301436424255 4.962631225585938 1.509956359863281 4.674867153167725 2.116208076477051 4.627727031707764 C 2.72245979309082 4.580587387084961 3.322474956512451 4.777961254119873 3.784255266189575 5.176384925842285 L 7.449480056762695 8.341459274291992 L 14.36048984527588 0.7492092251777649 C 14.77150058746338 0.2975573837757111 15.34381294250488 0.02884453535079956 15.95153522491455 0.002189576625823975 C 16.55925750732422 -0.02446538209915161 17.15261077880859 0.193118691444397 17.60104942321777 0.6070746779441833 C 18.04948806762695 1.021030783653259 18.31628799438477 1.597475171089172 18.34275436401367 2.20955228805542 C 18.36921882629395 2.821629524230957 18.15318298339844 3.41921591758728 17.74217224121094 3.870867729187012 L 9.333707809448242 13.10945320129395 C 9.118874549865723 13.3459358215332 8.857420921325684 13.53467464447021 8.566054344177246 13.66361331939697 C 8.274686813354492 13.79255199432373 7.959817409515381 13.85885620117188 7.641565799713135 13.85828018188477 L 7.641565799713135 13.85828018188477 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c58i4e =
    '<svg viewBox="46.0 57.0 248.9 148.7" ><path transform="translate(46.0, 57.0)" d="M 128.9879150390625 24.51678848266602 C 114.7556915283203 24.0245304107666 101.1973419189453 19.42436981201172 88.25791168212891 14.3934850692749 C 75.3184814453125 9.362600326538086 62.49465179443359 3.79187273979187 48.60345840454102 1.123009443283081 C 39.66784286499023 -0.5916919708251953 29.45008850097656 -0.8337192535400391 22.25240898132324 3.960061073303223 C 15.32361888885498 8.581550598144531 13.08479309082031 16.53727149963379 11.88217449188232 23.9277172088623 C 10.97631645202637 29.48695945739746 10.44428157806396 35.33828353881836 12.92411994934082 40.54145812988281 C 14.64566040039063 44.1513557434082 17.70508575439453 47.19187164306641 19.82012176513672 50.65409088134766 C 27.18011665344238 62.69638061523438 21.97696113586426 77.54701232910156 13.99967002868652 89.30625152587891 C 10.26146793365479 94.82365417480469 5.918269157409668 100.0899963378906 3.030999898910522 105.9610061645508 C 0.1437304019927979 111.8320159912109 -1.190873980522156 118.5603790283203 1.335691571235657 124.5511703491211 C 3.838483333587646 130.4935607910156 9.804036140441895 134.9476776123047 16.26719093322754 138.0833587646484 C 29.39270782470703 144.454833984375 44.85459136962891 146.2770080566406 59.94184494018555 147.3091125488281 C 93.32907104492188 149.5956573486328 126.8933715820313 148.6054077148438 160.3650360107422 147.6151428222656 C 172.75439453125 147.2475891113281 185.1962280273438 146.8767395019531 197.3830871582031 144.9585723876953 C 204.1520233154297 143.8920135498047 211.13818359375 142.2052154541016 216.0527648925781 138.1252136230469 C 222.2888336181641 132.9466552734375 223.8349609375 124.1778793334961 219.6548919677734 117.6849822998047 C 298.5 105.9610061645508 193.2743530273438 104.0830459594727 188.3687744140625 92.39846038818359 C 185.6725158691406 85.96381378173828 188.4417266845703 78.79816436767578 192.3619232177734 72.82952880859375 C 200.771240234375 60.03079986572266 214.8640899658203 48.79909515380859 215.6051788330078 34.16916275024414 C 216.1150817871094 24.12051963806152 209.3404235839844 14.05628871917725 198.8644409179688 9.300248146057129 C 187.8851165771484 4.317768573760986 172.6568450927734 4.942935943603516 164.5598602294922 13.19319343566895 C 156.2144927978516 21.68465805053711 141.5592651367188 24.95243835449219 128.9879150390625 24.51678848266602 Z" fill="#fc5953" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
