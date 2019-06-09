//
//  ViewController.m
//  SkyGuard
//
//  Created by oy on 2019/6/7.
//  Copyright © 2019 rzl. All rights reserved.
//

#import "ViewController.h"
#import "MyTextView.h"
#import "WebViewController.h"

@interface ViewController ()
@property (nonatomic, strong, readwrite)MyTextView *uiView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.uiView = [[MyTextView alloc] init];
    self.uiView.backgroundColor = [UIColor redColor];
    self.uiView.frame = CGRectMake(0, 0, 100, 100);
    [self.view addSubview:self.uiView];
    self.uiView.layer.cornerRadius = 5;
    self.uiView.layer.borderColor = [UIColor blueColor].CGColor;
    self.uiView.layer.borderWidth = 2;


//    UIImage *uiView1 = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
//    [self.view addSubview:uiView1];

     UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(140, 140, 100, 100)];
     button.backgroundColor = [UIColor blueColor];
     [button setTitle:@"ssss" forState:UIControlStateHighlighted];
     [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];


    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    [self.uiView addGestureRecognizer:gestureRecognizer];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

}


-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

-(void) pushController {
    WebViewController *controller = [[WebViewController alloc] init];
    controller.view.backgroundColor = [UIColor whiteColor];
    controller.navigationItem.title = @"行情";

    UIBarButtonItem *left = [[UIBarButtonItem alloc]
            initWithTitle:@"返回"
                    style:UIBarButtonItemStylePlain
                   target:self action:@selector(back)];
    controller.navigationItem.leftBarButtonItem = left;

    UIBarButtonItem *rightNavigationBtn = [[UIBarButtonItem alloc]
            initWithTitle:@"分享"
                    style:UIBarButtonItemStylePlain
            target:self action:@selector(clickShare)];
    controller.navigationItem.rightBarButtonItem = rightNavigationBtn;

    [self.navigationController pushViewController:controller animated:YES];
}

-(void)clickShare {
    NSLog(@"clickShare");
}

-(void)back {
   [self.navigationController popViewControllerAnimated:YES];
}

-(void)clickButton {
//    [UIView animateWithDuration:1.f delay:0.f usingSpringWithDamping:0.5 initialSpringVelocity:0.5
//                        options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        self.uiView.frame = CGRectMake((self.view.bounds.size.width - 200) / 2, (self.view.bounds.size.height - 200) / 2, 200, 200);
//    } completion:^(BOOL finished) {
//        NSLog(@"animation finished");
//         self.uiView.frame = CGRectMake(0, 0, 100, 100);
//    }];
      CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:<#(nullable NSString *)path#>]
}

@end
