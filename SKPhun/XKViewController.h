//
//  XKViewController.h
//  SKPhun
//

//  Copyright (c) 2013 xiik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>

@interface XKViewController : UIViewController
@property(strong,nonatomic) IBOutlet SKView* gameView;
@property(strong,nonatomic) IBOutlet UISlider* slider;
@property(strong,nonatomic) IBOutlet UILabel* frLabel;
-(IBAction)sliderChanged:(id)sender;
@end
