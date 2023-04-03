//
//  ViewController.m
//  LunarCalendar
//
//  Created by fahlnbg on 24/03/2023.
//

#import "ViewController.h"
#import "FLunarTime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)dateChange:(id)sender {
    NSDate *currentDate = [sender date];
    NSDateFormatter *ngay = [[NSDateFormatter alloc] init];
    ngay.dateFormat = @"dd";
    NSString *ngay1 = [ngay stringFromDate:currentDate];
    NSDateFormatter *thang = [[NSDateFormatter alloc] init];
    thang.dateFormat = @"MM";
    NSString *thang1 = [thang stringFromDate:currentDate];
    NSDateFormatter *nam = [[NSDateFormatter alloc] init];
    nam.dateFormat = @"y";
    NSString *nam1 = [nam stringFromDate:currentDate];
    
    NSString *ngayal = [FLunarTime NgayAL:[ngay1 intValue] :[thang1 intValue] :[nam1 intValue]];
    NSString *thangal = [FLunarTime ThangAL:[ngay1 intValue] :[thang1 intValue] :[nam1 intValue]];
    NSString *namal = [FLunarTime NamAL:[ngay1 intValue] :[thang1 intValue] :[nam1 intValue]];

    _LunarText.text = [NSString stringWithFormat:@"%@/%@/%@\n%@/%@",ngayal,thangal,namal,[FLunarTime dayOfVietnamese:[ngay1 intValue] :[thang1 intValue] :[nam1 intValue]],[FLunarTime monthOfVietnames:[ngay1 intValue] :[thang1 intValue] :[nam1 intValue]]];
}
- (IBAction)Info:(id)sender {

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/fahlnbg"] options:@{} completionHandler:nil];
}
@end
