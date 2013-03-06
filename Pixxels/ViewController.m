//
//  ViewController.m
//  Pixxels
//
//  Created by Benno Krauss on 06.03.13.
//  Copyright (c) 2013 Benno Krauss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    for (int i = 0; i < screenSize.height; i++){
        NSLog(@"%i of %i",i,(int)screenSize.height);
        for (int f = 0; f < screenSize.width; f++){
            UIView *pixel = [[UIView alloc] initWithFrame:CGRectMake(f,i,2,2)]; //U no run dis on a non-retina device!
            
            CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
            CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
            CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
            UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
            pixel.backgroundColor = color;
            
            [self.view addSubview:pixel];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
