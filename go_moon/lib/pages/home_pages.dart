import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/pages/custom_widgets/dropdown_widget.dart';

class HomePages extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: _deviceHeight,
            width: _deviceWidth,
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _pageTitle(),
                    _bookWrite(),
                  ],
                ),
                Align(
                  alignment: Alignment(.25, -0.2),
                  child: _astroImageWidget(),
                )
              ],
            )),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "Martian",
      style: TextStyle(
        color: Colors.white,
        fontSize: 75,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 50,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/images/mars.jpg"),
      )),
    );
  }

  Widget _bookWrite() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_Destination(), _TravellerInfo(), _BookingRide()],
      ),
    );
  }

  Widget _Destination() {
    return CustomDropDown(
      values: [
        'James Webb Station',
        'Preneure Station',
      ],
      width: _deviceWidth,
    );
  }

  Widget _TravellerInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDown(
            values: const ['1', '2', '3', '4', '5'],
            width: _deviceWidth * 0.45),
        CustomDropDown(values: const [
          'Economy',
          'Business',
          'First',
          'Private',
        ], width: _deviceWidth * 0.40),
      ],
    );
  }

  Widget _BookingRide() {
    return Container(
      padding: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_deviceWidth * 0.02),
      ),
      child: MaterialButton(
        onPressed: () {
          print("Booked");
        },
        child: Text(
          "Book Ride!",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
