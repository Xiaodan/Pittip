# Pre-work - PitTip

PitTip is a tip calculator application for iOS. This App was written with Xcode 8 and Swift 3.    
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
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Designed and added an app icon with the pre-launch loading screen
- [x] Created a better UI using color combinations
- [x] Dismissing keyboard
- [x] Settings page to enter a customized tax amount or to choose a state for using the average combined sales tax rate of that state from the scrolling list  
- [x] Main page will show either a customized tax is entered or a state is selected  
- [x] Currency format for displaying amounts. E.g. $123,336.34   

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

This is the overview of the application, which includes the launching page, the main page and the settings page.    
<img src='/Pittip/LiceCapGifs/overview.gif' title='App Overview' width='' alt='App Overview' />  

This is the launching page when the user restarts the app. The keyboard will automatically show up so the user can enter the bill amount.  
<img src='/Pittip/LiceCapGifs/launch_page.gif' title='App Launching Page' width='' alt='App Launching Page' />   

On the main page of PitTip, the user can modify the bill amount with the keyboard as well as adjust the tip percentage with the segmented control. There are four choices for now: 15%, 18%, 20% and 25%. Selected tax rate is in purple color.  
<img src='/Pittip/LiceCapGifs/main_page.gif' title='Main Page' width='' alt='Main Page' />

On the settings page of PitTip, the user can 1) set a default tip percentage; 2) set a customized tax amount that will be added toward the total on the main page; 3) choose a state with the scrolling list picker and the combined sales tax will be reflected on the main page and will be used to calculate the tax total.  
<img src='/Pittip/LiceCapGifs/settings_page.gif' title='Settings Page' width='' alt='Settings Page' />



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
