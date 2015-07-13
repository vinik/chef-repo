terraform Cookbook
==================

Installs [Terraform][terraform] by Mitchell Hashimoto
([@mitchellh](https://github.com/mitchellh)).

[Terraform][terraform] is an open source tool that allows you to
configure entire infrastructure stack as code.

Requirements
------------

### Cookbooks

The only dependency this cookbook has is the [ark
cookbook](https://supermarket.getchef.com/cookbooks/ark).

### Platforms

The following platforms are supported and have been automatically tested under
[Test Kitchen][testkitchen]:

* Amazon Linux (2014.03.2-hvm)
* CentOS 6.5
* CentOS 7
* Debian 7.6
* Fedora 20
* FreeBSD 10
* Ubuntu 14.04

Other versions of these OSs should work. Alternative Debian and RHEL
family distributions are also assumed to work. Please [report][issues]
any additional platforms you have tested so they can be added.

Usage
-----

Simply include `recipe[terraform]` in your run_list to have
[Terraform][terraform] installed.

Recipes
-------

### default

Installs [Terraform][terraform] from official pre-compiled binaries.

Attributes
----------

### version

The version of [Terraform][terraform] that will be installed.

### raw_checksums

sha256 checksums for the intended version's archive file, used for security and
should be changed alongside version.

_NOTE: All other attributes are considered internal and shouldn't
normally need to be changed._

Development
-----------

* Source hosted at [GitHub][repo]
* Report issues/questions/feature requests on [GitHub Issues][issues]

### Contributing

Pull requests are very welcome! Ideally create a topic branch for every
separate change you make.

This cookbook uses [ChefSpec][chefspec] for unit tests. I also use [Food
Critic][foodcritic] and [RuboCop][rubocop] to check for style issues.
When contributing it would be very helpful if you could run these via
`bundle exec spec` and `bundle exec style`.

Lastly, there are [Serverspec][serverspec] integration tests for
use with [Test Kitchen][testkitchen]. To see all of the available
integration test suites just check `bundle exec rake T` or `bundle exec
kitchen list`. It would be great if you could run these tests too, you
may however leave out the Amazon Linux test suite if you do not have
an AWS account as it runs on an EC2 instance (you will be billed for
running this).

### Credit

This cookbook, especially the checksum stuff in
attributes file has been influenced by the [Packer
cookbook](https://supermarket.getchef.com/cookbooks/packer) by
[@sit](https://github.com/sit).

### License and Author

Author:: [Ross Timson][rosstimson]
<[ross@rosstimson.com](mailto:ross@rosstimson.com)>

Copyright 2014, Ross Timson

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


[rosstimson]:         https://github.com/rosstimson
[repo]:               https://github.com/rosstimson/chef-terraform
[issues]:             https://github.com/rosstimson/chef-terraform/issues
[terraform]:          http://www.terraform.io
[chefsepc]:           https://github.com/sethvargo/chefspec
[foodcritic]:         https://github.com/acrmp/foodcritic
[rubocop]:            https://github.com/bbatsov/rubocop
[serverspec]:         https://github.com/serverspec/serverspec
[testkitchen]:        https://github.com/test-kitchen/test-kitchen
