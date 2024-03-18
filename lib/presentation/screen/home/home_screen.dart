part of 'home_screen_imports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Searchcontrollers controller = Get.put(Searchcontrollers());
  @override
  Widget build(BuildContext context) {
    controller.filterProducts("", "");
    return Scaffold(
       backgroundColor: MyColors.whitecolor,
      body: SafeArea(
        child: Container(
           height: Get.height,
           width: Get.width,
          child: ListView(
            children: [
              
              firstrowwidgets(),

              Container(
              padding: EdgeInsets.only(top: 24, left: 20, right: 20, bottom: 0),
              height: Get.height / 1.2,
              width: Get.width,
              child: ListView(
                children: [
                  
                  const SizedBox(
                    height: 12,
                  ),
                  Backgrounddrawable(
                         colors: MyColors.textfieldbgcolor,
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(MyAssets.currencycircle,height: 20,width: 20,),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: Get.width,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            onChanged: (value) {
                              controller.filterProducts("", value);
                            },
                            decoration: const InputDecoration(
                                filled: false,
                                border: InputBorder.none,
                                hintText: "Enter budget",
                                hintStyle: TextStyle(
                                  color: MyColors.hintcolor,
                                  fontFamily: "Roboto",
                                  letterSpacing: 0.2,
                                  height: 1.2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                      )
                    ],
                  )),
                  const SizedBox(
                    height: 12,
                  ),
                  Backgrounddrawable(
                    colors: MyColors.textfieldbgcolor,
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(MyAssets.search,height: 20,width: 20,),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: Get.width,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            autofocus: false,
                            onChanged: (value) {
                              controller.filterProducts(value, "");
                            },
                            decoration: const InputDecoration(
                                filled: false,
                                border: InputBorder.none,
                                hintText: "Search destination/hotel name",
                                hintStyle: TextStyle(
                                  color: MyColors.hintcolor,
                                  fontFamily: "Roboto",
                                  letterSpacing: 0.2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                      )
                    ],
                  )),
                  const SizedBox(
                    height: 16,
                  ),
                  SvgPicture.asset(
                    MyAssets.checkoutimg,
                    width: Get.width,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Backgrounddrawable(
                    colors: MyColors.chooseroombgcolor,
                      child: Row(
                    children: [
                      SvgPicture.asset(MyAssets.groupperson),
                      const SizedBox(
                        width: 12,
                      ),
                      const Expanded(
                          child: Text(
                        "Choose a room and person",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          color: MyColors.hintcolor,
                          letterSpacing: 0.2,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(MyAssets.arrowdown)),
                    ],
                  )),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 58,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.primaryColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            )),
                        onPressed: () {},
                        child: const Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )),
                  ),
                  // SvgPicture.asset(MyAssets.searchbutton),
            
                  const SizedBox(
                    height: 24,
                  ),
            
                  featuredproperties(),
            
                  const SizedBox(
                    height: 20,
                  ),
            
                  Container(
                      height: Get.height,
                      width: Get.width,
                      child: Obx(() {
                        return ListView.builder(
                            itemCount: controller.filteredProductList.length,
                               physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              var featuresPropertiesModel =
                                  controller.filteredProductList[index];
                                  if (controller.filteredProductList.isEmpty) {
                                    return Center(child: Text("No Data found",style: TextStyle(color: Colors.black),),);
                                  }
                              // var price=" $ ${featuresPropertiesModel}"
                              return Container(
                                //height: 200,
                                padding: EdgeInsets.all(5),
                                width: Get.width,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                     Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                       Image.asset(featuresPropertiesModel.roomimage!),
                                      // SizedBox(height: 6,),
                                       Positioned(
                                        top: 2,
                                         child: Row(
                                          children: [
                                            LikeFavourite(imagename: MyAssets.ratingsvg),
                                             const SizedBox(width: 2,),
                                            const Text("321",style: TextStyle(height: 1.7,color: Colors.white,fontSize:7,fontFamily: "Lato" ),),
                                            const SizedBox(width: 5,),
                                             LikeFavourite(imagename: MyAssets.heartvg),
                                               const SizedBox(width: 2,),
                                            const Text("4k+",style: TextStyle(height: 1.7,color: Colors.white,fontSize:7,fontFamily: "Lato" ),), 
                                          ],
                                         ),
                                       )
                                     ],),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    featuresPropertiesModel
                                                        .roomname!,
                                                    style: TextStyle(
                                                        fontFamily: "Lato",
                                                        color: MyColors.titlecolor,
                                                        fontSize: 20,
                                                        height:
                                                            1.2, // equivalent to line-height: 24px;
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  SvgPicture.asset(
                                                      MyAssets.bookmark),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                featuresPropertiesModel
                                                    .destination!,
                                                // style: TextStyle(
                                                //    // fontFamily: "Roboto",
                                                //     color: MyColors.titlecolor,
                                                //     fontSize: 14,
                                                //     height:
                                                //         1.2, // equivalent to line-height: 24px;
                                                //     letterSpacing: 0.2,
                                                //     ),
                                                  style: TextStyle(
                                                        fontFamily: "Lato",
                                                        color: MyColors.titlecolor,
                                                        fontSize: 14,
                                                        height:
                                                            1.2, // equivalent to line-height: 24px;
                                                        letterSpacing: 0.2,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "\$${featuresPropertiesModel.price}",
                                                        style: TextStyle(
                                                            fontFamily: "Lato",
                                                            color: MyColors
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 18),
                                                      ),
                                                      Text(
                                                        featuresPropertiesModel
                                                            .timingmode!,
                                                         style: TextStyle(
                                                        fontFamily: "Lato",
                                                        color: MyColors.titlecolor,
                                                        fontSize: 10,
                                                        height:
                                                            1.2, // equivalent to line-height: 24px;
                                                        letterSpacing: 0.2,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  // Container(
                                                  //     height: 40,
                                                  //     width: 61,
                                                  //     padding: EdgeInsets.all(5),
                                                  //     decoration:
                                                  //         const BoxDecoration(
                                                  //             borderRadius:
                                                  //                 BorderRadius.all(
                                                  //                     Radius
                                                  //                         .circular(
                                                  //                             5)),
                                                  //             color: MyColors
                                                  //                 .primaryColor),
                                                  //     child: const Center(
                                                  //       child: SizedBox(
                                                  //         width: 51,
                                                  //         height: 15,
                                                  //         child: Text(
                                                  //           "Negotiable",
                                                  //           style: TextStyle(
                                                  //               fontFamily:
                                                  //                   "Roboto",
                                                  //               fontSize: 10,
                                                  //               //height: 11.72,
                                                  //               letterSpacing: 0.2,
                                                  //               fontWeight:
                                                  //                   FontWeight.w700,
                                                  //               color:
                                                  //                   Colors.white),
                                                  //         ),
                                                  //       ),
                                                  //     )),
            
            
                                                  SizedBox(
                                                        //  width: 61,
                                                        height:50 ,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                                        ),
                                                        backgroundColor: MyColors.primaryColor
                                                      ),
                                                      onPressed: (){
                                                      
                                                    }, child: Text("Negotiable", style: TextStyle(
                                                                fontFamily:
                                                                    "Roboto",
                                                                fontSize: 14,
                                                                //height: 11.72,
                                                                letterSpacing: 0.2,
                                                                fontWeight:
                                                                    FontWeight.w700,
                                                                color:
                                                                    Colors.white),)),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });
                      }))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget featuredproperties() {
    return SizedBox(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Featured Properties",
            style: TextStyle(
              fontFamily: "Lato",
              color: MyColors.titlecolor,
              letterSpacing: 0.2,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(MyAssets.document),
              const SizedBox(
                width: 12,
              ),
              SvgPicture.asset(MyAssets.lightgroup),
            ],
          )
        ],
      ),
    );
  }

  Widget firstrowwidgets() {
    return Container(
      width: Get.width / 1.2,
      height: Get.height / 16,
       
     padding: const EdgeInsets.only(top: 10,left: 0,right: 20,bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(MyAssets.atozhotal),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(MyAssets.notification,height: 28,width: 28,),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(MyAssets.bookmark,height: 28,width: 28),
              )
            ],
          )
        ],
      ),
    );
  }
}