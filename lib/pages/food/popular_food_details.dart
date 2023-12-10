import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widgets.dart';
import '../../widgets/small_text.dart';
import '../home/main_food_page.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {

    print("Screen height " + MediaQuery.of(context).size.height.toString());
    // print("Current height is " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/food6.jpeg"),
                  ),
                ),
              )),
          //icon widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      child: AppIcon(icon: Icons.arrow_back),
                  onTap: (){
                        Get.to(()=>MainFoodPage());
                  }),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined),
                ],
              )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.popularFoodImgSize - 20,
              bottom: 0,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(
                        text: "Biryani",
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: "Introduce"),
                       const Expanded(
                         child: SingleChildScrollView(
                           child: ExpandableTextWidget(
                              text:
                                  "Biryani is a spiced mix of meat and rice, traditionally cooked over an open fire in a leather pot. It is combined in different ways with a variety of components to create a number of highly tasty and unique flavor combinations. The word “biryani” itself comes from the word “birian,” a Persian term which translates to “fried before cooking.” Indeed, the roots of this dish have been traced by notable historians to modern day Persia, with appearances in notes under various names as early as 2 CE. The biryani recipe was then much simplified in order to keep it viable during travel.Once the dish reached India, it blossomed into something entirely new. The story goes that Mumtaz Mahal, a Queen of Shah Jahan, visited an army barrack and found the soldiers there to be heavily undernourished. She demanded the barrack’s cook provide the soldiers with a dish that was nutritious and had all the meat, rice, and spices needed to restore their energy. According to legend, this is how the dish first came to India. As various regions across Southern Asia adopted the recipe, it grew and changed to express cultures’ values leading to the diverse selection of biryani dishes that exist today."),
                         ),
                       )
                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            left: Dimensions.width30,
            right: Dimensions.width30,
            top: Dimensions.height20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.radius20 * 2),
            topLeft: Radius.circular(Dimensions.radius20 * 2),
          ),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  right: Dimensions.width15,
                  left: Dimensions.width15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  right: Dimensions.width15,
                  left: Dimensions.width15),
              child: BigText(
                text: "\$10 | Add to Cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
