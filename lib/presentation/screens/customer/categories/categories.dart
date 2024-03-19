part of 'categories_imports.dart';

@RoutePage()
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Catégories".text.size(18.sp).bold.color(MyColors.whiteColor).makeCentered(),
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(FeatherIcons.plusCircle,color: MyColors.whiteColor,),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView.separated(
            separatorBuilder: (context,index)=>SizedBox(height: 20.h,),
            itemCount: 10,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  leading: "${index+1}".text.size(16.sp).make(),
                  title: "title".text.size(16.sp).make(),
                  trailing: SizedBox(
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                                FeatherIcons.edit2,
                                color: MyColors.greenColor
                            ),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                                FeatherIcons.trash2,
                                color: MyColors.redColor,
                            ),
                        ),

                      ],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
