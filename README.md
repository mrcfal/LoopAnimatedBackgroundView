# LoopAnimatedBackgroundView
It is an easy trick to have an animated background. It is not the best in terms of memory (using views) but it does the job!

The way I do this is using tags.

## Inside the project

**CustomView.swift**
- CustomView is a custom UIView. Inside the _init(frame: CGRect)_ I set some illustrative dummy views (circular ones) and I add
them to the view as subviews. The key is that each subview has got a key tag number (-3 in my project), so I can recognize them
easily everytime I need.

**MyUtils.swift**
- Containts a function called _animateBackground(view: CustomView)_. This simple function animates the subviews of the customView based
on the tag.

**MainViewController.swift**
- Here I add the custom view and I call the function to animate it.
