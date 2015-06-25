//
//  ViewController.m
//  W4D4_CVDemo
//
//  Created by Tim Mitra on 6/25/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "HeaderView.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout> {
  NSArray *sectionOne, *sectionTwo, *sectionThree;
}
@property (weak, nonatomic) IBOutlet UIImageView *imegs;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  sectionOne = @[@"Apple", @"Banana", @"Grape", @"Orange", @"Cherry"];
  sectionTwo = @[@"Red", @"Yellow", @"green", @"Blue", @"Purple", @"Brown", @"Chartreuse"];\
  sectionThree = @[@"iPad Air", @"iPod", @"iPhone 6", @"iPad Air 2", @"iPhone 6 Plus", @"iPad Mini"];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  
  return 3;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
  
  if (indexPath.section == 2) {
    return CGSizeMake(125.f, 173.f);
  } else {
    return CGSizeMake(107.f, 173.f);
  }
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath   {
  
  // could have different headers
  HeaderView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
  
  header.headerLabel.text = @"Section Title";
  
  NSString *myString;
  switch (indexPath.section) {
    case 0:
      myString = @"Fruits";
      break;
    case 1:
      myString = @"Colours";
      break;
    case 2:
      myString = @"iOS Devices";
      break;
      
    default:
      break;
  }
  header.headerLabel.text = myString;

  
  return  header;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  
  NSUInteger result = 0;
  switch (section) {
    case 0:
      result = sectionOne.count;
      break;
    case 1:
      result = sectionTwo.count;
      break;
    case 2:
      result = sectionThree.count;
      break;
      
    default:
      break;
  }
  return result;
  
}

#pragma mark - cellForItemAtIndexPath

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  
  CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cvCell" forIndexPath:indexPath];
  
  NSString *myString;
  switch (indexPath.section) {
    case 0:
      myString = sectionOne[indexPath.row];
      break;
    case 1:
      myString = sectionTwo[indexPath.row];
      break;
    case 2:
      myString = sectionThree[indexPath.row];
      break;
      
    default:
      break;
  }
  cell.myLabel.text = myString;
  
  return cell;
  
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  
  NSLog(@"{%ld, %ld}", (long)indexPath.row, (long)indexPath.section);
  
//  UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
//  
//  cell.contentView.backgroundColor = [UIColor redColor];
  
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Section: %ld", (long)indexPath.section] message:[NSString stringWithFormat:@"You chose: %ld", (long)indexPath.row]  delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
  
  [alert show];
}

//- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
//  
//  UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
//  
//  cell.contentView.backgroundColor = [UIColor clearColor];
//}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
