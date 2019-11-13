//
//  CustomTableViewCell1.h
//  customisedCell
//
//  Created by Mariann Thomas on 8/11/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell1 : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *profilePic;
@property (weak, nonatomic) IBOutlet UILabel *profileName;
@property (weak, nonatomic) IBOutlet UILabel *thoughtsLabel;

@end

NS_ASSUME_NONNULL_END
