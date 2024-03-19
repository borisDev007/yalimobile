part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final List<String> images = [
  'https://solufarms.com/onboard1.jpg',
  'https://solufarms.com/onboard2.jpg',
  'https://solufarms.com/onboard3.jpg',
  // Add more image URLs as needed
];


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset(
          MyAssets.assetsLogoBlue,
          height: 35.h,
          width: 80.w,
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () async {
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: MyColors.primaryColor,
                    size: 30.w,
                  )),
              IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: MyColors.primaryColor,
                    size: 30.w,
                  )),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
              items: images.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0.w),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            20.h.heightBox,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      child: Card(
                        child: Container(
                          height: 57.h,
                          width: (MediaQuery.of(context).size.width - 15.w) / 1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: MyColors.whiteColor,
                            border: Border.all(
                              color: MyColors.primaryColor, // Couleur de la bordure
                              width: 1.0, // Largeur de la bordure
                            ),// Bordures arrondies
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on_outlined,size: 35.w,),
                              "Ma position actuelle".text.make(),
                              Icon(Icons.my_location,size: 35.w,),
                            ],
                          ),
                        ),
                      )
                    ),
                  Card(
                    color: MyColors.primaryColor,
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.search,size: 37.w,color: MyColors.whiteColor,)
                    ),
                  )
                ],
              ),
            ),
            20.h.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Catégories".text.size(20.sp).color(MyColors.primaryColor).bold.make(),
                      TextButton(onPressed: (){}, child: "Tous voir".text.color(MyColors.primaryColor).make())
                    ],
                  ),
                  10.h.heightBox,
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          5.w.widthBox,
                          CategorieCadre(
                            imageUrl: MyAssets.assetsCoiffeur,
                            title: 'Coiffeur',
                            onPress: (){},
                          ),
                          15.w.widthBox,
                          CategorieCadre(
                            imageUrl: MyAssets.assetsPlombier,
                            title: 'Plombier',
                            onPress: (){},
                          ),
                          15.w.widthBox,
                          CategorieCadre(
                            imageUrl: MyAssets.assetsMenuisier,
                            title: 'Menusier',
                            onPress: (){},
                          ),
                          15.w.widthBox,
                          CategorieCadre(
                            imageUrl: MyAssets.assetsTailleur,
                            title: 'Tailleur',
                            onPress: (){},
                          ),
                          15.w.widthBox,
                          CategorieCadre(
                            imageUrl: MyAssets.assetsSerrure,
                            title: 'Serrurier',
                            onPress: (){},
                          ),
                          15.w.widthBox,
                          CategorieCadre(
                            imageUrl: MyAssets.assetsMecanique,
                            title: 'Mecanicien',
                            onPress: (){},
                          ),
                          15.w.widthBox,
                        ],
                      )
                  )
                ],
              ),
            ),
            20.h.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Artisants".text.size(20.sp).color(MyColors.primaryColor).bold.make(),
                      TextButton(onPressed: (){}, child: "Tous voir".text.color(MyColors.primaryColor).make())
                    ],
                  ),
                  10.h.heightBox,
                  Card(
                    elevation: 8.0,
                    color: MyColors.whiteColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 150.h,
                          width: (MediaQuery.of(context).size.width - 15.h) / 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0), // ajustez le rayon selon votre préférence
                              child: Image.asset(
                                MyAssets.assetsImagesOnboard3,
                                fit: BoxFit.cover,
                              ),
                            ),
                        ),
                        10.w.widthBox,
                        SizedBox(
                          width: (MediaQuery.of(context).size.width - 25.h) / 1.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              10.h.heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  "Catégorie".text.bold.size(13.sp).make(),
                                  IconButtonWidget(
                                    icon: const Icon(Icons.bookmark),
                                    onPressed: (){},
                                  ),
                                ],
                              ),
                              "Nom compagnie artisan".text.bold.size(15.sp).make(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      "Notes".text.make(),
                                      Row(
                                        children: [
                                          const Icon(Icons.star,color: MyColors.secondaryColor,),
                                          "5.0".text.make(),
                                        ],
                                      )
                                    ],
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      "Distance".text.make(),
                                      Row(
                                        children: [
                                          const Icon(Icons.location_on,color: MyColors.secondaryColor,),
                                          "10Km".text.make(),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.h.heightBox,

                ],
              ),
            )

            
          ],
        ),
      ),
    );
  }
}


