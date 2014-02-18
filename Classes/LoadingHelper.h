#import <Foundation/Foundation.h>

@interface LoadingHelper : NSObject

@property (nonatomic, retain) UIView *loadingView;
@property (readonly) NSInteger loadingCounter;
@property (readonly) BOOL isLoading;

- (id) init;
- (void)startLoading:(UIView *)loadingView;
- (void)stopLoading;

@end
