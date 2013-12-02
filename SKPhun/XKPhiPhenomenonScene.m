//
//  XKMyScene.m
//  SKPhun
//
//  Created by Jason Cordial on 11/18/13.
//  Copyright (c) 2013 xiik. All rights reserved.
//

#import "XKPhiPhenomenonScene.h"
@interface XKPhiPhenomenonScene(){
	SKSpriteNode *sprite;
}
@end
@implementation XKPhiPhenomenonScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hello, World!";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:myLabel];

		CGPoint location =
			CGPointMake(self.size.width*0.5,
						self.size.height*0.5);

        sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];

        sprite.position = location;

		//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];

		//        [sprite runAction:[SKAction repeatActionForever:action]];

        [self addChild:sprite];

    }
    return self;
}




-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
	sprite.zRotation+= 0.1;

}

@end
