library image_viewer;

import "package:flutter/material.dart";

class ImageViewer extends StatelessWidget {
  final String url;
  final double height;
  final double? width;
  final BoxFit? fit;

  const ImageViewer({
    Key? key,
    required this.url,
    required this.height,
    this.width,
    this.fit
  }) : assert(url != "",'url can not be empty !') , 
  assert(height > 0, 'height must be more than 0'),
  super(key:key);


@override
  Widget build(BuildContext context) {
    if(url.startsWith('http')){
      return Image.network(url, height: height,width: width,fit: fit ?? BoxFit.cover);
    }else{
      return Image.asset(url, height: height,width: width,fit: fit ?? BoxFit.cover);
    }
  }
}
