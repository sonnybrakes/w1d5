# crm  

so what we're going to do is, we want to approach this in an object oriented way, so first we'll make a file and call it contact.rb.  so the first step we're going to take is make a contact class because what we want to do is we want to represent the idea of a contact in our application.  so that's the first thing that we need to kind of wrap our minds around of.  every application we're going to build from this point forward is going to be 'object oriented' so we need to think in terms of objects; rather than functions or methods or anything like that.  we need to build out objects that represent what it is that we want them to do.  

the next thing that we need to do and it's something that we'll repeat often, is that what. Our goal, when we're building out a class or an object, is to have a have a crystalline focus of what the responsibilities of each object in the system is and we don't want things to cross over.  we don't want responsibilities to leak into a class where it's doing something that it wasn't intended to do.  so let's make a contact class, and we'll call it Contact  

then before we write any of the code, what are going to be the responsibilities of the Contact class?  store the attributes of a Contact, definitely, that's the main responsibility of this Contact class.  so let's set that up.  

let's say we have five attributes: id, first name, last name, email, and a note about each user.  so how are we going to set up those attributes for this thing?  i heard a couple of people say initialize. we can do initialize, sure, right now if we do new_contact = Contact.new that'll work, right?  we have a class, that's great.  

we want to be able to store those five attributes in this object.  so how are we going to do that?   so we're going to make an initialize method is what we're saying.  

okay so let's set up the contact.  we'll forget about the id for now.  first_name, last_name, email, and note.  we're programming iteratively now, we don't need the final, final solution, we can change things as we go along.  we're just going to keep it simple for now. so now when we want to make a new_contact we need to pass these attributes in. we aren't storing the information yet.  

we are going to progress iteratively taking each step without getting ahead of ourselves.  each step needs to be understood thoroughly and working as expected before we continue.  this is the same approach we'll take with testing.  we'll write and test small pieces of code before we move on with the next piece of code.  

so we have this initialize method and we can pass these attributes in, but they're not being saved so let's actually save them.  so we're going to save them as instance variables @first_name = first_name, @last_name = last_name, @email = email, @note = note.  each one of these fields will be saved to an instance variable so that the Contact will remember those values.  so now we can create a new Contact.  

let's try it out.  this is a key important thing to remember and to note.  notice that we wrote a little bit of code and then we want to test that code to ensure it does what we intend it to do.  to do that we go into irb. whenever you're making a new class, a new object, we want to try it out incrementally as we go along, we don't want to wait until we've written many lines of code to try it for the first time, it's not going to be the time to find bugs.  just write a little bit of code then test it.  this is how we figure out how our code works.  it's worth trying it out whenever you make a change.  

so let's load it up in irb and see if we can make a new contact.  this is how you'll resolve any issues such as typos, etc.  it's worth trying it out.  

and it works, we can create a new contact, we can call the .class method on our new contact, but we can't access any of the instance variables.  so maybe that's the next thing we'll want to resolve.   so how do we do that?  

attribute accessor, attr_accessor, and what does it do?  attr_accessor creates the getter and setter methods.  

# attr_accessor

as a review let's type out one of these getters and setters methods for the first name.  so what is that going to look like? define first_name to define the getter to return an instance variable.  all we want to do is return the value stored in the @first_name instance variable.  that's what we're doing, we're reading from that variable.  the last line of execution is of our method is the return value.  so what about the the setter?  what does that look like?  

the getter and setter methods are replaced using the attr_accessor method.  when we use attr_accessor the getter and setter are written out for us inside the method, this saves us a lot of time.  

okay now let's talk about a circumstance where we don't know a person's email or note details yet.   so we want to add a Contact to our Contact list.  how do we make it so that we don't have to provide the email and the note?  or just the note or maybe all of it's optional.  what do we want to do here?  

we could take out the initialize method that way we don't need to pass any value and we can set the values later on.  so what happens if we do that?  let's try it out.  

an empty Contact is never useful in this application, is it?  i don't know, is it?  the reason we would use initialize is to say that if we don't pass in information to this object, the object is useless.  the object cannot perform its function.  in this case, having an empty contact, is that a valuable thing that we're able to do? maybe, maybe not.  

we want to be able to allow the user to create a new Contact and pass in all the information when we first create a Contact, but we don't want it to be restricted to that.  maybe there are use cases where we want to create an empty contact and then populating it after the fact is valuable.   we can actually find a happy medium here.  

a happy medium.  instead of using four named parameters here, what we're going to do is, we're going to use one parameter and then assume that that one parameter is a hash of key value pairs.   first_name is this, last_name is this, email is this, note is this.  notice that when we switch the attribute to a hash we don't have to all of the keys, right?  we can have some of them and not others, right?  if we look up a key in a hash and it doesn't have that key, what is the return value?  nil, right?  it doesn't exist.  it doesn't crash the program, it just sets that value to nil, which it would be, if you never set it aways, right?  

so what we can do here is instead of using: first_name, last_name, email, and note.  let's say we want to require: first_name and last_name, but the other two are optional.  what we'll do is say options equals an empty hash and then for the email and note we'll say options square brackets :email and options square brackets :note.  so if those things are in the options hash the value will be set.  if those things are not in the options hash the value will be set to nil, which is the default value for those variables anyways.  

so you pass the key in between the square brackets and it returns the value for that key.  that's how you dereference a key in a hash.  it's exactly the same syntax as an array except that you pass in the key, rather than an index integer.  

so we could have replaced all four, but now we actually now have it so that we must pass in the  first_name and last_name and optionally we can pass in the email and note.  

we'll see this pattern very frequently. this pattern comes up quite a lot in ruby in places where it doesn't look right.  if we have a method that takes more than three arguments usually that's something weird going on, right? and usually there's a way we can transform it into something that takes one argument that's a hash of key value pairs.  

we don't always want to replace our arguments with hashes, sometimes there are required arguments where an object really can't do its job unless we pass the information and we want those to be mandatory.  we need to enforce that information to be passed through.  
