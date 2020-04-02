------------------------------- Challenge instructions -------------------------------

Once you complete this exercise, please email the submission to jobs@theta-llc.com with your name, a hyphen, the position you're interviewing for, a colon, and 'Interview Challenge Submission' for in  the subject line. (e.g. 'John Public - Back-End Developer: Interview Challenge Submission').

Please don't hesitate contact your interviewer if you have any questions or feedback about the test. We're looking for cleverness and attention to detail, not how quickly you can get it done.

Please use whichever language you're comfortable with. As a developer, you're expected to have worked with a plethora of different programming languages, so represent yourself with your strongest language choice. As long as you can provide instructions on how to execute it so we can see the results, it's fine with us.

**For this homework challenge, you have to complete enough challenges to equal a total of 10 points, how you get to 10 is completely up to you**

**Calendar Matching (10 points):**

Imagine that you want to schedule a meeting of a certain duration with one of your Theta co-workers. You have access to your Theta calendar and your co-workers Theta calendar (both of which contain the entirety of your respective meetings for the day in the form of `[startTime, endTime]`), as well as both of your daily bounds (i.e. the earliest and the latest times at which you're available for meetings everyday, in the form of `[earliestTime, latestTime]`).

Write a fuction that takes in your calendar, your daily bounds, your co-worker's calendar, your co-worker's daily bounds, and the duration of the meeting that you want to schedule, and that returns a list of all the time blocks (in the form of [`startTime, endTime`]) during which you could schedule a meeting.

Note that times will be given and should be returned in military time. For example: `1:12`, `7:02`, and `17:38`.

***Sample Input***

```
calendar1 = [['9:00, '10:30'],['12:00, '13:00'], ['16:00, '18:00']]
dailyBounds1 = [['9:00, '20:30']
calendar2 = [['10:00, '11:30'],['12:30, '14:30'], ['14:30, '15:00'], ['16:00, '17:00']]
dailyBounds2 = [['10:00, '18:30']
meetingDuration = 30
```
***Sample Output***

`[['11:30, '12:00'],['15:00, '16:00'], ['18:00, '18:30']]`
        
**Water Area (5 points):**

You are given an array of non-negative integers where each non-zero integer represents the height of a pillar of width `1`. Imagine water being poured over all the pillars; write a function that returns the surface area of the water trapped between the pillars viewed from the front. Note that spilled water should be ignored.

***Sample Input***

```
heights = [0, 8, 0, 0, 5, 0, 0, 10, 0, 0, 1, 1, 0, 3]
```
***Sample Output***

`48`

**Four Number Sum (5 points):**

Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. the function should find all quadruplets in the array that sum up to the target sum and return a two-dimensional array of all these quadruplets in no particular order.

If no four numbers sum up to the target sum, the function should return an empty array.

***Sample Input***

```
array = [7,6,4,-1,1,2]
targetSum = 16
```
***Sample Output***

`[[7,6,4,-1], [7,6,1,2]] // the quadruplets could be ordered differently`

**Extra Credit (we recommended taking a stab, but seriously not mandatory)**

    Submit a code sample of something you've written with an explanation of its intended use. The example should:
        - Have instructions of how to execute it for us to review.
        - Be written in any language. Showcase your best.
        - Be no more than 1,000 lines of code.

**Prerequisites:**

- You will need an account in your virtual cloud of choice. Create one if you don't own one already. You can use free-tier resources for this test!
- Webserver has to be publicly accessible.
- You webserver should serve up a /version.txt file, containing only static text representing the version number of your webserver build, for example: Server version: Apache/2.4.6 (CentOS).

**Mandatory Work:**

- Fork this repository
- Provide instructions on how to create the server with your script
- Provide the script that can be run periodically (and externally) to check if the server is up and serving the expected version number. Use your scripting language of choice.
- Alter the README to contain the steps required to:

```
    1. Create the server.
    2. Run the checker script you created.
```

- Provide us credentials to login to the virtual cloud account. If you have other resources in it make sure we can only access what is related to this test.
- Give our account: theta_llc access to your fork, and send us an email when you’re done using the instructions above. Feel free to ask questions as needed!

**Q:** What will you be grading me on?

**A:** Scripting skills, ellegance, understanding of the technologies you use, security, documentation.


**Q:** Will I have a chance to explain my choices?

**A:** Feel free to comment your code, or put explanations in a pull request within the repo. If we proceed to a phone interview, we’ll be asking questions about why you made the choices you made.

**Q:** Why doesn't the test include XY and Z?

**A:** Dope question! PLEASE free to tell us how to make the test better. Or, you know, fork it and improve it! 






    1. Write a code that prints all combinations of positive integers in increasing order that sum to a given positive number:
            (For example, the program would take an input of and prints out:
            [1 1 1 1 1]
            [1 1 1 2]
            [1 1 3]
            [1 2 2]
            [1 4]
            [2 3]
            [5] 
            The elements need to be integers, not strings. 
            If the language you choose has a built-in function that accomplishes this task, try to avoid using it. 
            Additionally, n cannot equal 0 for the sake of this challenge ;))
        
    2. Submit a code sample of something you've written with an explanation of its intended use. The example should:
        - Have instructions of how to execute it for us to review.
        - Be written in any language. Showcase your best.
        - Be no more than 1,000 lines of code.