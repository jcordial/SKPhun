//
//  XKViewController.m
//  SKPhun
//
//  Created by Jason Cordial on 11/18/13.
//  Copyright (c) 2013 xiik. All rights reserved.
//

#import "XKViewController.h"
#import "XKMyScene1.h"

@implementation XKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = self.gameView;
    SKScene * scene = [XKMyScene1 sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    // Present the scene.
	skView.showsFPS = YES;
    [skView presentScene:scene];


}

-(void)viewDidAppear:(BOOL)animated{
	[self.slider addTarget:self action:@selector(sliderChanged:) forControlEvents:UIControlEventValueChanged];
}
-(void)viewDidDisappear:(BOOL)animated{
	[self.slider removeTarget:self action:@selector(sliderChanged:) forControlEvents:UIControlEventValueChanged];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - EVENTS
-(void)sliderChanged:(id)sender{
    SKView * skView = self.gameView;
	// you should note, the interval isn't directly translatable to a frame rate.
	// 1 - refresh rate of the current screen.
	// > 1 - increases time between refreshes
	// < 1 - is an error. Don't do that.
	const int maxInterval = 10;
	const int minInterval = 1;

	int newInterval = self.slider.value*(maxInterval-minInterval)+minInterval;

	skView.frameInterval = newInterval;
}
@end
