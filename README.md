# Spring 2015 Midterm, Part 1

## Setup

 1. **Fork** this repository to your own account.
 1. Clone your fork to your computer.
 1. `cd` into your fork.
 1. Run the `bundle install` command.
 1. Start up your `rails server`.
 1. In Chrome,
  - navigate to [http://localhost:3000](http://localhost:3000)
  - in another tab, navigate to [http://geometer.herokuapp.com](http://geometer.herokuapp.com)
  - you should see the same thing in both tabs

## Introduction

This application is a broken version of a simple geometry calculator. Your job is to fix it. Read the home page to get an idea of what the application should be able to do.

There are six shapes for which the application should be able to calculate areas. The first action, **square**, should be working. Confirm this by clicking the example links to make sure you set up correctly.

The actions for the other five shapes are either missing or broken. Click each example links in your application on [http://localhost:3000](http://localhost:3000) and you will see that something goes wrong for each one.

The final URL, [/random_circles](http://localhost:3000/random_circles), should display a page with links to 5 circles of random radii. Right now, the page doesn't display the information properly, and the links are all static. You should first complete the **circle** action, and then turn your attention to the broken **random** view.

As a reference, I have put up a fully-functional version of the application at [http://geometer.herokuapp.com](http://geometer.herokuapp.com). This is your target. Your local app is has a grey navbar, and the reference app has a red navbar so that you don't get confused between tabs as you try to check your work.


## Rules

You may refer to your notes, homeworks, the Ruby docs, GitHub, the forum, or anything else **except** for a live person (e.g., one of your classmates or a developer friend).

Close/put away/don't use any messaging client, including but not limited to email, chat, SMS, smart watches, walkie talkies, vocal chords, sign language, and Google Glass.

To turn in the exam, you must commit and sync your solutions back up to your fork on github.com. Verify in your browser at `http://github.com/YOUR_ACCOUNT_NAME/geometer` that the most recent version of your changes are live. **You must be signed in to GitHub.com to see the repository.**

You will have 90 minutes to complete the exam, including this part and all other parts. If you finish early, you may leave the classroom and resume your messaging clients (i.e., talk amongst yourselves, email, etc). However, **you must sign out with me before you leave**. While you are in the room, absolutely no email, chat, etc. Any changes made to your GitHub repository after your sign-out time will not count towards your grade.

## Hints

 - **Commit and sync often**; in particular, after you complete a problem and before you start the next.
 - Let the error messages guide you. They are trying to be helpful; they just have poor social skills. Try to make sense of their overly formal language.
 - Refer to your past work. This isn't a memorization competition.
 - If you encounter an error that you think is environment or git related, ask for help right away; I’ll tell you if it’s something you should be figuring out on your own or not.
 - You don’t have to worry about CSS styling at all; just get the right content to show up for the right URL.
 - Use the server log to verify that URLs are being routed to the actions you think they are, and to see what is coming in to the `params` hash.
 - In your browser, don’t get confused between the target app (http://geometer.herokuapp.com) and your local app (http://localhost:3000). Make sure you are refreshing your own local app to test your work.
 - Don't get stuck on any one thing for too long; move on and score easy points on the next problem.

## Good luck!
