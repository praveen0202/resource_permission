## Coding Assignment

### Purpose
We dont judge the correctness of your solutions.
We want to see how you architect your app, and what your coding style is.

### Contents

We want to set permissions Creatable/Updatable/Readable/Destroyable dynamically to each roles for any features we want.
Then through out our system we can easily check permissions by refering to their roles.

there are many features in system and we are going to add more features, it requires:
- sysadmin/director by default has full permissions.
- Manager by default Readable
- Staff by default has no permissions
- can create new roles in settings page.
- can choose Creatable/Updatable/Readable/Destroyable permissions for any `resources` (it can be 1 attribute of the models or it can be freely defined classes) to assign to roles in settings page.

For example: I want to limit role `Manager` to only `readable` to `Email Page`, so I will go to setting page and remove other permissions for `Email Page` from that role. (Email Page is just random example, it can be any resources!)

- Not only be able to assign permissions to features but also to each data field, for example Manager can only Readable Employee's email.

### requirements

- Design the models, db tables to support those Contents.
- No other gems
- Please CLONE this repo, implement and create your OWN REPO FOR SUBMISSION, send us the link to your repo. DO NOT CREATE PULL REQUEST TO THIS REPO.

### Bonus points
- Doing proper error handling, adding unit tests, and commenting your code.
- Add TODOs and FIXMEs in places where you cut a corner for expediency but know a production ready version would need refactoring, additional tests or handling of certain edge cases that you know or suspect to exist but don't handle yet.

### NOTE
We prepared for you models: company, employee, role.
