// ignore: file_names
import 'package:ecommerce/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
 
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
@override
  final Size preferredSize;
final String appBarTittle ;
final bool autoLeading;
 
  const CustomAppBar({super.key,this.appBarTittle= "iDrip",this.autoLeading=false}) : preferredSize = const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
       backgroundColor: Constant.darkWhite,
      title:  Text(
        appBarTittle,
        style: TextStyle( 
          color: Constant.black,
         fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: Padding(
        padding:12.allP,
        child: Image.asset("assets/icons/ic_drawer.png"),
      ),
      actions: [
        Padding(
          padding: 12.allP,
          child: Image.asset("assets/icons/ic_search.png"),
        ),
      ],
     
    );
  }
}