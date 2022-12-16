import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/25262902?v=4'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              size: 16.0,
              color: Colors.white,
            ),
          ),
          ),
          IconButton(onPressed: (){}, icon: const CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.edit,
              size: 16.0,
              color: Colors.white,
            ),
          ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0,),
                    color:Colors.grey[300],
              ),
              padding:  const EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                      'Search',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          Container(
            height: 100.0,
            child: ListView.builder(

              scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return buildStoryItem();

                },
              itemCount: 10,


            ),
          ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(

              child: ListView.separated(
                shrinkWrap: true,
       itemBuilder:(context,index)=>buildChatItem(),
       separatorBuilder:(context,index)=>const SizedBox(
         height: 15.0,
       ) ,
       itemCount: 20,),
            )



          ],
        ),
      ),
    );
  }

  Widget buildChatItem()=> Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/25262902?v=4'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 2.0,
              end: 2.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(
        width: 10.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              'Mohand Adel',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,


            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children:  [
                const Text('Mohand Adel flutter dev'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),

                  ),
                ),
                const Text(
                    "2:00AM"
                ),
              ],
            ),
          ],
        ),
      ),
    ],

  );
  Widget buildStoryItem()=> Container(
    width: 60.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/25262902?v=4'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 2.0,
                end: 2.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6.0,
        ),
        const Text(
          'Mohand Adel',

        ),

      ],
    ),
  );


}
