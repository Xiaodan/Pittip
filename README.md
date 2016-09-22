# Pre-work - PitTip

PitTip is a tip calculator application for iOS.  
This is my App Icon:  
<img src="/Pittip/Pittip/Assets.xcassets/pittip_new/ios/AppIcon.appiconset/Icon-App-40x40@3x.png" title="App Icon" width="" alt="App Icon" />

Submitted by: Sally Zhang

Time spent: 9 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Designed and added an app icon with the pre-launch loading screen
- [x] Created a better UI using color combinations
- [x] Dismissing keyboard
- [x] Settings page to enter a customized tax amount or to choose a state for using the average combined sales tax rate of that state from the scrolling list  
- [x] Main page will show either a customized tax is entered or a state is selected


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
- In my Settings page, I tried to add a widget that enables people to choose a state for calculating the state sales tax. I then found out that the UIPickerView would help. However, people may also want to enter a customized tax shown on the restaurant receipt. So, I had to make the taxTotalLabel respond to either the UITextField or the UIPickerView. When the customized tax is selected, the state shown on the main page should be "Customized tax". Some logics were implemented to make this happen smoothly.   
- This is my first iOS app. So, I spent a lot of time in figuring how to keep data persistent. For the current solution for storing the combined tax rates of each state, I used two arrays. Later, I may try different data structures and data storages. 

## License

    Copyright 2016 Sally Zhang

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
