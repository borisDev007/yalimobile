part of 'profile_imports.dart';

@RoutePage()
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(FeatherIcons.logOut, color: MyColors.whiteColor,).pOnly(right: 10.w),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 520.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100.r,
                  backgroundImage: const AssetImage(MyAssets.assetsLogoOr,),
                ),
                10.h.heightBox,
                "Boris N'guessan".text.color(MyColors.whiteColor).bold.xl2.make(),
                "boris.developpeur@gmail.com".text.color(MyColors.whiteColor).xl.make(),
                20.h.heightBox,
                "Sangam Singh AKA (Ronnie) is a software engineer who is more passionate about technology. His ambition towards technology is huge.".text.color(MyColors.whiteColor).center.xl.make().pSymmetric(h: 20.h),
                20.h.heightBox,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.color(MyColors.whiteColor).bold.xl3.make(),
                          "Posts".text.color(MyColors.whiteColor).xl.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.color(MyColors.whiteColor).bold.xl3.make(),
                          "Following".text.color(MyColors.whiteColor).xl.make(),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "0".text.color(MyColors.whiteColor).bold.xl3.make(),
                          "Followers".text.color(MyColors.whiteColor).xl.make(),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          20.h.heightBox,
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "My Posts".text.bold.xl3.make(),
                20.h.heightBox,
                GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9
                  ),
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Image.asset(MyAssets.assetsImagesTiger).cornerRadius(10),
                        6.h.heightBox,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "One Piece Episode 1081 Release Date and Time".text.medium.make().expand(),
                            IconButton(
                                onPressed: (){},
                                icon: const Icon(FeatherIcons.moreVertical),
                            ),

                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
