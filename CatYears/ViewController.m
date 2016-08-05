//
//  ViewController.m
//  CatYears
//
//  Created by Amit Bobade on 03/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self reset];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)reset

{
    self.textfieldyears.text=@"";
    self.result.text=@"";
}

-(void)catYears
{
    if (self.textfieldyears.text.length > 0)
    {
        int humanAge = self.textfieldyears.text.intValue;
        
        int catYears = humanAge * 7;
        
        self.result.text = [NSString stringWithFormat:@"Your age in Cat Years is %d.",catYears];
    }
    else {
        NSLog(@"Enter valid number");
    }
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self catYears];
    
    return true;
}

- (IBAction)calculate:(id)sender
{
    [self catYears];
    
}

- (IBAction)clear:(id)sender
{
    [self reset];
}
@end
