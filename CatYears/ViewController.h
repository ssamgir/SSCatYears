//
//  ViewController.h
//  CatYears
//
//  Created by Amit Bobade on 03/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

- (IBAction)calculate:(id)sender;
- (IBAction)clear:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *result;
@property (strong, nonatomic) IBOutlet UITextField *textfieldyears;


@end

