//
//  ViewController.m
//  customisedCell
//
//  Created by Mariann Thomas on 8/11/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell1.h"
#import "CustomTableViewCell2.h"
#import "HeaderTableViewCell.h"
#import "FooterTableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UIImageView *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableVIew.estimatedSectionFooterHeight = 60.0f;
    self.tableVIew.estimatedSectionHeaderHeight = 60.0f;
    self.tableVIew.estimatedRowHeight = 80.0f;
    UINib *cellNib = [UINib nibWithNibName:@"CustomTableViewCell1" bundle:[NSBundle bundleForClass:[CustomTableViewCell1 class]]];
    UINib *cellNib2 = [UINib nibWithNibName:@"CustomTableViewCell2" bundle:[NSBundle bundleForClass:[CustomTableViewCell2 class]]];
    UINib *headerNib = [UINib nibWithNibName:@"HeaderTableViewCell" bundle:[NSBundle bundleForClass:[HeaderTableViewCell class]]];
    UINib *footerNib = [UINib nibWithNibName:@"FooterTableViewCell" bundle:[NSBundle bundleForClass:[FooterTableViewCell class]]];
    [self.tableVIew registerNib:cellNib forCellReuseIdentifier:@"customCell"];
    [self.tableVIew registerNib:cellNib2 forCellReuseIdentifier:@"customCell2"];
    [self.tableVIew registerNib:headerNib forCellReuseIdentifier:@"headerCell"];
    [self.tableVIew registerNib:footerNib forCellReuseIdentifier:@"footerCell"];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    HeaderTableViewCell *tableHeader = [tableView dequeueReusableCellWithIdentifier:@"headerCell"];
    tableHeader.headerTab.text = @"My Profile Information";
    return tableHeader;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    FooterTableViewCell *tableFooter = [tableView dequeueReusableCellWithIdentifier:@"footerCell"];
    tableFooter.footerLabel.text = @"My Profile Information Ends";
    return tableFooter;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {             // Default is 1 if not implemented
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        CustomTableViewCell1 *customCell = [tableView dequeueReusableCellWithIdentifier:@"customCell"];
        customCell.profileName.text = @"Nathan Thomas";
        customCell.thoughtsLabel.text = @"Nothing is impossible in life, all we need is will and hardwork.";
        return customCell;
    }
    else {
    CustomTableViewCell2 *customCell2 = [tableView dequeueReusableCellWithIdentifier:@"customCell2"];
    customCell2.profileName1.text = @"Nathan Thomas";
    customCell2.shortInfo.text = @"I was born on 6th of January 2017 and I love cars.";
    customCell2.longInfo.text = @"I Live with my parents and is currently located in Charlotte, NC. My father works with TCS.";
    return customCell2;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return UITableViewAutomaticDimension;
 }

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return UITableViewAutomaticDimension;
}



@end
