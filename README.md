-MVC

-Model, View, Controller

snake case: hello_world,articles_controller

CamelCase: HelloWorld, MyNameIs

Task: Create an Help Page

Create a new todo resource

-Learn CRUD -database operations
-C -Create, R- Read, U -update, D -Delete
-What is a migration:
a file to create, update database

-How do we communicate with the db layer? Through models

-We will need a Todo Model

-Routes all the different
-Create a few Todo's

-Rails Console

-Creating Todos

name -what kind of todo

description-details of the todo

rails g migration create_todos

now i have a table
to interact with it
we will use a model

To Create a todo:

initiate a new Todo object

save the object to database

A primary key, also called a primary keyword, is a key in a relational database that is unique for each record. It is a unique identifier, such as a driver license number, telephone number

.new -> create a new object, but doesnt save it to databse

.create -> this will impact database right away as long as no errors

Look Other rails console methods available

Wrap Up Section 1-

-read about routes

-resources :todos what will it create?

-read about 1-to-many associations

resources :todos

give all of the CRUD routes

Welcome to Section 2!

-routes
-resources :todos

for a new todo

initiate a todo instance variable

@todo -Todo.new
instance variable
available to the controller
but also in view

corresponding actions:

new -form to eidt an existing todo
submits to create -hits the database or give an error

edit -form to eidt an existing todo
submits to update -hits the databse with patch or gives an error

index

list of all todos

show
displays an individual todo

delete
destroy a todo

flash massages 
i can add massages to flash(which is a hash)

then i can display the content of the messages that are in flash

Todo.find(params[:id])

VERSION CONTROL: GIT