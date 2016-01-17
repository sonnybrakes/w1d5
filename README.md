so what we're going to do is, we want to approach this in an object oriented way, so first we'll make a file and call it contact.rb.  so the first step, we're going to make a contact class because what we want to do is we want to represent the idea of a contact in our application.  so that's the first thing that we need to kind of wrap our minds around of.  every application we're going to build from this point forward is going to be object oriented so we need to think in terms of objects, rather than functions or methods or anything like that.  we need to build out objects that represent what it is that we want them to do.  

the next thing that we need to do and it's something that we'll repeat, is that what our goal is   when we're building out a class or an object is we need to keep that object like we have to have a crystalline focus on what the responsibilities of each object in the system are and we don't want things to cross over we don't want responsibilities to leak into a class where it's doing something that it wasn't intended to do.  so if we make a contact class, let's call it Contact  

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
