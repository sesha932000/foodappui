import 'package:flutter/material.dart';
import 'package:foodapp/Pages/Home/food_page_body.dart';
import 'package:foodapp/Widgets/big_text.dart';
import 'package:foodapp/Widgets/small_text.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';



class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("Current height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                   BigText(text: "Tamil Nadu",color: AppColors.mainColor,size: 30,),
                 Row(
                   children: [
                     SmallText(text: "Chennai",color: Colors.black87,),
                     const Icon(Icons.arrow_drop_down),
                   ],
                 )
                    ],
                  ),
                 Center(
                   child:  Container(

                     width: Dimensions.width45,
                     height: Dimensions.height45,
                     child: Icon(Icons.search,color: Colors.white ,size: Dimensions.iconsize24,),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(Dimensions.radius15),
                       color: AppColors.mainColor,
                     ),
                   ),
                 )
                ],
              ),
            ),
          ),
         const Expanded(child: SingleChildScrollView(
           child: FoodPageBody(),
         ),)
        ],
      ),
    );
  }
}
