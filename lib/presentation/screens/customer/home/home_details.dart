part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "One Piece Episode 1081 Release Date and Time".text.ellipsis.make(),
      ),
      body: ListView(
        children: [
          Image.asset(MyAssets.assetsImagesTiger),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                10.h.heightBox,
                "One Piece Episode 1081 Release Date and Time".text.bold.xl2.make(),
                10.h.heightBox,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    8.w.widthBox,
                    "147 Views".text.make(),
                    const Spacer(),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(FeatherIcons.thumbsUp, color: MyColors.greenColor,),
                    ),
                    "0".text.make(),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(FeatherIcons.thumbsDown, color: MyColors.redColor,),
                    ),
                    "0".text.make(),
                  ],
                ),
                "It is confirmed that Shanks will finally make a comeback to the anime after years, as shown in the episode 1081 teaser shown at the end of last week’s episode (#1080). One Piece episode 1081, titled “The World Will Burn! The Onslaught of a Navy Admiral,” will be released on October 29, 2023, (Sunday) at 09:30 AM JST. Ryokyugyu, one of the strongest admirals, will also make an appearance. The Wano land has been successfully liberated after Luffy’s battle with Kaido. Yet, word of the two Yonkos being overthrown by the worst generation has spread to every part of the globe. ".text.make(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
