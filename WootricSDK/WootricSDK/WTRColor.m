//
//  WTRColor.m
//  WootricSDK
//
// Copyright (c) 2018 Wootric (https://wootric.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "WTRColor.h"

@implementation WTRColor

+ (UIColor *)viewBackgroundColor {
  return [UIColor colorWithRed:0 green:0 blue:0 alpha:0.85];
}

+ (UIColor *)dismissXColor {
  return [UIColor whiteColor];
}

+ (UIColor *)sliderModalBorderColor {
  return [self colorWithHexString:@"EBEBEB"];
}

+ (UIColor *)grayGradientTopColor {
  return [self colorWithHexString:@"#FDFDFD"];
}

+ (UIColor *)grayGradientBottomColor {
  return [self colorWithHexString:@"#F7F7F7"];
}

+ (UIColor *)sliderBackgroundColor {
  return [self colorWithHexString:@"#EFEFEF"];
}

+ (UIColor *)sliderDotBorderColor {
  return [self colorWithHexString:@"#E6E6E6"];
}

+ (UIColor *)anchorAndScoreColor {
  return [self colorWithHexString:@"#66737E"];
}

+ (UIColor *)sendButtonDisabledBackgroundColor {
  return [[self colorWithHexString:@"#0058FF"] colorWithAlphaComponent:0.4f];
}

+ (UIColor *)sendButtonBackgroundColor {
  return [self colorWithHexString:@"#0058FF"];
}

+ (UIColor *)poweredByColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)optOutTextColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)wootricTextColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)sliderValueColor {
  return [self colorWithHexString:@"#024EA9"];
}

+ (UIColor *)sliderDotSelectedColor {
  return [self colorWithHexString:@"#024EA9"];
}

+ (UIColor *)selectedValueDotColor {
  return [self colorWithHexString:@"#024EA9"];
}

+ (UIColor *)selectedValueScoreColor {
  return [self colorWithHexString:@"#024EA9"];
}

+ (UIColor *)socialShareQuestionTextColor {
  return [self colorWithHexString:@"#3081C2"];
}

+ (UIColor *)facebookLogoTextColor {
  return [self colorWithHexString:@"#105DA0"];
}

+ (UIColor *)twitterLogoTextColor {
  return [self colorWithHexString:@"#105DA0"];
}

+ (UIColor *)selectedValueUnderlineColor {
  return [self colorWithHexString:@"#0058FF"];
}

+ (UIColor *)editScoreTextColor {
  return [self colorWithHexString:@"#0058FF"];
}

+ (UIColor *)textAreaBorderColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)textAreaTextColor {
  return [self colorWithHexString:@"#7F7F7F"];
}

+ (UIColor *)textAreaCursorColor {
  return [self colorWithHexString:@"#3081C2"];
}

+ (UIColor *)callToActionButtonBackgroundColor {
  return [self colorWithHexString:@"#0058FF"];
}

+ (UIColor *)iPadCircleButtonBorderColor {
  return [self colorWithHexString:@"#CBCBCB"];
}

+ (UIColor *)iPadCircleButtonTextColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)iPadCircleButtonSelectedBackgroundColor {
  return [self colorWithHexString:@"#B3CDFF"];
}

+ (UIColor *)iPadCircleButtonSelectedBorderColor {
  return [self colorWithHexString:@"#B3CDFF"];
}

+ (UIColor *)iPadPoweredByWootricTextColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)iPadQuestionsTextColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)iPadFeedbackTextViewBackgroundColor {
  return [self colorWithHexString:@"#FAFAFA"];
}

+ (UIColor *)iPadSendButtonBackgroundColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)iPadThankYouButtonBorderColor {
  return [self colorWithHexString:@"#0058FF"];
}

+ (UIColor *)iPadThankYouButtonTextColor {
  return [self colorWithHexString:@"#0058FF"];
}

+ (UIColor *)iPadNoThanksButtonBorderColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)iPadNoThanksButtonTextColor {
  return [self colorWithHexString:@"#253746"];
}

+ (UIColor *)colorWithHexString:(NSString *)hexString {
  NSString *noHashString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
  NSScanner *scanner = [NSScanner scannerWithString:noHashString];
  [scanner setCharactersToBeSkipped:[NSCharacterSet symbolCharacterSet]];

  unsigned hex;
  if (![scanner scanHexInt:&hex]) return nil;
  int r = (hex >> 16) & 0xFF;
  int g = (hex >> 8) & 0xFF;
  int b = (hex) & 0xFF;

  return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:1.0f];
}

@end
