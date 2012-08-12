@interface SBIconListPageControl : UIPageControl @end

%hook SBIconListPageControl

- (id)initWithFrame:(CGRect)frame
{
    self = %orig;
    if (self != nil) {
        UIImage *image = [UIImage imageNamed:@"PIBPageIndicatorBG"];
        if (image != nil) {
            // Set image as background of indicator view
            // NOTE: Image will be tiled (repeated) to fill the view.
            self.backgroundColor = [UIColor colorWithPatternImage:image];
        }
    }
    return self;
}

%end
