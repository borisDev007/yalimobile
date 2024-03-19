part of 'tags_imports.dart';

@RoutePage()
class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;
  @override
  void initState() {
    // TODO: implement initState
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Tags".text.size(18.sp).bold.color(MyColors.whiteColor).makeCentered(),
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(FeatherIcons.plusCircle,color: MyColors.whiteColor,),
          ),
        ],
      ),
      body: BlocBuilder<VelocityBloc<TagsModel>,VelocityState<TagsModel>>(
        bloc: tagsViewModel.tagsModelBloc,
        builder: (context, state){
          if(state is VelocityInitialState){
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if(state is VelocityUpdateState){
            return ListView.separated(
                separatorBuilder: (context,index)=>SizedBox(height: 20.h,),
                itemCount: state.data.tags!.length,
                itemBuilder: (context,index){
                  var tagsData = state.data.tags![index];
                  return Card(
                    child: ListTile(
                      leading: "${index+1}".text.size(16.sp).make(),
                      title: tagsData.title!.text.size(16.sp).make(),
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
            );
          }
          return const SizedBox();
        }
      ),
    );
  }
}
