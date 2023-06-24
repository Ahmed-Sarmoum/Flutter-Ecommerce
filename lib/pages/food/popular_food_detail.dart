import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widgets/app_column.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/food.png"
                  ),
                ),
              )
            ),
          ),
          // icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 30,
            child: Container(

              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius30),
                  topLeft: Radius.circular(Dimensions.radius30),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Biriani",),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Introduce", size: Dimensions.font20,),
                  SizedBox(height: Dimensions.height10,),
                  Expanded(child: const SingleChildScrollView(child: ExpandableText(text: "Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..")))
                ],
              ),

            )
          ),
          // expandable text widget


        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.radius20 * 2),
            topLeft: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height15,bottom: Dimensions.height15, left: Dimensions.width10, right: Dimensions.width10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10 ,),
                  BigText(text: "0", size: Dimensions.font20,),
                  SizedBox(width: Dimensions.width10 ,),
                  Icon(Icons.add, color: AppColors.signColor,),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: Dimensions.height15,bottom: Dimensions.height15, left: Dimensions.width15, right: Dimensions.width15),
              child: BigText(text: "\$10 | Add to cart",size: Dimensions.font20,color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
            )
          ],
        ),

      ),
    );
  }
}
