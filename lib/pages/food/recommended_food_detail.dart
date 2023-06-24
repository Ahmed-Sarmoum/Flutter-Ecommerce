import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                child: Center(
                  child: BigText(
                    text: "Chinese Side",
                    size: Dimensions.font26,
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius30),
                    topLeft: Radius.circular(Dimensions.radius30),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width15, right: Dimensions.width15),
                child: ExpandableText(
                  text:
                      "Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !Chicken marinated in a spicied yoghurt is placed in a larg pot, then layered with tried nions (checkly easy sub below!), fresh coriander/climet, then par boilet !..",
                ),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10 * 2.5,
                bottom: Dimensions.height10 * 2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(text: '\$12.88'+ ' X ' + '0', size: Dimensions.font26, color: AppColors.mainBlackColor,),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                )
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
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
        ],
      ),
    );
  }
}
