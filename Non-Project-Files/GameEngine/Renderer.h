//
//  OpenGLView.h
//  GameEngine
//
//  Created by Max on 20/03/2015.
//  Copyright (c) 2015 newcastlecv. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include <OpenGL/gl.h>

@interface Renderer : NSOpenGLView
{
    float rot;
    NSTimer *timer;
}
- (void) init;
- (void) drawRect: (NSRect) bounds;
- (void) animTimer : (NSTimer *) timer;
@end

////+(NSOpenGLPixelFormat*) basicPixelFormat;
//


