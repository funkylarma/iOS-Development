//
//  SVDViewController.m
//  Button Fun
//
//  Created by Adam Chamberlin on 10/10/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "SVDViewController.h"

@implementation SVDViewController



- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title= [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed", title];
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
    NSDictionary *attributes = @{ NSFontAttributeName : [UIFont boldSystemFontOfSize:self.statusLabel.font.pointSize]
                                 };
    NSRange nameRange = [plainText rangeOfString:title];
    [styledText setAttributes:attributes range:nameRange];
    self.statusLabel.text = styledText;
}
@end
