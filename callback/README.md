# `Callback`

![image](https://github.com/yutung-cheng/flutter_Callback_Demo/blob/master/callback/callback_demo.gif)

## Explain:

The Callback is a function which we pass as an argument into another function or method and can perform an action when we require it.

For Example, if you are working in any app and if you want any change in any value then what would you do?
Here you are in a dilemma that what you want to change either state() or a simple value/values. 
If you need to change states then you have various state-changing techniques but if you want to change simple values then you will use Callback.

Let’s Understand it by a small example I have made to make you understand,
here are two images below one is showing a text and a button by which you will navigate to next screen.
In next screen, there is a text field and a button which navigate to the previous screen with the changed text you will enter in the text field.

### `setState`
Notify the framework that the internal state of this object has changed.
So the first page will automatically update the value from callback function and show on the field.


src by: [Flutter Dev](https://medium.com/flutterdevs)
