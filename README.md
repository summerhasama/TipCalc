# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Summer Hasama**

Time spent: **10** hours spent in total

## User Stories

The following **required** functionality is complete:

* [ ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [ ] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [x] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
- [x] settings with default tip percentage
- [x] custom tip option that allows user to input a percentage in the textfield that can show/hide
- [x] button for split tab that can show/hide info for splitting the tab 2, 3, or 4 ways
- [x] custom split tab button with light up feature
- [x] changed font size and font style, added icons and background color to improve visuals

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/h40lH1poJO.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

I encountered many challenges while creating the tip calculator, especially when I decided to add optional features. Using the video walk through for the main features was not too difficult; however, implementing other ideas quickly became a hassle. Using user default for the default percentages was my first challenge as I was unsure how to connect the selection from the settings page to the main page. Another challenge I faced was trying to set up the custom option on the segment controller. I was having trouble changing the total and tip calculators with user input as the fourth option, while still keeping the calculator operations for the first 3 preset options. These were two of my main and most time consuming struggles. With some online research, many youtube videos, and some playing around with the code, I eventually figured out how to go about solving these issues. 

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
