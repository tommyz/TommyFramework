//
//  TommyViewController.m
//  TommyFramework
//
//  Created by Tommy-mac on 2019/10/17.
//  Copyright © 2019 Tommy-mac. All rights reserved.
//

#import "TommyViewController.h"
#import "Masonry.h"

@interface TommyViewController ()

@end

@implementation TommyViewController

#pragma mark - viewWillAppear
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
    
}

- (void)dealloc
{
    NSLog(@"dealloc");
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"initWithNibName");
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(appLicationDidEnterForeground)
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   object:nil];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *testView = [UIView new];
    testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:testView];
    
    [testView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(0);
        make.left.equalTo(self.view.mas_left).with.offset(0);
        make.right.equalTo(self.view.mas_right).with.offset(0);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(0);
    }];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.backgroundColor = [UIColor blueColor];
    [testView addSubview:backButton];
    [backButton addTarget:self action:@selector(backVC) forControlEvents:UIControlEventTouchUpInside];
    [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(testView.mas_top).with.offset(100);
        make.left.equalTo(testView.mas_left).with.offset(20);
        make.right.equalTo(testView.mas_right).with.offset(-20);
        make.size.height.mas_equalTo(44);
    }];
}

- (void)backVC
{
    NSLog(@"backVC");
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - NSNotification

- (void)applicationDidEnterBackground
{
    NSLog(@"applicationDidEnterBackground");
    /*
    for (NSInteger i = 0; i < self.bgs.count; i++)
    {
        LOTAnimationView *animationView = [self.bgs objectAtIndex:i];
        [animationView stop];
    }
    
    [self checkCloseFlash];
    
    if (self.appDelegate.tabBC.selectedIndex == 2)
    {
        
    }
    */
}

- (void)appLicationDidEnterForeground
{
    NSLog(@"appLicationDidEnterForeground");
    /*
    for (NSInteger i = 0; i < self.bgs.count; i++)
    {
        LOTAnimationView *animationView = [self.bgs objectAtIndex:i];
        [animationView play];
    }
    NSLog(@"self.appDelegate.tabBC.selectedIndex=%lu",(unsigned long)self.appDelegate.tabBC.selectedIndex);
    if (self.appDelegate.tabBC.selectedIndex == 2)
    {
     
        
    }
    */
    
}


@end
