# Project Bubble Sort:
I am following along with [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks?ref=lnav) and my current project is to create my own bubble sorting methods. These are the instructions...

>Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
```ruby
    > bubble_sort([4,3,78,2,0,2])
    => [0,2,2,3,4,78]
```

>Now create a similar method called #bubble_sort_by which sorts an array by accepting a block. Remember to use yield inside your method definition to accomplish this. The block will have two arguments that represent the two elements of the array that are currently being compared. The block’s return will be similar to the spaceship operator you learned about before: If the result of the block execution is negative, the element on the left is “smaller” than the element on the right. 0 means both elements are equal. A positive result means the left element is greater. Use the block’s return value to sort your array. Test your method with the example below.

```ruby
    > bubble_sort_by(["hi","hello","hey"]) do |left,right|
    >   left.length - right.length
    > end
    => ["hi", "hey", "hello"]
```

# I have added a little extra for this project. 
There are two files in this repo "bubble_sort_methods" and "bubble_sort_class_methods". I created the "bubble_sort_class_methods" file because I want to be able to call my methods directly from the Array class.  

