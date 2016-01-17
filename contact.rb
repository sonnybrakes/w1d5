# so what we're going to do is, we want to approach this in an object oriented way, so first we'll make a file and call it contact.rb. so the first step, we're going to make a contact class because what we want to do is we want to represent the idea of a contact in our application. so that's the first thing that we need to kind of wrap our minds around of. every application we're going to build from this point forward is going to be object oriented so we need to think in terms of objects, rather than functions or methods or anything like that. we need to build out objects that represent what it is that we want them to do.
# the next thing that we need to do and it's something that i'll repeat, is that what your goal is   when your building out a class or an object is you need to keep that object like you have to have a crystaline focus on what the responsibilities of each object in the system are and you don't want things to cross over you don't want responsibilities to leak into a class where it's doing something that it wasn't intended to do. so if i make a contact class, let's call it Contact
class Contact
  def initialize(first_name, last_name, email, note)

  end
end

new_contact = Contact.new("Michel", "Frechette", "mifrec@hotmail.com", "Swell fella")
# then before we write any of the code, what are going to be the responsibilities of the Contact class? store the attributes of a Contact, definitely, that's the main responsibility of this Contact class. so let's set that up.
# let's say we have five attributes: id, first name, last name, email, and a note about each user. so how are we going to set up those attributes for this thing? i heard a couple of people say initialize. we can do initialize, sure, right now if we do new_contact = Contact.new that'll work, right? we have a class, that's great.
# we want to be able to store those five attributes in this object. so how are we going to do that? so we're going to make an initialize method is what we're saying.
# okay so let's set up the contact. we'll forget about the id for now. first_name, last_name, email, and note. we're programming iteratively now, we don't need the final, final solution, we can change things as we go along. we're just going to keep it simple for now. so now when we want to make a new_contact we need to pass these attributes in.
