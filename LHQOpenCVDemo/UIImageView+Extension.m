//
//  UIImageView+Extension.m
//  iOSLHQProject
//
//  Created by WaterWorld on 2019/2/28.
//  Copyright © 2019年 water. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)

- (CGRect) contentFrame
{
    CGSize imageSize = self.image.size;
    CGFloat imageScale = fminf(CGRectGetWidth(self.bounds)/imageSize.width, CGRectGetHeight(self.bounds)/imageSize.height);
    CGSize scaledImageSize = CGSizeMake(imageSize.width*imageScale, imageSize.height*imageScale);
    CGRect imageFrame = CGRectMake(0.5f*(CGRectGetWidth(self.bounds)-scaledImageSize.width), 0.5f*(CGRectGetHeight(self.bounds)-scaledImageSize.height), scaledImageSize.width, scaledImageSize.height);
    return imageFrame;
}

- (CGSize) contentSize
{
    CGSize imageSize = self.image.size;
    
    CGFloat imageScale = fminf(CGRectGetWidth(self.bounds)/imageSize.width, CGRectGetHeight(self.bounds)/imageSize.height);
    CGSize finalSize = CGSizeMake(imageSize.width*imageScale, imageSize.height*imageScale);
    NSLog(@"%f %f %f",imageSize.width,imageSize.height,imageScale);
    
    return finalSize;
}

- (CGFloat) contentScale
{
    CGSize imageSize = self.image.size;
    CGFloat imageScale = fminf(CGRectGetWidth(self.bounds)/imageSize.width, CGRectGetHeight(self.bounds)/imageSize.height);
    return imageScale;
}

@end
