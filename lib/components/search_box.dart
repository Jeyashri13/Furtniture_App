// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: KDefaultPadding / 4,
        horizontal: KDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: TextField(
          onChanged: onChanged,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search',
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
