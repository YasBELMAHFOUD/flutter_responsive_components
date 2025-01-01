import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MenuCard extends StatefulWidget {
  const MenuCard({super.key, required this.svgPath, required this.title, this.onTap});
  final String svgPath;
  final String title;
  final void Function()? onTap; 
  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 115,
      width: 115,
      color: Colors.black,
              constraints: const BoxConstraints(maxHeight: 115),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                                    child: InkWell(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      onTap: widget.onTap,
                                      child: Ink(
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white, ),
                    //                     child: Column(
                    //                       children: [
                    //                         const Expanded(child: SizedBox()),
                    //                         Expanded(
                    //                           flex: 2,
                    //                           child: FittedBox(
                    //                             child: SvgPicture.asset(widget.svgPath),
                    //                           ),
                    //                         ),
                    //                         //mdi_line-scan
                    //                         const Expanded(child: SizedBox()),
                    //                         Expanded(child: SizedBox(
                    //                           child: Container(
                    //                             constraints: const BoxConstraints(maxHeight: 50),
                    //                             alignment: Alignment.center,
                    //                             child: FittedBox(
                    //                               fit: BoxFit.scaleDown,
                    //                               alignment: Alignment.center,
                    //                               child: Text(
                    //                                 widget.title,
                    //                                 textAlign: TextAlign.start,
                    //                                 style: TextStyle(
                    //                                   color: Colors.black,
                    //                                   fontSize:  p2FontSize(context),
                    //                                   fontWeight: FontWeight.w700,
                    //                                 ),
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         )),
                    //                         const Expanded(child: SizedBox()),
                    //                       ],
                    //                     ),
                                      ),
                                    ),
                ),
              ),
            );
  }
  double h1FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0345 < 32
          ? 32
          : MediaQuery.of(context).size.height * 0.0345;
   double h2FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0302 < 28
          ? 28
          : MediaQuery.of(context).size.height * 0.0302;
   double h3FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0259 < 24
          ? 24
          : MediaQuery.of(context).size.height * 0.0259;
   double p1FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0216 < 20
          ? 20
          : MediaQuery.of(context).size.height * 0.0216;
   double p2FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0194 < 18
          ? 18
          : MediaQuery.of(context).size.height * 0.0194;
   double p3FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0172 < 16
          ? 16
          : MediaQuery.of(context).size.height * 0.0172;
   double p4FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0151 < 14
          ? 14
          : MediaQuery.of(context).size.height * 0.0151;
   double p5FontSize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.0129 < 12
          ? 12
          : MediaQuery.of(context).size.height * 0.0129;
}