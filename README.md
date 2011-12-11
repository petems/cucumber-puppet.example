An example puppet project, using cucumber-puppet.

Have a look at the commit log to see how the project evolves.

There are several points to take away:
* use an overarching catalog policy to specify generic behaviour of all
  catalogs
* use module specific features to describe those parts of your manifests or
  templates, that contain logic
* use module specific features to describe custom extensions like functions
* write high level feature files, don't get yourself hung up on details
  * as a corollary, steps are hardly reusable, they should be tailored to your
    specific situation
* keep your step implementations short, just write the code you wish you had
* the bulk of the work should be done by custom helper methods
