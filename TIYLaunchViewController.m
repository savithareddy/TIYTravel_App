//
//  TIYLaunchViewController.m
//  TIYTravel
//
//  Created by Jeffery Moulds on 6/7/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "TIYLaunchViewController.h"
#import "TIYNewClientVC.h"

#import "TIYLaunchCollectionVC.h"


@interface TIYLaunchViewController () 


@end

@implementation TIYLaunchViewController

{

    UIView * header;
    UIView * pullView;
    UIButton * newClients;
//    UIButton * existingClients;
    TIYLaunchCollectionVC * collectionVC;
    

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {


        self.view.backgroundColor = [UIColor lightGrayColor];
        
        
    
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];


    header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT * .06)];
    header.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: header];
    

    UILabel * titleText = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 40)];
//    titleText.backgroundColor = [UIColor redColor];
    titleText.text = @"A TIME AND A PLACE";
    titleText.textColor = [UIColor blackColor];
    titleText.textAlignment = NSTextAlignmentCenter;
    [titleText setFont:[UIFont fontWithName:@"GillSans" size:50.0f]];
    [self.view addSubview:titleText];
    
    UILabel * TIYText = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 150, 50, 150, 40)];
    //    titleText.backgroundColor = [UIColor redColor];
    TIYText.text = @"by TIY Travel, Inc.";
    TIYText.textColor = [UIColor blackColor];
    TIYText.textAlignment = NSTextAlignmentCenter;
    [TIYText setFont:[UIFont fontWithName:@"GillSans" size:20.0f]];
    [self.view addSubview:TIYText];

    

    UILabel * textBackgroundView = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH * .1, SCREEN_HEIGHT / 8, SCREEN_WIDTH * .8, SCREEN_HEIGHT * .2)];
//    textBackgroundView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textBackgroundView];
    
    
    
    UILabel * introText1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, (SCREEN_WIDTH * .8) - 40 ,50)];
//    introText1.backgroundColor = [UIColor redColor];
    introText1.text = @"Life Is A Collection Of Memories.";
    introText1.textColor = [UIColor blackColor];
    introText1.textAlignment = NSTextAlignmentCenter;
    [introText1 setFont:[UIFont fontWithName:@"GillSans" size:40.0f]];
    [textBackgroundView addSubview:introText1];

    
    UILabel * introText2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 70, (SCREEN_WIDTH * .8) - 40 , 50)];
//    introText2.backgroundColor = [UIColor redColor];
    introText2.text = @"Let The Iron Yard Travel";
    introText2.textColor = [UIColor blackColor];
    introText2.textAlignment = NSTextAlignmentCenter;
    [introText2 setFont:[UIFont fontWithName:@"GillSans" size:40.0f]];
    [textBackgroundView addSubview:introText2];

    UILabel * introText3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, (SCREEN_WIDTH * .8) - 40 , 50)];
//    introText3.backgroundColor = [UIColor redColor];
    introText3.text = @"Company Create Them For You.";
    introText3.textColor = [UIColor blackColor];
    introText3.textAlignment = NSTextAlignmentCenter;
    [introText3 setFont:[UIFont fontWithName:@"GillSans" size:40.0f]];
    [textBackgroundView addSubview:introText3];

    
    
    
    
    
    pullView = [[UIView alloc] initWithFrame:CGRectMake(20, SCREEN_HEIGHT / 3, SCREEN_WIDTH - 40, 625)];
//    pullView.backgroundColor = [UIColor darkGrayColor];
//    [self.view addSubview: pullView];
//
//    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"travelpick"]];
////    image.backgroundColor = [UIColor yellowColor];
//    
//    [pullView addSubview:image];
    
    
    UIImage * image = [UIImage imageNamed:@"travlepick.png"];
    
    UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
    
    imageView.frame = CGRectMake(20, SCREEN_HEIGHT / 3, SCREEN_WIDTH - 40, 625);
    
    [self.view addSubview:imageView];

    collectionVC = [[TIYLaunchCollectionVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    
    collectionVC.collectionView.frame = CGRectMake(0, 0, pullView.frame.size.width, pullView.frame.size.height);
    
//    [pullView addSubview:collectionVC.collectionView];
    
    
    newClients = [[UIButton alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT - 50, SCREEN_WIDTH, 50)];
//    newClients.backgroundColor = [UIColor redColor];
    [newClients setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    newClients.backgroundColor = [UIColor darkGrayColor];

    
    [newClients setTitle:@"Where Do You Want To Go?" forState:UIControlStateNormal];
    [newClients addTarget:self action:@selector(newClientMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:newClients];
    

//    existingClients = [[UIButton alloc] initWithFrame:CGRectMake(20, SCREEN_HEIGHT - 120, 200, 50)];
//    existingClients.backgroundColor = [UIColor redColor];
//    [existingClients setTitle:@"Existing Clients" forState:UIControlStateNormal];
//    [existingClients addTarget:self action:@selector(existingClientMethod) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:existingClients];
    
    

}


-(void)newClientMethod
{

    TIYNewClientVC * newClientVC = [[TIYNewClientVC alloc] initWithNibName:nil bundle:nil];
    
    [self.navigationController pushViewController:newClientVC animated:YES];

    
}



-(void)existingClientMethod
{


}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(BOOL)prefersStatusBarHidden {return YES;}


@end
