# Hugo Website: `workloads.io`

> This repository manages the website for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [Hugo Website: `workloads.io`](#hugo-website-workloadsio)
  * [Table of Contents](#table-of-contents)
  * [Requirements](#requirements)
  * [Usage](#usage)
  * [Notes](#notes)
    * [Sensitive Data](#sensitive-data)
  * [Contributors](#contributors)
  * [License](#license)
<!-- TOC -->

## Requirements

- Hugo `0.121.x` or [newer](https://developer.hashicorp.com/packer/downloads)

## Usage

This repository provides a [Makefile](./Makefile)-based workflow for development and testing.

Running `make` without commands will print out the following help information:

```text
🌐 WEBSITE

Target          Description                                       Usage
build           build website files                               `make build`
config          display configuration for website                 `make config`
content         create new content                                `make content title="<title>"`
server          start Hugo server                                 `make server`
deploy          deploy new and updated content                    `make deploy target="<target>"`
trust           establish trust for generated TLS certificates    `make trust`
help            display a list of Make Targets                    `make help`
_listincludes   list all included Makefiles and *.mk files        `make _listincludes`
_selfcheck      lint Makefile                                     `make _selfcheck`
```

> All workflows _may_ be executed manually, though this is not advisable. See the [Makefile](./Makefile) for more information.

## Notes

### Sensitive Data

Terraform state may contain [sensitive data](https://developer.hashicorp.com/terraform/language/state/sensitive-data). This workspace uses [Terraform Cloud](https://developer.hashicorp.com/terraform/cloud-docs) to safely store state, and encrypt the data at rest.

## Contributors

For a list of current (and past) contributors to this repository, see [GitHub](https://github.com/workloads/website/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may download a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

See the License for the specific language governing permissions and limitations under the License.
