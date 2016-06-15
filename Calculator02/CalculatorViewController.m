//
//  ViewController.m
//  Calculator02
//
//  Created by James O'Connor on 6/15/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "CalculatorViewController.h"

@interface ViewController ()
    {
        IBOutlet UITextField*firstEntry;
        IBOutlet UITextField*secondEntry;
        IBOutlet UILabel*outcome;
        double _addValue;
        double _firstValue;
        double _secondValue;
        double _add;
        double _subtract;
        double _multiply;
        double _divide;
}



@end

@implementation ViewController

//NSString *outcome.text =



//-(int) add:(int) a b:(int) b {
//    return a+b;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void) makeDouble {
    //convert firstEntry secondEntry to firstValue secondValue
    _firstValue = [firstEntry.text doubleValue];
    _secondValue = [secondEntry.text doubleValue];
}

-(double) _add:(double) a b:(double) b {
    return a+b;
}

-(double) _subtract:(double) a b:(double) b {
    return a-b;
}

-(double) _multiply:(double) a b:(double) b {
    return a*b;
}

-(double) _divide:(double) a b:(double) b {
    return a/b;
}

-(IBAction) plusButtonClicked {
    //call self makeDouble
    [self makeDouble];
    double result = [self _add: _firstValue b: _secondValue];
    outcome.text =[NSString stringWithFormat: @"%f", result];
}



-(IBAction) minusButtonClicked{
    //call self makeDouble
    [self makeDouble];
    double result = [self _subtract: _firstValue b: _secondValue];
    outcome.text =[NSString stringWithFormat: @"%f", result];
}
    
-(IBAction) multiplyButtonClicked{
    //call self makeDouble
    [self makeDouble];
    double result = [self _multiply: _firstValue b: _secondValue];
    outcome.text =[NSString stringWithFormat: @"%f", result];
    
}
    
-(IBAction) divideButtonClicked{
    //call self makeDouble
    [self makeDouble];
    double result = [self _divide: _firstValue b: _secondValue];
    outcome.text =[NSString stringWithFormat: @"%f", result];
    
}
    
-(IBAction) cButtonClicked{
    //return "double 0" outcome.text
    outcome.text = @"0.0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

@end
