being_lucky
===========

Object-Oriented game in Ruby

Installation
------------

clone the project, then install bundler
<pre><code>gem install bundler</code></pre>

then run
<pre><code>bundle install</code></pre>

How to play:
------------

launch irb:
<pre><code>bundle exec irb</code></pre>
Now require the model:
<pre><code>require './models/being_lucky'</code></pre>

Set up the dice:
<pre><code>dice = Dice.new</code></pre>

You can now play with your friends according to the rules below:
<pre><code>BeingLucky.new(dice.throw_dice(5)).score</code></pre>

Game rules:
===========

Each player takes a turn consisting of one or more rolls of the dice.
On the first roll of the game, a player rolls all five dice which are
scored according to the following:

+ Three 1's => 1000 points
+ Three 6's => 600 points
+ Three 5's => 500 points
+ Three 4's => 400 points
+ Three 3's => 300 points
+ Three 2's => 200 points
+ One 1 => 100 points
+ One 5 => 50 points

A single dice can only be counted once in each roll. For example,
a "5" can only count as part of a triplet (contributing to the 500
points) or as a single 50 points, but not both in the same roll.

The dice not contributing to the score are called the non-scoring
dice. 
After a player rolls and the score is calculated, the scoring dice are
removed and the player has the option of rolling again using only the
non-scoring dice. If all of the thrown dice are scoring, then the
player may roll all 5 dice in the next roll.
The player may continue to roll as long as each roll scores points. If
a roll has zero points, then the player loses not only their turn, but
also accumulated score for that turn. If a player decides to stop
rolling before rolling a zero-point roll, then the accumulated points
for the turn is added to his total score.

### Getting "In The Game"
Before a player is allowed to accumulate points, they must get at
least 300 points in a single turn. Once they have achieved 300 points
in a single turn, the points earned in that turn and each following
turn will be counted toward their total score.

### End Game
Once a player reaches 3000 (or more) points, the game enters the final
round where each of the other players gets one more turn. The winner
is the player with the highest score after the final round.
