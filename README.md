# I Know I Can, But Should I?

## Abstract

You __can__ use a hammer to drive a screw into wood, but I’d recommend a screwdriver. Why? And when is a hammer the better option? This talk will propose a framework to use when comparing alternative technical choices. I won’t decide for you, but will leave you with a structure to apply in your decision-making process.

The ruby toolbox is vast. While Rails provides a default experience, it leaves plenty of room for alternatives. In learning how to do something, you may uncover different ways to accomplish the same goal. Determine which tool fits best in your situation with these lessons.


## Presentation Details

The Rails Doctrine frequently speaks to the breadth of options available at your disposal within the framework. There are many [sharp knives](https://rubyonrails.org/doctrine/#provide-sharp-knives) in ruby that, when used judiciously, can facilitate a great result for your product, your team, and your code. However, knowing in which situations to reach for one tool, technology, or architecture when the framework supports [many paradigms](https://rubyonrails.org/doctrine/#no-one-paradigm) is difficult. Having the option to [make substitutions](https://rubyonrails.org/doctrine/#omakase) is liberating, but imposing.

Some groups or situations may demand rigorous up-front [evaluations](https://en.wikipedia.org/wiki/Analysis_of_Alternatives) prior to determining a solution. While those exercises can inform our choices, a lighter-weight approach is more appropriate in most decisions we make on a daily basis as developers. When presented with multiple options that will solve a problem, the following criteria are helpful to consider:

* What impact does this have on the code, the product, and the team?
* What cost and risk will be incurred by introducing this solution?
* How will this be maintained over time?
* Has the team encountered something similar to this before? What was the result?

Not all of these questions may be applicable in all situations, and the relative weight of one over the others will also vary, depending on the context of the team or the problem.

## Slides

The latest iteration of the slides that accompany this presentation are
available [here](i_know_i_can_should_i.key) in this repository. The slide deck
in this repo is in macOS's Keynote format. A copy of the slides are also
available on [SpeakerDeck](https://speakerdeck.com/kevinmurphy/i-know-i-can-but-should-i-evaluating-alternatives).

## Code Examples

The presentation uses various snippets of code to illustrate how the different
criteria proposed for evaluation can be used to determine the relative benefit
of one alternative vs. another. All of the code samples in the presentation have
been built out as part of a rails app in this repo. Below you can find
references to relevant commits that introduced the code used in the
presentation.

### Impact

* Welcome mailer via [ActiveRecord callback](https://github.com/kevin-j-m/evaluating-alternatives/commit/77c1e27ee5c917b671c1560df7be65938c819cfa)
* Welcome mailer via [separate class](https://github.com/kevin-j-m/evaluating-alternatives/commit/646d36b55f50a8f85f9dd5dc00955a5ce7efef79)

### Cost

* Limit access to create resource via [conditional](https://github.com/kevin-j-m/evaluating-alternatives/commit/58597ffcd169b404ba101e23bbd8279879917f8a)
* Limit access to create resource via [3rd party authorization library](https://github.com/kevin-j-m/evaluating-alternatives/commit/ae04473fb7a0e76234b2d7f3b6385a01dbea2429)

### Maintenance

* View data collection event date using [rails timestamp](https://github.com/kevin-j-m/evaluating-alternatives/commit/19b47a0f86e8bea6458b763053acc5c01abc031a)
* View data collection event date using [named attribute](https://github.com/kevin-j-m/evaluating-alternatives/commit/ea88da51a9e60793679e7d3af6696f2d265fb016)

### Consistency

* Warn user about [consequences](https://github.com/kevin-j-m/evaluating-alternatives/commit/f3267da83ebbb6c710d42c3207e15ffb56a9d829) of editing personal information

## Seen At

* [BostonRB](https://www.meetup.com/bostonrb/events/260131301/) - April 9, 2019
* [RailsConf](https://www.youtube.com/watch?v=2NiePLJVjNI) - May 1, 2019
