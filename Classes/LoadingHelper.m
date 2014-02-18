#import "LoadingHelper.h"
#import "DejalActivityView.h"

@implementation LoadingHelper
@synthesize loadingView=_loadingView;
@synthesize loadingCounter=_loadingCounter;
@synthesize isLoading=_isLoading;

- (id) init {
    self = [super init];
    if (self != nil) {
        _loadingView = nil;
        _loadingCounter = 0;
    }
    return self;
}

- (void)startLoading:(UIView *)view {
    _loadingCounter++;
    NSLog(@"startLoading - _loadingCounter: %d",_loadingCounter);
    
    if(!_loadingView && _loadingCounter == 1){
        @synchronized(self){
            _isLoading = YES;  
        }
        _loadingView = [DejalBezelActivityView activityViewForView:view withLabel:@"Carregando ..."];
    }
}

- (void)stopLoading {
    _loadingCounter--;
    NSLog(@"stopLoading - _loadingCounter: %d",_loadingCounter);
    
    if (_loadingView && _loadingCounter == 0){
        @synchronized(self){
            _isLoading = NO;
        }
        
        [_loadingView removeFromSuperview];
        _loadingView = nil;
    }
}

@end
