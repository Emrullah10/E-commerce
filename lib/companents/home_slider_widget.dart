import 'package:ecommerce/constant/constant.dart';
import 'package:ecommerce/riverpod/home_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class HomeCampaigns extends StatelessWidget {
  const HomeCampaigns({
    super.key,
    required this.read,
    required this.watch,
  });

  final HomeRiverpod read;
  final HomeRiverpod watch;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 414,
      height: 210,
      child: Stack(
        children: [
          PageView.builder(itemCount: read.campains.length,itemBuilder: (context,index){
            return Image.asset(watch.campains[index]);
          },
          onPageChanged: (newPageIndex)=>read.onPageChanged(newPageIndex),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: 12.onlyBottomP,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < read.campains.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: watch.campainsCurrentIndex  == i
                              ? Constant.white
                              : Constant.gray,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
      
    );
  }
}