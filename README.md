# LoopAnimatedBackgroundView

This project is an easy trick to have an animated background, although, in terms of memory (using views) still needs some improvements, it does the job pretty good! 

The way I did it is using tags, and below the structure of the project:

## Inside the project

**CustomView.swift**
CustomView is a custom UIView, inside the _init (frame: CGRect)_ in where I set some illustrative dummy views (circular ones) and I added them to the view as subviews. The key here is that each subview has a key tag number (-3 in my project), so makes easy to recognize them easily when it needed.

**MyUtils.swift**
Contains a function called _animateBackground (view: CustomView)_. This function animates the subview of the customView based on the tag.

**MainViewController.swift**
Here I added the custom view and called the function to animate it all.
