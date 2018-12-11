//
//  ViewController.m
//  XLSubtractMask
//
//  Created by 李小龙 on 2018/12/10.
//  Copyright © 2018 李小龙. All rights reserved.
//

#import "ViewController.h"
#import "UIView+XLSubtractMask.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blackView;
@property (weak, nonatomic) IBOutlet UIView *visualEffectContainer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)actionScale:(UIButton *)sender {
    [UIView animateWithDuration:0.5 animations:^{
        self.blackView.subtractMaskView.transform = CGAffineTransformMakeScale(2, 2);
        self.visualEffectContainer.subtractMaskView.transform = CGAffineTransformMakeScale(2, 2);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 animations:^{
            self.blackView.subtractMaskView.transform = CGAffineTransformIdentity;
            self.visualEffectContainer.subtractMaskView.transform = CGAffineTransformIdentity;
        }];
    }];
}

- (IBAction)actionImage:(UIButton *)sender {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pikaqiu.png"]];
    imageView.frame = CGRectMake(30, 20, 100, 95);
    
    self.blackView.subtractMaskView = imageView;
    self.visualEffectContainer.subtractMaskView = imageView;
    
}

- (IBAction)actionText:(UIButton *)sender {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 240, 128)];
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:24];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"XLSubtractMask";
    
    self.blackView.subtractMaskView = label;
    self.visualEffectContainer.subtractMaskView = label;
    
}

@end
