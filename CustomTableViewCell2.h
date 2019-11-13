//
//  CustomTableViewCell2.h
//  customisedCell
//
//  Created by Mariann Thomas on 8/11/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell2 : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *profilePic1;
@property (weak, nonatomic) IBOutlet UILabel *profileName1;
@property (weak, nonatomic) IBOutlet UILabel *shortInfo;
@property (weak, nonatomic) IBOutlet UILabel *longInfo;

@end

NS_ASSUME_NONNULL_END
