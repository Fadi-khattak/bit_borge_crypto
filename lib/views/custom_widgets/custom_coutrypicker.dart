import 'package:birborge/utils/app_colors.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/bitborg_icons_icons.dart';

class CustomCountrypicker extends StatelessWidget {
  var onselect;
  Country country;
   CustomCountrypicker({required this.onselect,required this.country});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        readOnly: true,
        onTap: (){
          showCountryPicker(
            context: context,
            searchAutofocus: false,
            showPhoneCode: false, // optional. Shows phone code before the country name.
            onSelect: onselect,
            countryListTheme: CountryListThemeData(
              flagSize: 20.sp,
              textStyle: TextStyle(color: Colors.white54,fontSize: 18.sp),
              backgroundColor: bgColor
            )
          );
        },
        decoration: InputDecoration(
            prefixIcon: Icon(BitborgIcons.globe,color: Colors.white,size: 25.sp,),
            suffixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,size: 25.sp,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
                borderSide:const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            hintText:country.displayNameNoCountryCode,
            hintStyle:const TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
                borderSide:const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 2.sp,horizontal: 8.sp),
            filled: true,
            fillColor: bgLight
        ),
      ),
    );
  }
}
