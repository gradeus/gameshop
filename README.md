# The Gameshop

The Gameshop is the best place to read and give reviews about your favourite games. We have all the games
you can imagine; videogames, board games, party games, table games, and more.

Come and share with our community your impression of the games you have played, and check the ones you
woud like to try or buy.

## How to start the project locally

1. Make sure to have `ruby-2.6.6` installed
2. Make sure to have `bundler` installed, or run `$ gem install bundler` to install it
3. `$ bundle install`
4. `$ rails db:setup` (This will also run the `seeds` for you)
5. `$ rails s`

... and that's all! Now go to `http://localhost:3000` and be part of our community.

**NOTE:** Remember to install any missing JS pacakges with `yarn` if necessary

## Domain model

![Alt text](/erd.png?raw=true)

## Challenges

1. Create a way for our reviewers to delete reviews.
    - Make sure that users can only delete their own reviews
    - Should we have a moderator? Create a super admin who can delete reviews and
      modify them. How would you do it?
    - Use React for all calls to the server
    - Remember to add specs
2. Send a welcome email via Sendgrid and ActiveMailer to brand new accounts
3. The videogames genre could be split into more categories, like pc games, SNES, PS4.
  How would you add more functionality and genres to this? Would you change the code base to use something like a polymorphic association, or STI?
4. How would you devise a system in which our users get a newsletter of the top 10 reviews in our community every month?
