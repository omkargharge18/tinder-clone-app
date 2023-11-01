List images = [
  'https://images.unsplash.com/photo-1698181212724-4ff2e47b4093?auto=format&fit=crop&q=80&w=1886&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1698611229501-65577b4d1084?auto=format&fit=crop&q=80&w=1888&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

];


/*



  'https://images.unsplash.com/photo-1682685797439-a05dd915cee9?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1698181212724-4ff2e47b4093?auto=format&fit=crop&q=80&w=1886&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1698611229501-65577b4d1084?auto=format&fit=crop&q=80&w=1888&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1682685797439-a05dd915cee9?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1696617442016-aedc14e87620?auto=format&fit=crop&q=80&w=1981&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1698404328195-fc020ba2ba7c?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1697440110618-c93170f51c94?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1698491973400-65c0cc1fb0ce?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1698663676293-0c7f3365f67f?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',














SizedBox(
      height: pressed
          ? 500
          : 700, // Adjust the height as needed
      child:
        StoryView(
        storyItems: List.generate(
          imageItems[index]['image'].length,
          (index) {
            return StoryItem.pageImage(
              url: imageItems[index]['image'][index]
                  ,
              caption: "Still sampling",
              controller: storyController,
            );
          },
        ),
        progressPosition:
            ProgressPosition.top,
        repeat: false,
        inline: true,
        controller: storyController,
      ),
    ),

 */


/*



  // Column(
                                  //   children: [
                                  //     Container(
                                  //       height: MediaQuery.of(context).size.height *
                                  //           0.7,
                                  //       width:
                                  //           MediaQuery.of(context).size.width * 0.8,
                                  //       alignment: Alignment.bottomLeft,
                                  //       decoration: BoxDecoration(
                                  //           image: DecorationImage(
                                  //               image: NetworkImage(images[index]),
                                  //               fit: BoxFit.cover),
                                  //           color: Colors.white,
                                  //           borderRadius:
                                  //               BorderRadius.circular(10)),
                                  //       padding: const EdgeInsets.all(20),
                                  //       child: Column(
                                  //         mainAxisSize: MainAxisSize.min,
                                  //         children: [
                                  //           Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //           Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //           Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //           Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //            Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //           Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //            Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //           Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //            Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //           Text(
                                  //             names[index],
                                  //             style: const TextStyle(
                                  //                 fontSize: 32,
                                  //                 color: Colors.white,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //   ],
                                  // );
                                 

 */