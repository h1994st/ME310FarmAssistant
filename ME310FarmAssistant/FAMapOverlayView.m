//
//  FAMapOverlayView.m
//  ME310FarmAssistant
//
//  Created by Nathan on 5/4/15.
//  Copyright (c) 2015 Tom Hu. All rights reserved.
//

#import "FAMapOverlayView.h"

@implementation FAMapOverlayView

- (void)drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)context{
    
    
    CGImageRef imageReference = self.heatMapImage.CGImage;
    
    //Loading and setting the image
    MKMapRect theMapRect    = [self.overlay boundingMapRect];
    CGRect theRect          = [self rectForMapRect:theMapRect];
    
    float x = theRect.origin.x + (theRect.size.width - self.widthRatio*theRect.size.width) / 2.0 ;
    float y = theRect.origin.y - (theRect.size.height - self.heightRatio*theRect.size.height) / 2.0;

    theRect = CGRectMake(x, y, theRect.size.width*self.widthRatio, theRect.size.height*self.heightRatio);
    
    // We need to flip and reposition the image here
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextTranslateCTM(context, 0.0, -theRect.size.height);
    
    //drawing the image to the context
    CGContextDrawImage(context, theRect, imageReference);
}

@end
