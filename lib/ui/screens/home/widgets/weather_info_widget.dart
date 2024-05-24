import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class WeatherInfoWidget extends StatelessWidget {
  final String temp;
  final String weatherDes;
  final String iconUrl;

  const WeatherInfoWidget(
      {Key? key,
      required this.temp,
      required this.weatherDes,
      required this.iconUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(30),
          ),
          child: Shimmer.fromColors(
            baseColor: const Color(0xff836eff),
            highlightColor: const Color(0xffe4e0ff),
            child: Image.network(
              iconUrl,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 1,
          color: const Color(0xffE4E4EE),
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '$temp°',
                style: const TextStyle(
                  fontFamily: 'MohrRounded',
                  fontWeight: FontWeight.w600,
                  fontSize: 68,
                  height: 0.8,
                  color: Color(0xff171717),
                ),
              ),
              TextSpan(
                text: '\n$weatherDes',
                style: const TextStyle(
                  fontFamily: 'MohrRounded',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  height: 1.8,
                  color: Color(0xff836eff),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
