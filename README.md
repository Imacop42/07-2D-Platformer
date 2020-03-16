# Platformer project

This is a project in godot for the class MSch-C220 in which I have created a simple platformer game. 
You control a stick figure in a pencil drawn world, searching for coins while avoiding the bugs. Collecting a coin gives you 25 points, and moving on to the next level gives you 50. every bug you hit reduces your score by 10, calculated upon entering the next level. At the end of the game, your score is multiplied by how many lives you had (starting with 3). you only lose lives from falling, not from hitting bugs.

There is a save and load feature that keeps track of what level you were on, your lives, and your score.
(it does not keep track of which coins you have picked up, which can possibly be exploited to increase you score, but Ihave not fixed this yet).

Also, my running animation is only playing the first frame and not the whole animation, and i did not figure out why it was happening. however, I dont think it really subtracts anything from the game overall.

Sound effects are from https://opengameart.org/content/fps-placeholder-sounds
game art is from https://opengameart.org/content/pencil-drawn-platformer
music is from https://opengameart.org/content/trouble-makers-coolriff-jazz
