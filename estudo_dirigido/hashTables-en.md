# Stanford University - Algorithms 1 - SELF PACED 
## Algorithms: Design and Analysis
 
- Course   HASHING: THE BASICS - Hash Tables: Operations and Applications
 
## Video transcript

In this video we'll begin our discussion of hash tables; we'll focus first on the
support operations, and on some of the canonical applications. So hash tables are
insanely useful. If you want to be a serious programmer or a computer scientist
you really have no choice but to learn about hash tables. I'm sure many of you
have used them in your own programs in the past in fact. Now on the one hand what's
funny is they don't actually do that many things in terms of the number of supported
operations, but what they do, do they do really, really well. 

### So what is a hash table? 

Well conceptually, ignoring all of the aspects of the implementation, you may
wanna think of a hash table as an array. So one thing that arrays do super well is
support immediate randm access. So if you're wondering what's the position
number seventeen of some array, boom, with a couple of machine instructions you can
find out, wanna change the contents of position number 23 in some array? Done, in
constant time. So let's think about an application in which you want to remember
your friends phone numbers. So if you're lucky your friends parents were all u nu,
unusually unimaginative people and all of your friends names are integers let's say
between one and 10,000. So if this is the case then you can just maintain an array
of link 10,000. And to store the phone number of say, your best friend, 173, you
can just use position 173 of this modest sized array. So this array based solution
would work great, even if your friends change over time, you gain some here you
lose some there, as long as all your friends names happen to be integers
between 1-10,000. Now, of course, your friends have more interesting names:
Alice, Bob, Carol, whatever. And last names as well. So in principal you could
have an array with one position in the array for every conceivable name you might
encounter, with at least 30 letters set. But of course this array would be way too
big. It would be something like 26 raised to the thirtieth power and you could never
implement it. So what you'd really want is you'd want an array of reasonable size,
say, you know ballpark the number of friends that you'd ever have, so say in
the thousands or something, where it's positions are indexed not by the numbers,
not integers. [inaudible] Between one and 10,000, but rather by your friends Names
And what you'd like to do is you'd like to have random access to this array based on
your friend's name. So you just look up the quote unquote Alice position of this
array and. Boom, there would be Alice's phone number in constant time. And this,
on a conceptual level is basically what a hash table, can do for you. So there's a
lot of magic happening under the hood of a hash table and that's something we'll
discuss to some extent in other videos. So you have to have this mapping between the
keys that you care about, like your friends' names, and, numerical positions
of some array. That's done by what's called a hash function, but properly
implemented, this is the kind of functionality that hash tables gives you,
So like an array with its positions indexed by the keys that you're storing.

So you can think of the purpose of the hash table as to maintain a possibly
evolving set of stuff. Where of course the set of things that you're maintaining, you
know, will vary with the application. It can be any number of things. So if you're
running an e-commerce website, maybe you're keeping track of transactions. You
know, again, maybe you're keeping track of people, like for example, your friends and
various data about them. So maybe you're keeping track of I-P addresses, for
example if you wanna know, who was, were there unique visitors to your websites.
And so on. 

So a little bit more formally, you know, the basic operations, you need
to be able to insert stuff into a hash table. In many, but not all applications,
you need to be able to delete stuff as well. And typically the most important
operation is look-up. And for all these three operation you do it in a key based
way. Where as usual a key should just be a unique identifier for the record that
you're concerned with. So, for example, for employees you might be using social
security numbers. For transactions you might have a transaction ID number. And
then IP addresses could act as their own key. And so sometimes all you're doing is
keeping track of the keys themselves. 

So, for example, in IP addresses, maybe you
just want to remember a list of IP addresses. You don't actually have any
associated data but in many applications, you know, along with the key, is a bunch
of other stuff. So along with the employee's social security number, you
gotta remember a bunch of other data about that employee. But when you do the insert,
when you do the delete, when you do the look up, you do it based. On this key, and
then for example, on look up you feed the key into the hash table and the hash table
will spit back out all of the data associated with that key. We sometimes
hear people refer to data structures that support these operations as a dictionary.

So the main thing the hash table is meant to support is look up in the spirit of a
dictionary. I find that terminology a little misleading actually. You know, most
dictionaries that you'll find are in alphabetical order. So they'll support
something like binary search. And I want to emphasis something a hash table does
not do is maintain an ordering on the elements that it supports. So if you're
storing stuff and you do want to have order based operations, you wanna find the
minimum or the maximum, or something like that, a hash table's probably not the
right data structure. You want something more. You wanna look at a heap or you
wanna look at a, a search tree. But for applications in which all you have to do
is basically look stuff up you gotta, you gotta know what's there and what's not,
then there should be a light bulb that goes off in your head. And you can say,
let me consider a hash table, that's probably the perfect data structure for
this application. 

Now, looking at this menu-supported operations, you may be left
kinda unimpressed. Alright, so a hash table, in some sense, doesn't do that many
things; but again, what it does, it does really, really well. So, to first order.
What hash tables give you is the following amazing guarantee. All of these operations
run in constant time. And again this is in the spirit of thinking of a hash table as
just like an array. Where its positions are conveniently indexed by your keys, So
just like an array supports random access in constant time, you can see if, you
know, there's anything in the array position, and what it is. As similarly a
hash table will let you look up based on the key in constant time. So what is the
fine print? 

Well, there's basically two caveats. So the first thing is that hash
tables are easy to implement badly. And if you implement them badly you will not get
this guarantee. So this guarantee is for properly implemented hash tables. Now, of
course if you're just using a hash table from a well known library, it's probably a
pretty good assumption that it's properly implemented. You'd hope. But in the event
that you're forced to come up with your own hash table and your own hash function
and unlike many of the other data structures we'll talk about, some of you
probably will have to do that at some point in your career. Then you'll get this
guarantee only if you implement it well. And we'll talk about exactly what that
means in other videos. So the second caveat is that, unlike most of the
problems that we've solved in this course, hash tables don't enjoy worst case
guarantees. You cannot say for a given hash table that for every possible data
set you're gonna get cost and time. What's true is that for non-pathological data,
you will get cost and time operations in a properly implemented hash table. So we'll
talk about both of these issues a bit more in other videos, but for now just high
order bits are, you know, hash tables, constant time performance, subject to a
couple of caveats. 

So now that I've covered the operations that hash tables
support and the recommend way to think about them, let's turn our attention to
some applications. 
All of these applications are gonna be in some sense,
you know, kinda trivial uses of hash tables, but they're also all really
practical. These come up all the time. 

### An application

So the first application we'll discuss, which again is a canonical one, 
is removing duplicates from a bunch of stuff, 
also known as the deduplication problem. 
So in the De-duplication problem, the input is essentially a stream of objects. 
Where, when I say a stream I have kinda, you know
two different things in mind as canonical examples. 

So first of all you can imagine you have a huge file. 
So you have, you know, a log of everything that happened on
some website you're running. Or all of the transactions that were made in a store on
some day, And you do a pass through this huge file. So you're just in the middle of
some outer for loop going line by line through this massive file. The other
example of a stream that I had in mind, is, where you're getting new data over
time. So here, you might imagine that you're running software to be deployed on
an internet router. And data packets are coming through this router at a constant
extremely fast rate. And so you might be looking at, say, the IP addresses and the
sender, and use your data packet which is going through your router. So it would be
another example of a stream of objects. And now, what do you gotta do? What you
gotta do is you gotta ignore the duplicates. So remember just the distinct
objects that you see in this stream. And I hope you find it easy to imagine why you
might want to do this task in various applications. So, for example, if you're
running a website you might want to keep track of the distinct visitors that you
ever saw in a given day or a given week. If you're doing something like a web
crawl, you might want to identify duplicate documents and only remember them
once. So, for example, it would be annoying if in search results both the top
link and the second link both led to identical pages at different URLs, okay,
so search engines obviously want to avoid that, so you want to detect duplicate web
pages and only report unique ones. And the solution using a hash table is laughably
simple. So every time a new object arrives in the stream, you look it up. 
If it's there, then it's a duplicate and you ignore it. 
If it's not there, then this is a new object and you remember it. Qed, that's it. 
And so then after the string completes, 
so for example after you finish reading some huge file, if you just want
to report all of the unique objects, hash tables generally support a linear scan
through them and you can just report all of the distinct objects when this stream
finishes. 

### A second application

So let's move on to a second application slightly less trivial maybe
but still quite easy, and this is the subject of Programming Projects number
five. 
So this is a problem called the two sum problem. 
You're given as input an array of N number. 
These images are in no particular order. You're also given a
target sum, which I'll call T. 
And what you want to know is are there two integers
from amongst these N you are given that sum to T. Now the most obvious and naive
way to solve this problem is just to go over all N, choose two pairs of integers
in the input, and check each one separately. So that's clearly a quadratic
time algorithm. 

But now, of course, we need to ask, can we do better? And, yes,
we can. And first of all let's see what you'd do if you couldn't use any data
structures. So if you were clever, but you didn't use any data structures like a hash
table, here would be a reasonable improvement over the naive one. 
So the first step of a better solution is to sort A upfront, 
for example, using word sort or heap sort, something that runs in N log N time. 
So you may be asking about the motivation for sorting. 
Well, again, you know, one thing is just, you know whenever
you're trying to do better than N squared; you might think that sorting your data
somehow helps. 
Right and you can sort of do it almost for free in N log N time.
Now, why would sorting the array up front help us? Well, then the clever insight is
that for each entry of the array a, say the first entry, now we know what we're
looking for to achieve this given target, right. If the target that we're trying to
get to is summed to 100 and the first entry in the sorted array is 43, then we
know we're looking for a 57 somewhere else in. This now sorted array. And we know
that searching a sorted array is pretty easy, right. That just binary search. 
That just takes logarithmic time. 
So for each of the n array entries, we can look for a
complementary entry, namely of reach X we can look for T - X using binary search.
And to use binary search takes log N time. So the sorting upfront speeds up this
entire batch of N searches. So that's why it's a win. 
So, in the second step, because we do a linear number of binary searches, 
again, this is just N, the number of searches, times log-N, the time per search. 
So, this is just another theta of N log N factor. 
Alright, so that's pretty cool.
 
You, I don't think you could come up with this N log N solution without having 
some basic, facility with algorithms. 
This is already a really nice improvement over the naive N squared. 
But we can do even better. It is no reason we're stuck with an N log N lower bound
for the [inaudible] problem. 
Obviously, because the array is unsorted, we have to
look at all the integers. So we're not gonna do better than linear time. But we
can do linear time via a hash table. So a good question you might ask at this point
is what's the clue about this problem, about this task that suggests we want to
use a hash table. 
Well, so hash tables are going to dramatically speed up any
application where the bulk of the word is just repeated look-ups. 
And if we examine this N log N solution, 
once we have this idea of doing a search for T minus X for each value of X, 
we realize actually, you know, the only thing we needed the sorted
array for was to support look-ups. 
That's all binary search here is doing, is just looking stuff up. So we say, ah-ha. 
All of the work here in step two is from repeated lookups. 
We're paying an exorbitant relatively, logarithm per amount of time
per look-up, whereas hash tables can do them in cost and time. So, repeated
look-ups, ding, ding, ding, let's use a hash table; and indeed that's what gives
us linear time in this problem. 
So from the amazing guarantee of hash tables, we
get the following amazing solution for the true [inaudible] problem, although again
this is subject to the same fine print about you better use it properly
implemented hash table and you better not have pathological data. 

So rather than sorting, you just insert everything in the array into a hash table. 
So insertions cost time. So this is gonna be linear time rather than 
the N log N we were paying before. 
Once all the stuff is in the hash table, we just do the same
thing as in the N log N solution. 
For each X in the array, we look for its matching elements, 
T-X in the hash table using the cost and time look-up operation exported
by the hash table. 
And of course if for some X, you do find the matching element T minus X,
then you can just report X and T minus X. 
That proves that there is indeed a pair of integers of target sum T. 
If for every single element of the input array A,
you fail to find this matching element T minus X in the hash table, then, for sure, 
there is no pair of integers in the input that sums to T. 
So this solves the problem correctly. 
Moreover, constant time insertion, so that means this first step
is going to be O of end time. 
And constant time look-up. So that means that the second step is also gonna be linear time. 
That leaves subjects to the caveats that we discussed on the previous slide. 
So it's kind of amazing how many different applications of computer science 
boil down in their essence to repeated look up operations. 
Therefore, having a super fast look up operation, like that supported by
a hash table, permits these applications to scale to fantastic sizes. 
It's really amazing, and it drives a lot of modern technology. 
So let me just mention a couple examples. 
Again, if you look around or do some research on the web, you'll
quickly find many more. 

So originally what prompted researchers to think hard about
data structures that support super fast look ups, was back when people were first
building compilers. So this is a long time ago. This is in the fifties or so. And
these repeated look ups to figure out, you know, what has and has not been defined
before was, was emerging as a bottleneck in compilers. Back in the early days of
programming languages. And that was one of the early applications of hash tables, 
to support super fast lookups to speed up compile time to keep track of the
function of variable names and things like that. 

Hash table technology is also super useful for software on routers in the Internet. 
So, for example, you might want to block network traffic from certain sources. 
So, for example, maybe you suspect that a certain IP address has been taken over 
by spammers and so any traffic coming from that IP address you just want to ignore. 
And you don't wanna even let it get to the end host, 
to the computer on someone's desktop, or to someone's mobile
device but rather inside the internet. You wanna just drop packets that are coming
certain, certain centers. 
So what is that problem boil down to? Well, you might have a blacklist of IP addresses 
that you're refusing traffic from and then the tasks
faced by the router is really the look up problem. So if data packet comes in at
some insanely fast data rate, and when you wanna. You immediately, just look up, is
this in the blacklist or not, and if it is in the blacklist then you drop the packet,
if it's not, then you let it go through. 

A very different application is for speeding up search algorithms. 
And when I say a search algorithm, what I'm thinking
about here is something like a chess playing program. 
So something that does game tree exploration. 
So we've already talked a fair amount about graph search in
this class, but in our discussion of breadth first and depth first search, we
were thinking about graphs that you could basically write down. You could store them
in the main memory of your machine or, in the worst case, on some big cluster. So
maybe graphs, you know, about the size of the web graph or possibly smaller. 
But in a context of something like a chess playing program the graph that you're
interested in is way, way, way bigger than the web graph. So what's the graph we care
about for a chess playing program? Well, the nodes of the graph are going to
correspond to all possible configurations of chess pieces on a chess board. 
So every chess board that you might ever encounter in a game of chess. 
So that's a massive number of configurations. 
And you're never gonna be able to write down these vertices. 
The edges in this graph are going to take you from one
configuration to another. And there gonna correspond to legal moves. So if you can
move a bishop from one place to another place, and you get from one configuration
to another configuration, there's an edge in the graph corresponding to that move.
Now you can't write down this graph. So you can't implement breadth versus depth
versus search exactly as we discussed it before. But, you'd still like to do graph
exploration, right? So you'd like to have your computer program, reason about the at
least short term ramifications of your possible next move. 
So that will correspond to searching through this graph. 
Now, how are you gonna, it's remembering graphs search a really important property 
was you don't want to do redundant work, 
you don't want to re-explore things you've already explored.
That would be silly and might lead into loops and so on. And you can't write down
the graph just remembering where you've been, is suddenly a non-trivial problem;
but what is remembering where you've been, fundamentally? 
Fundamentally that's a lookup operation. 
So that is exactly what hash tables are for. 
So to be a little more concrete, you know, one where you use the hash table in, 
say, a chess playing program, is you'd stake, take the initial configuration. 
You would sort of imagine trying all possible moves from this configuration. 
And then you'd try, you'd sort of have all moves from your opponent and then 
you'd have all your moves in response. 
And you would always remember, as you were doing this reasoning, every
chessboard configuration you'd ever looked at before and you'd stick in the hash
table. And before you go exploring some configuration, you'd look it up in your
hash table to see if you've already explored it in the past. And if you have,
you don't bother. You've already seen it. 
All right. So chess playing programs operate by exploring systematically 
as many configurations as they'd have time for. 
You know, obviously, in a budget of three minutes or whatever you don't wanna
waste any work exploring any given configuration more than once. How do you
remember where you've been? Well everything you've explored you stick in a
hash table. Before you explore a configuration you look it up in a hash
table and see if you've already done it. 

So these of course are just scratching the surface. 
I just wanted to highlight a couple, you know, fairly different looking
applications, you know to convince you that hash tables come up all the time. And
the reason they come up all the time is because you know the need for fast
look-ups comes up all the time. It's kind of amazing how much technology is being
driven just by you know repeated fast look-ups. 

So as homework I encourage you to just sort of think about you know your own life, 
or think about technology out there in the world, and come up with some. 
You know, guesses about where probably hash tables are making something out there 
running blazingly fast. I think it won't take you more than a few minutes to come up with 
some good examples.


- © All Rights Reserved
   - Stanford University pursues the science of learning. Online learners are important participants in that pursuit. The information we gather from your engagement with our instructional offerings makes it possible for faculty, researchers, designers and engineers to continuously improve their work and, in that process, build learning science.
Terms of Service & Honor Code  Privacy Policy  Take more courses at online.stanford.edu
- © Stanford University. Stanford, California 94305.

