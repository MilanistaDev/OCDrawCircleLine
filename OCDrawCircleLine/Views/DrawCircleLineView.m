//
//  DrawCircleLineView.m
//  OCDrawCircleLine
//
//  Created by 麻生 拓弥 on 2016/02/29.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import "DrawCircleLineView.h"
#import "DisplayUtil.h"

@implementation DrawCircleLineView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
// Draw Circle (CoreGraphics)
    // context
    CGContextRef contextCircle = UIGraphicsGetCurrentContext();
    CGRect rectEllipse;
    // the center of the circle
    CGFloat centerX = [DisplayUtil returnDisplaySize].width / 2;
    CGFloat centerY = [DisplayUtil returnDisplaySize].height/ 2;
    // Circle Radius
    CGFloat radius  = [DisplayUtil returnDisplaySize].width / 2 - 20;
    // Draw Space
    rectEllipse = CGRectMake(centerX - radius,
                             centerY - radius,
                             radius * 2,
                             radius * 2);
    // Circle Line Color(RGBα)
    CGContextSetRGBStrokeColor(contextCircle, 1.0, 0.0, 1.0, 1.0);
    // Circle Line Width
    CGContextSetLineWidth(contextCircle, 2.0);
    // Draw Circle
    CGContextStrokeEllipseInRect(contextCircle, rectEllipse);
    
    
// Draw Line
    CGContextRef contextLine = UIGraphicsGetCurrentContext();
    // First Point(x, y)
    CGContextMoveToPoint(contextLine, 30, 80);
    // Last Point(x ,y)
    CGContextAddLineToPoint(contextLine, [DisplayUtil returnDisplaySize].width - 30, 80);
    // Line Color
    CGContextSetRGBStrokeColor(contextCircle, 1.0, 0.0, 0.0, 1.0);
    // Draw line
    CGContextStrokePath(contextLine);

    
// Triangle (UIBezierPath ver)
    UIBezierPath *triangle = [UIBezierPath bezierPath];
    
    // Three vertexes
    // Starting point
    [triangle moveToPoint:CGPointMake(centerX, centerY + radius + 50)];
    // Add Line
    [triangle addLineToPoint:CGPointMake(centerX - 25, centerY + radius + 100)];
    [triangle addLineToPoint:CGPointMake(centerX + 25, centerY + radius + 100)];
    // Close Path
    [triangle closePath];
    [[UIColor blueColor] setStroke];
    triangle.lineWidth = 2;
    // Draw lines
    [triangle stroke];
}


@end
