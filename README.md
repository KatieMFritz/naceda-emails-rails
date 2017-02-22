# NACEDA HTML Email Generator

## What is this site?
This is a web application designed for NACEDA, the National Alliance of Community Economic Development Associations, by Katie Fritz.

It's meant to make it easy to create fancy HTML emails using predesigned templates.

## I'm from NACEDA. What do I do?
Check out the [help page](https://lit-mesa-60678.herokuapp.com/help).


## I'm not from NACEDA. Can I get a version of this?
Sure, I'd be happy to talk with you about adapting this app to your needs. Contact me at katie@katiemfritz.com.

## Developer Notes
Key files for changing the newsletter email template are all inside the `app` directory:
- `assets/stylesheets/_email-boilerplate-overrides.scss`
- `assets/stylesheets/variables.scss`
- `assets/stylesheets/email.scss`
- `views/layouts...` (all)
- `views/newsletters/_form.html.erb`
- `views/newsletter_mailer/newsletter.html.erb`
