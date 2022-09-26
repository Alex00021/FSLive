// /**
//  *@program: new_live
//  *@description:
//  *@author: Alex.LingJiaHua
//  *@create: 2022-09-26
//  */
//
// import 'package:flutter/material.dart';
//
// /// 查询组件
// class SearchWidget extends StatefulWidget {
//   final double? height; // 高度
//   final double? width; // 宽度
//   final String? hintText; // 输入提示
//   final ValueChanged<String>? onEditingComplete; // 编辑完成的事件回调
//
//   const SearchWidget(
//       {Key? key,
//         this.height,
//         this.width,
//         this.hintText,
//         this.onEditingComplete})
//       : super(key: key);
//
//   @override
//   State<SearchWidget> createState() => _SearchWidgetState();
// }
//
// class _SearchWidgetState extends State<SearchWidget> {
//   var controller = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   /// 清除查询关键词
//   clearKeywords() {
//     controller.text = "";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrains) {
//       var width = widget.width ?? constrains.maxWidth / 2; // 父级宽度
//       // var width = widget.width ?? constrains.maxWidth / 2; // 父级宽度
//       var height = widget.width ?? widget.height ?? 30;
//       return Container(
//         width: 130,
//         height: height,
//         decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.circular(height)),
//         child: TextField(
//             controller: controller,
//             decoration: InputDecoration(
//                 hintText: widget.hintText ?? "搜索喜愛的主播",
//                 hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
//                 contentPadding: EdgeInsets.only(bottom: height / 3),
//                 border: InputBorder.none,
//                 icon: Padding(
//                     padding: const EdgeInsets.only(left: 10, top: 5),
//                     child: Icon(
//                       Icons.search,
//                       size: 18,
//                       color: Colors.grey,
//                     )),
//                 // suffixIcon: IconButton(
//                 //   icon: const Icon(
//                 //     Icons.close,
//                 //     size: 17,
//                 //   ),
//                 //   onPressed: clearKeywords,
//                 //   splashColor: Theme.of(context).primaryColor,
//                 // )
//             ),
//             onEditingComplete: () {
//               widget.onEditingComplete?.call(controller.text);
//             }),
//       );
//     });
//   }
// }
//
//
//
