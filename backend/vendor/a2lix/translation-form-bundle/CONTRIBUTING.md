# TranslationFormBundle project contribution

Thanks for your interest in TranslationFormBundle!

This document is about issues and pull requests.

## Summary

* [Issues](#issues)
* [Pull Requests](#pull-requests)
* [Code Reviews](#code-reviews)

## Issues

First, check if you are up to date: is your version still supported, and are
you using the latest patch version?

If you happen to find a bug, we kindly request you report it. However,
before submitting it, please check the [project documentation available
online](http://a2lix.fr/bundles/translation-form/).

Then, if it appears that it is indeed a real bug, you may report it using
Github by following these points are taken care of:

* Check if the bug is not already reported!
* The title sums up the issue with clarity.
* A description of the workflow needed to reproduce the bug. Please try to make
  sentences, dumping an error message by itself is frowned upon.
* If your issue is an error page, you must provide us with a stack trace. With
  recent versions of Symfony, you can even get stack traces as plain text at the
end of the page. Just look for "Stack Trace (Plain Text)", and copy/paste what
you see. **Do not** make a screenshot of the stack trace, as screenshots are
not indexed by search engines and will make it difficult for other people to
find your bug report. If you have an issue when using the Symfony CLI,
use the `-vvv` option to get a stack trace.
* Screenshots should be considered additional data, and therefore, you should
  always provide a textual description of the bug. It is strongly recommended
to provide them when reporting UI-related bugs.
* If you need to provide code, make sure you know how to get syntactic
  coloration, in particular with [fenced code
blocks](https://help.github.com/articles/creating-and-highlighting-code-blocks/).
When you feel the code is to long, use external code pastebin like
https://gist.github.com/ or http://hastebin.com/ . If this is not sufficient,
just create a repository to show the issue.

> _NOTE:_ Don't hesitate to give as much information as you can (OS, PHP
> version, extensions...)

## Pull Requests

All the team will be glad to review your code changes propositions! :smile:

But please, read the following before.

### The content

#### Coding style

Each project follows [PSR-1](http://www.php-fig.org/psr/psr-1/), [PSR-2](http://www.php-fig.org/psr/psr-2/)
and [Symfony Coding Standards](http://symfony.com/doc/current/contributing/code/standards.html) for coding style,
[PSR-4](http://www.php-fig.org/psr/psr-4/) for autoloading.

Please [install PHP Coding Standard Fixer](http://cs.sensiolabs.org/#installation)
and run this command before committing your modifications:

```bash
php-cs-fixer fix --verbose
```

Please note that we try to keep phpdoc to a minimum, so if an `@param` phpdoc
comment brings nothing more than the type hint and variable name already do,
it should be removed. Descriptions are optional if you want to document a type.

```php
/**
 * @param Bar|Baz $foo
 * @param int     $limit a crucial, highly interesting comment
 */
protected function bar($foo, string $name, int $limit)
{
    // ...
}
```

Please also note that multiline signatures are allowed when the line is longer than 120 characters.

#### The tests

If your PR contains a fix, tests should be added to prove the bug.

If your PR contains an addition, a new feature, this one has to be fully covered by tests.

Some rules have to be respected about the test:

* Annotations about coverage are prohibited. This concerns:
  * `@covers`
  * `@coversDefaultClass`
  * `@coversNothing`
  * `@codeCoverageIgnore`
  * `@codeCoverageIgnoreStart`
  * `@codeCoverageIgnoreEnd`
* All test methods must be prefixed by `test`. Example: `public function testItReturnsNull()`.
* As opposed, the `@test` annotation is prohibited.
* All test method names must be in camel case format.
* Most of the time, the test class should have the same name as the targeted class, suffixed by `Test`.
* The `@expectedException*` annotations are prohibited. Use `PHPUnit_Framework_TestCase::setExpectedException()`.

### Writing a Pull Request

#### The subject

Ideally, a Pull Request should concern one and **only one** subject, so that it
remains clear, and independent changes can be merged quickly.

If you want to fix a typo and improve the performance of a process, you should
try as much as possible to do it in a **separate** PR, so that we can quickly
merge one while discussing the other.

The goal is to have a clear commit history and make a possible revert easier.

If you found an issue/typo while writing your change that is not related to
your work, please do another PR for that. In some rare cases, you might be
forced to do it on the same PR. In this kind of situation, please add a comment
on your PR explaining why you feel it is the case.

#### The Change log

For each PR, a change log must be provided.

There are few cases where no change log is necessary:

* When you fix a bug on an unreleased feature.
* When your PR concerns only the documentation (fix or improvement).

**Do not** edit the `CHANGELOG.md` directly though, because having every
contributor write PR with changes in the same file, at roughly the same line is
a recipe for conflicts. Instead, fill in the dedicated section that should
appear in a textaread when submitting your PR.

Your note can be put on one of these sections:

* `Added` for new features.
* `Changed` for changes in existing functionality.
* `Deprecated` for deprecation of features that will be removed in next major release.
* `Removed` for deprecated features removed in this release.
* `Fixed` for any bug fixes.
* `Security` to invite users to upgrade in case of vulnerabilities.

More information about the followed changelog format: [keepachangelog.com](http://keepachangelog.com/)

#### The base branch

Before writing a PR, you have to check on which branch your changes should be based.

Each project follows [semver](http://semver.org/) convention for release management.

Here is a short table resuming on which you have to start:

Kind of modification | Backward Compatible (BC) | Type of release | Branch to target        | Label |
-------------------- | ------------------------ | --------------- | ----------------------- | ----- |
Bug fixes            | Yes                      | Patch           | `2.x`   | |
Bug fixes            | No (Only if no choice)   | Major           | `master` | |
Feature              | Yes                      | Minor           | `2.x`   | |
Feature              | No (Only if no choice)   | Major           | `master` | |
Deprecation          | Yes (Have to)            | Minor           | `2.x`   | |
Deprecation removal  | No (Can't be)            | Major           | `master` | |

Notes:
  * Branch `2.x` is the branch of the **latest stable** minor release and
  has to be used for Backward compatible PRs.
  * If you PR is not **Backward Compatible** but can be, it **must** be:
    * Changing a function/method signature? Prefer create a new one and deprecate the old one.
    * Code deletion? Don't. Please deprecate it instead.
    * If your BC PR is accepted, you can do a new one on the `master` branch which removes the deprecated code.
    * SYMFONY DOC REF (same logic)?

If you have a non-BC PR to propose, please try to create a related BC PR first.
This BC PR should mark every piece of code that needs to be removed / uncommented / reworked
in the corresponding non-BC PR with the following marker comment : `NEXT_MAJOR`.
When the BC PR is merged in the stable branch, wait for the stable branch to be
merged in the unstable branch, and then work on your non-BC PR.

For instance, assuming you want to introduce a new method to an existing interface, you should do something like this:

```php
<?php

namespace Foo;

interface BarInterface
{
  /**
   * NEXT_MAJOR: Uncomment this method
   *
   * This method does useful stuff.
   */
  // public function usefulMethod();

  // ???
}
```

##### Dependency changes

If you want to change some dependencies, here are the rules:

- Don't add support for a version lower than the current one.
- Don't change the highest supported version to a lower one.
- Lower version dropping is accepted as a Backward Compatible change according to [semver][semver_dependencies_update],
but some extra rules must be respected here:
  - PHP versions that are under the [orange zone][php_supported_versions] (Security Support) **MUST NOT** be dropped on the stable branch.
  - PHP versions that are under the [green zone][php_supported_versions] (Active Support) **MUST NOT** be dropped on the master branch.
  - If it's a Symfony package, at least the last LTS version **MUST** be supported, even on master.
  - Generally, don't drop dependency version it it doesn't have a big impact on the code.
  - Backward Compatible code related to the dropped version **MUST** be dropped on the same PR.
    This will allow to see if this version drop **is really worth it** or not.
    Please note that we can refuse a version drop at any moment if the gain does not seem sufficient.

##### Legacy branches

Legacy branches are **NOT** supported at all. Any submitted Pull Request will be immediately closed.

Core team members *may* cherry-pick some fixes from the stable branch to the legacy one if it's really needed
and if the legacy one is not too old (~less than one month).

#### The commit message

Good commit messages are crucial to achieve this goal. There are already a
few articles (or even single purpose websites) about this, we cannot
recommend enough the following:

* http://rakeroutes.com/blog/deliberate-git
* http://stopwritingramblingcommitmessages.com
* http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

To sum them up, the commit message has to be crystal clear and of course,
related to the PR content.

The first line of the commit message must be short, keep it under 50
characters. It must say concisely but *precisely* what you did. The other
lines, if needed, should contain a complete description of *why* you did this.

Bad commit message subject:

```
Update README.md
```

Good commit message subject :

```
Document how to install the project
```

Also, when you specify what you did avoid commit message subjects with "Fix bug
in such and such feature". Saying you are fixing something implies the previous
implementation was wrong and yours is right, which might not even be true.
Instead, state unquestionable technical facts about your changes, not opinions.
Then, in the commit description, explain why you did that and how it fixes
something.
```
call foo::bar() instead of bar::baz()

This fixes a bug that arises when doing this or that, because baz() needs a
flux capacitor object that might not be defined.
Fixes #42
```

The description is optional but strongly recommended. It could be asked by the
team if needed. PR will often lead to complicated, hard-to-read conversations
with many links to other web pages.

The commit description should be able to live without what is said in the PR,
and should ideally sum it up in a crystal clear way, so that people do not have
to open a web browser to understand what you did.
Links to PRs/Issues and external references are of course welcome, but should
not be considered enough. When you reference an issue, make sure to use one of
the keywords described in [the dedicated github
article](https://help.github.com/articles/closing-issues-via-commit-messages/).

Good commit message with description :

```
Change web UI background color to pink

This is a consensus made on #4242 in addition to #1337.

We agreed that blank color is boring and so deja vu. Pink is the new way to do.
```
(Obviously, this commit is fake. :wink:)

## Code Reviews

Grooming a PR until it is ready to get merged is a contribution by itself.
Indeed, why contribute a PR if there are hundreds of PRs already waiting to get reviewed and hopefully, merged?
By taking up this task, you will try to speed up this process by making sure the merge can be made with peace of mind.

### Commenting on a PR

Before doing anything refrain to dive head-first in the details of the PR and try to see the big picture,
to understand the subject of the PR. If the PR fixes an issue, read the issue first.
This is to avoid the pain of making a reviewer rework their whole PR and then not merging it.

Things to hunt for :

- missing docs . This is what you should look for first. If you think the PR lacks docs,
ask for them, because you will be better at reviewing it if you understand it better,
and docs help a lot with that.
- missing tests : Encourage people to do TDD by making clear a PR will not get merged
if it lacks tests. Not everything is easy to test though, keep that in mind.
- BC breaks : If there is a BC-break, ask for a deprecation system to be created instead,
and make sure the `master` branch is used.
- Unclear pieces of code : does the code use clear, appropriate variable or class names,
or does it use names like `data`, `result`, `WhateverManager`, `SomethingService`?
Are exception names still meaningful if you remove the `Exception` suffix? Do all
exceptions have a custom message?
Is the contributor trying to be clever or to be clear?
- Violations of the [SOLID][solid] principles :
    - S : If a class is 3000 lines long, maybe it does too many things?
    - O : Is there a big switch statement that might grow in the future?
    - L : Does the program behave reasonably when replacing a class with a child class?
    - I : Are interfaces small and easy to implement? If not, can they be split into smaller interfaces?
    - D : Is the name of a class hardcoded in another class, with the `new` keyword or a static call?
- Spelling / grammar mistakes, including in commit messages or UPGRADE / CHANGELOG notes.
- Dependency modifications : is anything new introduced, if yes is it worth it?

[solid]: https://en.wikipedia.org/wiki/SOLID_(object-oriented_design)

Leave no stone unturned. When in doubt, ask for a clarification. If the
clarification seems useful, and does not appear in a code comment or in a commit
message, say so and / or make use a squash-merge to customize the commit message.
Ideally, the project history should be understandable without an internet connection,
and the PR should be understandable without having a look at the changes.

Also, make sure your feedback is actionable, it is important to keep the ball rolling,
so if you raise a question, try to also provide solutions.

### Labelling the PR

Applying labels requires write access to PRs, but you can still advise if you do not have them.
There are several labels that will help determine what the next version number will be.
Apply the first label that matches one of this conditions, in that order:

- `major`: there is a BC-break. The PR should target the `master` branch.
- `minor`: there is a backwards-compatible change in the API. The PR should target the stable branch.
- `patch`: this fixes an issue (not necessarily reported). The PR should target the stable branch.
- `docs`: this PR is solely about the docs. `pedantic` is implied.
- `pedantic`: this change does not warrant a release.

Also if you see that the PR lacks documentation, tests, a changelog note,
or an upgrade note, use the appropriate label.

### Reviewing PRs with several commits

If there are several commits in a PR, make sure you review it commit by commit,
so that you can check the commit messages, and make sure the commit are independent
and atomic.

### Merging

Do not merge something you wrote yourself. Do not merge a PR you reviewed alone,
instead, merge PRs that have already be reviewed and approved by another reviewer.
If the commit history is unclear or irrelevant, prefer the "Squash and merge" feature, otherwise, always
use the "Rebase and merge" feature.
And finally, use your common sense : if you see a PR about a typo,
or if there is a situation (faulty commit, revert needed) maybe you can merge it directly.

### Be nice to the contributor

Thank them for contributing. Encourage them if you feel this is going to be long.
In short, try to make them want to contribute again. If they are stuck, try to provide them with
code yourself, or ping someone who can help.

[sphinx_install]: http://www.sphinx-doc.org/en/stable/
[pip_install]: https://pip.pypa.io/en/stable/installing/
[sf_docs_standards]: https://symfony.com/doc/current/contributing/documentation/standards.html
[semver_dependencies_update]: http://semver.org/#what-should-i-do-if-i-update-my-own-dependencies-without-changing-the-public-api
[php_supported_versions]: http://php.net/supported-versions.php
