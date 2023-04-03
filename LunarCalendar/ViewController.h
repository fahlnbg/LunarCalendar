//
//  ViewController.h
//  LunarCalendar
//
//  Created by fahlnbg on 24/03/2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)dateChange:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *LunarText;
- (IBAction)Info:(id)sender;

@end

