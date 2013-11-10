//
//  DataViewController.m
//  pagagaga
//
//  Created by Michil Androsov on 9/23/13.
//  Copyright (c) 2013 Michil Androsov. All rights reserved.
//

#import "DataViewController.h"
#import "ModelController.h"

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *imagesArray;
    imagesArray = [[NSMutableArray alloc] initWithObjects:
                   @"page1.png",
                   @"page1text.png",
                   @"page2.png",
                   @"page1text.png",
                   @"page3.png",
                   @"page1text.png",nil];

    UIImageView *myImage = [[UIImageView alloc]
                            initWithImage:[UIImage imageNamed:[imagesArray objectAtIndex:self.index]]];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        CGRect screenBound = [[UIScreen mainScreen] bounds];
        CGSize screenSize = screenBound.size;
        NSInteger x = screenSize.width;
        NSInteger y = screenSize.height;
        CGRect cropRect = CGRectMake(0 ,0 ,x ,y);
        myImage.frame = cropRect;
    }
    myImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:myImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //self.dataLabel.text = [self.dataObject description];
    
    NSLog(@"%i",self.index);
}*/
@end
