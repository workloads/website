# Hugo Website: `workloads.io`

> This directory manages the Website for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [Terraform Cloud Workspace `website`](#terraform-cloud-workspace-website)
  * [Table of Contents](#table-of-contents)
  * [Requirements](#requirements)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Author Information](#author-information)
  * [License](#license)
<!-- TOC -->

## Requirements

- Hugo `0.121.x` or [newer](https://developer.hashicorp.com/packer/downloads)

## Usage

This repository provides a workflow that is wrapped through a [Makefile](./Makefile).

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

## Author Information

This repository is maintained by the contributors listed on [GitHub](https://github.com/workloads/website/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
