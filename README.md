The SAP iOS SDK CocoaPods Repo

This repository contains the CocoaPods specifications for frameworks in the SAP Cloud Platform SDK for iOS. Frameworks downloaded here are identical to those available through SAP Service Marketplace, and on the SAP Developer Site.

Authentication

The SDK binaries are hosted in SAP's Internet-facing repository, which requires authenticated access. Before running pod update with your Podfile, you must visit the [Technical Users' UI Home Page](https://shipments.pages.repositories.sap.ondemand.com/docs/shipment-sap-client.html#repository-based-shipment-channel-technical-users-management-ui), obtain a technical username/password, and save that to a file at ~/.netrc. This is documented [below].

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
