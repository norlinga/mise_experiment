# This is... weird?

Yes.

This is an experiment for exploring the concept of _mise en place_ for application development.
For the purpose of this experiment, _mise en place_ is all the things that are a part of the application environment but aren't the application itself.
Think - 'backing services' like databases, container definitions, etc.
What does it look like if we organize the _mise en place_ (hereafter simply _mise_) so the ingredients are all in... a place?

## A ./mise Directory

... in a project directory, as a sibling to applications?
Why not?

Let's consider how we approach datastores in application development.
A Ruby on Rails application might start with a single datastore but will likely quickly depend on several several - Postgres, Redis, Elasticsearch, Mongo, whatever.
As the "project" grows, project being something we might consider separately from the Ruby on Rails app, we might see other apps like a Identity service appear.
Or an API service providing Graph.
Or a Nest app or whatever else - it doesn't matter.
What we can reasonably presume is that projects seldom stay as a single monolith.
As we add components to our project, let's imagine that the decision is made to use the same database service with a separate database and user for the other services.
Let's image also that the Identity service is written in Go.

In such a case, it only really makes sense for the Ruby on Rails app to own and control the database (migrations, schema versioning, etc.) through understanding the complete context of the application's development.
The Rails app, being first, is the gatekeeper for the database but should this be so?
A _mise_ approach separates and generalizes application _mise_.
In this example app, we can anticipate emergent common tooling that allows us to migrate, manage, and configure the database.
A _mise_ approach allows for simpler, common tooling and tooling reuse.
