//
//  OpenGLView.m
//  GameEngine
//
//  Created by Max on 20/03/2015.
//  Copyright (c) 2015 newcastlecv. All rights reserved.
//

#import "Renderer.h"


@implementation Renderer


// + (NSOpenGLPixelFormat*) basicPixelFormat
// {
// NSOpenGLPixelFormatAttribute attributes [] = {
// NSOpenGLPFAWindow,
// NSOpenGLPFADoubleBuffer,
// NSOpenGLPFADepthSize, (NSOpenGLPixelFormatAttribute)16,
// (NSOpenGLPixelFormatAttribute)nil
// };
// return [[[NSOpenGLPixelFormat alloc] initWithAttributes:attributes] autorelease];
// }
//
// -(id) initWithFrame : (NSRect) frameRect
// {
// NSOpenGLPixelFormat * pf = [MyOpenGL basicPixelFormat];
//
// return self = [super initWithFrame: frameRect pixelFormat: pf];
// }
-(void) awakeFromNib
{
    [self init];
    timer = [NSTimer timerWithTimeInterval: (1.0f/60.0f)
                                    target:self
                                  selector:@selector(update:)
                                  userInfo:nil
                                   repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSEventTrackingRunLoopMode];
}
-(void) update : (NSTimer *) fps
{
    [self setNeedsDisplay: YES];
    [self drawRect:[self bounds]];
}
-(void) init
{
    rot = 0.0f;
}
-(void) drawRect: (NSRect) bounds
{
    glClearColor(0,0,0,0);
    glClear(GL_COLOR_BUFFER_BIT);
    glLoadIdentity();
    glRotatef(rot,1,1,0);

    //glColor3f(rot, 0.85f, 0.35f);
//    glBegin(GL_TRIANGLES);
//        {
//            glVertex3f(  0.0,  1.0, 0.0);
//            glVertex3f( -0.2, -0.3, 0.0);
//            glVertex3f(  0.2, -0.3 ,0.0);
//        }
    glBegin(GL_TRIANGLES);
    {
        glColor3f(0,1,1); glVertex3f(0,0.5,0);
        glColor3f(1,0,1); glVertex3f(-0.5,-0.5,0);
        glColor3f(1,1,0); glVertex3f(0.5,-0.5,0);
    }
    glEnd();

    glFlush();
    
    rot += 0.5f;
}

@end
