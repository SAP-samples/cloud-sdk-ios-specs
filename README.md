# The SAP iOS SDK CocoaPods Repo

This repository contains the CocoaPods specifications for frameworks in the SAP Cloud Platform SDK for iOS. Frameworks downloaded here are identical to those available through SAP Service Marketplace, and on the SAP Developer Site.

# Requirements

1. Ruby
2. Cocoapods dependency manager
3. Technical user & password, for [repositories.sap.ondemand.com](https://shipments.pages.repositories.sap.ondemand.com/docs/shipment-sap-client.html#repository-based-shipment-channel-technical-users-management-ui)
4. Apple Xcode IDE

# Download and Installation

## Installing Ruby

Ruby versions 2.0 and above are included by default in macOS releases since at least El Capitan (10.11).  Additional installation techniques are documented [here](https://www.ruby-lang.org/en/documentation/installation/).

Homebrew is a commonly used package manager on macOS.  Installing Ruby using Homebrew is easy:

```shell
brew install ruby
```

## Installing Cocoapods

Cocoapods is a dependency manager for Swift and Objective-C Cocoa projects.

Documentation is available at [cocoapods.org](https://cocoapods.org/).
Installation is a Ruby `gem install` command; updates are done with `gem` as well.

```shell
$ sudo gem install cocoapods
```

## Installing Apple Xcode IDE

Xcode may be installed via the Mac App Store, or, specific versions may be downloaded at [developer.apple.com/download](https://developer.apple.com/download/).

The current version of Xcode which is supported by the latest SAP binaries is Xcode 10.2.x.

# Configuration

## Obtaining Technical user & password

The SDK binaries are hosted in SAP's Internet-facing repository, which requires authenticated access. Before running `pod update`, you must visit the [Technical Users' UI Home Page](https://repositories.sap.ondemand.com/ui) to obtain a technical username/password.  

 > SAP Customers & Partners:  use your **S-User** to authenticate to repoistories.sap.ondemand.com.
 > SAP Employees: use your SAP email & GLOBAL password to authenticate 


 and save that to a file at `~/.netrc`. This is documented [below].

# Usage
## CocoaPods
CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects.
## Installing CocoaPods
Instructions are available on [CocoaPods' site](https://cocoapods.org/).
Basically the installation is a one line command.
```shell
$ sudo gem install cocoapods
```

## Create a Podfile
`Podfile` is a specific file for CocoaPods where the libraries are listed to use in the project. To filename should be `Podfile`.
This `Podfile` shows that in the `CocoaPodsTestApp` project `SAPCommon` and `SAPFoundation` libraries will be used. All the dependencies should be written here, before using the project.
The `source` should point to this repository.
```ruby
source 'https://github.com/SAP/cloud-sdk-ios-podspecs'

platform :ios, '11.0'
use_frameworks!

target 'CocoaPodsTestApp' do
  pod 'SAPCommon', '~> 3.1.200'
  pod 'SAPFoundation', '~> 3.1.200'
end
```

### 3rd party dependencies
If you are using SAPML framework, you have to list the GoogleMobileVision framework in the dependencies.
E.g. SAPML 3.1.200 depends on GoogleMobileVision 1.3.0:
```ruby
target 'CocoaPodsTestApp' do
  pod 'SAPML', '~> 3.1.200'
  pod 'GoogleMobileVision', '~> 1.3.0'
end
```

## Prepare authentication for the *SAP Repository Based Shipment Channel*
Create technical user credentials as described in the [FAQ of SAP Internet Facing Repository Services](https://shipments.pages.repositories.sap.ondemand.com/docs/FAQ.html#how-can-the-sap-client-use-my-software)

Create a .netrc file in the home (~) directory.
The curl command searches the .netrc file for a machine token that matches the remote machine specified in the URL.
The .netrc file contains login and initialization information used by the auto-login process.
### Format
The following tokens are recognized; they may be separated by spaces, tabs, or new-lines:
`machine` name: Identify a remote machine name.
`login` name: Identify a user on the remote machine.
`password`: Supply a password.
### Example
An example .netrc for the host example.com with a user named 'username', using the password 'passw' would look like this:
```
machine example.com
login username
password passw
```

## Notes
* Access to this service requires licensed access to SAP Cloud Platform SDK for iOS, e.g. by means of subscribing to SAP Cloud Platform Mobile Services, and a valid S-user for external staff. This service is not available for Trial versions of the SDK.
* Quoting the SAP support site, “you can download the SAP products that are associated with your S-user ID. While every visitor can browse the list of software products without any special permissions, downloading files requires the Software Download authorization; to request it, contact a user administrator in your company.” This restriction also applies to the cloud shipment channel.

## Install dependencies
Use this command to install new pods in your project.
```shell
pod install
```
After all libraries are installed, a new Xcode workspace file is created, that should be used later for opening the project.

## Update dependencies
Use this command only when you want to update pods to a newer version.
```shell
pod update [PODNAME]
```
# Limitations

 - SAPML framework is not currently supported as a managed dependency, due to a naming conflict in a dependent framework.

# Known Issues

None at this time.

# How to obtain support

For an issue related to the contents of this repository, please file an Issue here in the github.com project.

For issues related to any of the referenced resources and binaries, please file a support ticket to SAP through the regular channels.

# Contributing

If you wish to make a contribution to the repository, please submit a Pull Request.  It will be reviewed by the maintainers, however, we cannot commit to merging all contributions.

# To-Do (upcoming changes)

 - [] Support for Carthage binary distribution
 - [] Support for Cocoapods, for SAPML framemowrk

# License

The content of this repository is licensed under [LICENSE]().  The referenced resources and binaries are licensed under the individual terms of their associated license(s).