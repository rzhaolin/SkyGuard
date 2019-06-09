//
// Created by oy on 2019-06-09.
// Copyright (c) 2019 rzl. All rights reserved.
//

#import "NewsController.h"

@interface NewsController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation NewsController

-(instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"视频";
    }
    return self;
}

 - (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 10;
    layout.minimumLineSpacing = 20;
    layout.itemSize = CGSizeMake((self.view.bounds.size.width - 10) / 2, 300);

    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds
            collectionViewLayout:layout];

     collectionView.delegate = self;
     collectionView.dataSource = self;

    // 注册
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];

    [self.view addSubview:collectionView];
 }

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
   cell.backgroundColor = [UIColor redColor];

    return cell;
}

@end