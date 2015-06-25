//
//  CollectionViewCell.m
//  W4D4_CVDemo
//
//  Created by Tim Mitra on 6/25/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
      
      UIView *bg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
      self.backgroundView = bg;
      self.backgroundView.backgroundColor = [UIColor whiteColor];
      
      UIView *sbg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
      self.selectedBackgroundView = sbg;
      self.selectedBackgroundView.backgroundColor = [UIColor darkGrayColor];    }
    return self;
}

@end
