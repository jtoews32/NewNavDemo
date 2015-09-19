#import "MyDrawingView.h"

@implementation MyDrawingView


- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
     
    [self setBackgroundColor:[UIColor whiteColor]];
    
  }
  return self;
}

-(void) drawPentagonInContext:(CGContextRef)context  atX:(int)x atY:(int)y withSize:(int)size
{
    CGContextSaveGState(context);
    
    CGContextBeginPath(context);
    CGContextSetRGBStrokeColor(context, 0, 0, 104, 4);
    CGContextSetLineWidth(context, 4.0);
    
    CGPoint center = CGPointMake(x, y);
    CGContextMoveToPoint(context, center.x, center.y + size);
    
    for(int i = 1; i < 5; ++i)
    {
        CGFloat x = size * sinf(i * 2.0 * M_PI / 5);
        CGFloat y = size * cosf(i * 2.0 * M_PI / 5);

        CGContextAddLineToPoint(context, center.x + x, center.y + y);
    }
    
    CGContextClosePath(context);
    
    CGContextDrawPath(context, kCGPathStroke);
    CGContextRestoreGState(context);
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawPentagonInContext:context atX:100 atY:50 withSize:13];
    [self drawPentagonInContext:context atX:200 atY:100 withSize:22];
    [self drawPentagonInContext:context atX:190 atY:300 withSize:34];
    [self drawPentagonInContext:context atX:240 atY:400 withSize:17];
    [self drawPentagonInContext:context atX:30 atY:100 withSize:10];
    [self drawPentagonInContext:context atX:290 atY:200 withSize:21];
    [self drawPentagonInContext:context atX:75 atY:350 withSize:24];
    [self drawPentagonInContext:context atX:80 atY:465 withSize:31];
    [self drawPentagonInContext:context atX:120 atY:356 withSize:14];
    [self drawPentagonInContext:context atX:160 atY:450 withSize:19];
}

@end
