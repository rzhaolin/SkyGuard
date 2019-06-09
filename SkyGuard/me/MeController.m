//
// Created by oy on 2019-06-09.
// Copyright (c) 2019 rzl. All rights reserved.
//

#import "MeController.h"
@interface MeController ()<UIScrollViewDelegate>

@end

@implementation MeController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.delegate = self;
    scrollView.backgroundColor = [UIColor yellowColor];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 3, self.view.bounds.size.height);

    NSArray *array = @[[UIColor yellowColor], [UIColor redColor], [UIColor blueColor], [UIColor grayColor], [UIColor blackColor]];
    for (int i = 0; i < 5; i++) {
        [scrollView addSubview:({
            UIView * view = [[UIView alloc] initWithFrame:CGRectMake( self.view.bounds.size.width * i,
                    0, self.view.bounds.size.width,self.view.bounds.size.height)];
            view.backgroundColor = [ array objectAtIndex:i];
            view;
        })];
    }
    scrollView.pagingEnabled = YES;

    [self.view addSubview:scrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"scrollViewDidScroll");
}
- (void)scrollViewDidZoom:(UIScrollView *)scrollView NS_AVAILABLE_IOS(3_2){

}

// called on start of dragging (may require some time and or distance to move)
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDragging");
}
// called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset NS_AVAILABLE_IOS(5_0){
    NSLog(@"scrollViewWillBeginDragging");

}
// called on finger up if the user dragged. decelerate is true if it will continue moving afterwards
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"scrollViewDidEndDragging");
}

@end