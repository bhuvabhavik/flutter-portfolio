// // // SingleChildScrollView(
// // // padding: EdgeInsets.only(
// // // top: size.height * 0.05,
// // // ),
// // // child: Column(
// // // crossAxisAlignment: CrossAxisAlignment.start,
// // // mainAxisAlignment: MainAxisAlignment.start,
// // // children: [
// // // Padding(
// // //
// // // child:
// // // ),
// // // const SizedBox(
// // // height: 220,
// // // ),
// // //
// // //
// // //
// // // // AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
// // // //   return AnimatedContainer(
// // // //     alignment: Alignment.center,
// // // //     width: hover ? 80 : 75,
// // // //     duration: const Duration(milliseconds: 200),
// // // //     transform: hover ? onMenuHover : null,
// // // //     child: Text(
// // // //       menuItems[index],
// // // //       style: AppTextStyles.headerTextStyle(
// // // //           color: hover ? AppColors.themeColor : AppColors.white),
// // // //     ),
// // // //   );
// // // // }
// //
// //
// // Row(
// // children: [
// // buildSocialButton(
// // asset: AppAssets.github, hover: false),
// // Constants.sizedBox(width: 12),
// // buildSocialButton(
// // asset: AppAssets.linkedin, hover: false),
// // Constants.sizedBox(width: 12),
// // buildSocialButton(
// // asset: AppAssets.instagram, hover: false),
// // Constants.sizedBox(width: 12),
// // buildSocialButton(
// // asset: AppAssets.thread, hover: false),
// // Constants.sizedBox(width: 12),
// // ],
// // ),
//
//
// Column(
// children: [
// FadeInDown(
// duration: const Duration(milliseconds: 1200),
// child: RichText(
// text: TextSpan(
// text: "My ",
// style: AppTextStyles.headingStyles(fontSize: 30),
// children: [
// TextSpan(
// text: 'Services ',
// style: AppTextStyles.headingStyles(
// fontSize: 30, color: AppColors.robinEdgeBlue))
// ]),
// )),
// Constants.sizedBox(height: 60),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// InkWell(
// onTap: () {},
// onHover: (value) {
// setState(() {
// isApp = value;
// });
// },
// child: buildAnimatedContainer(
// title: 'App Development',
// asset: AppAssets.codingImg,
// hover: isApp,
// )),
// Constants.sizedBox(width: 24),
// InkWell(
// onTap: () {},
// onHover: (value) {
// setState(() {
// isWeb = value;
// });
// },
// child: buildAnimatedContainer(
// title: 'Web Development',
// asset: AppAssets.codingImg,
// hover: isWeb,
// )),
// Constants.sizedBox(width: 24),
// InkWell(
// onTap: () {},
// onHover: (value) {
// setState(() {
// isVideo = value;
// });
// },
// child: buildAnimatedContainer(
// title: 'Video Editing',
// asset: AppAssets.videoEditorImg,
// hover: isVideo,
// )),
//
// ],
// )
// ],
// ),