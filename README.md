## JSON:API Sample on Rails

#### ⭐ Star us on GitHub — it motivates a lot!

### Requirements:

Clone down this repository. You will need `ruby` 3.0.2 installed globally on your machine, `sqlite3` database server

🚀 Running:
$ bin/bundle install
$ bin/rails db:create db:migrate db:seed
$ bin/rails s -p 3000

### Endpoints

#### Author
- gets all authors `GET http://0.0.0.0:3000/authors`
- gets all authors with their books `GET http://0.0.0.0:3000/authors?include=books`
- creates an author `POST http://0.0.0.0:3000/authors`
```
{
 data: {
   type: 'authors',
   attributes: { first_name: 'Foo', last_name: 'Baa' },
   relationships: [
     books: { data: [{ id: 1, type: 'books' }, { id: 2, type: 'books' }] }
   ]
 }
}
```
- updates an author `PUT/PATCH http://0.0.0.0:3000/authors`
```
{
 data: {
   type: 'authors',
   id: 1,
   attributes: { first_name: 'Foo', last_name: 'Baa' },
   relationships: [
     books: { data: [{ id: 1, type: 'books' }, { id: 2, type: 'books' }] }
   ]
 }
}
```
- deletes an author `DELETE http://0.0.0.0:3000/authors/1`


#### Books
- gets all books `http://0.0.0.0:3000/books`
- gets all books with their authors `http://0.0.0.0:3000/books?include=author`
- creates a book `POST http://0.0.0.0:3000/books`
```
{
 data: {
   type: 'books',
   attributes: { title: 'My book', description: 'My description' },
   relationships: [
     author: { data: { id: 1, type: 'authors' } }
   ]
 }
}
```
- updates a book `PUT/PATCH http://0.0.0.0:3000/books`
```
{
 data: {
   type: 'books',
   id: 1,
   attributes: { title: 'My book', description: 'My description' }
 }
}
```
- deletes a book `DELETE http://0.0.0.0:3000/books/1`
