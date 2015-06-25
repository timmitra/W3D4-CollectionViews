//
//  CollectionViewCell.h
//  W4D4_CVDemo
//
//  Created by Tim Mitra on 6/25/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
