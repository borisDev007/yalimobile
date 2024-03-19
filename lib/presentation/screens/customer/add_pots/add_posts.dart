part of 'add_posts_imports.dart';

@RoutePage()
class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Add Posts".text.size(18.sp).bold.color(MyColors.whiteColor).makeCentered(),
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(FeatherIcons.check,color: MyColors.whiteColor,),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        children: [
          20.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network("https://hinicio.com/wp-content/uploads/2022/08/placeholder-3.png"),
              IconButton(
                  onPressed: (){}, 
                  icon: const Icon(FeatherIcons.camera,color: MyColors.primaryColor,),
              ),
            ],
          ),
          20.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10.r,
            hint: "Title",
          ),
          20.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10.r,
            hint: "Slug",
          ),
          20.h.heightBox,
          Container(
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Tags".text.make(),
                const Icon(FeatherIcons.chevronRight),
              ],
            ),
          ),
          20.h.heightBox,
          Container(
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Catégories".text.make(),
                const Icon(FeatherIcons.chevronRight),
              ],
            ),
          ),
          20.h.heightBox,
          VxTextField(
            height: 100,
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10.r,
            hint: "Description",
          ),
        ],
      ),
    );
  }
}
