copy_specs: # e.g. make copy_specs OLD_VERSION=6.0.2 NEW_VERSION=6.1.0
	cp -r ./SAPCommon/$(OLD_VERSION) ./SAPCommon/$(NEW_VERSION)
	cp -r ./SAPFoundation/$(OLD_VERSION) ./SAPFoundation/$(NEW_VERSION)
	cp -r ./SAPFiori/$(OLD_VERSION) ./SAPFiori/$(NEW_VERSION)
	cp -r ./SAPFioriFlows/$(OLD_VERSION) ./SAPFioriFlows/$(NEW_VERSION)
	cp -r ./SAPML/$(OLD_VERSION) ./SAPML/$(NEW_VERSION)
	cp -r ./SAPOData/$(OLD_VERSION) ./SAPOData/$(NEW_VERSION)
	cp -r ./SAPOfflineOData/$(OLD_VERSION) ./SAPOfflineOData/$(NEW_VERSION)
replace_in_specs: # e.g. make replace_in_specs OLD=13.0 NEW=14.0 IN_VERSION=6.1.0
	sed -i '' 's/$(OLD)/$(NEW)/' SAPCommon/$(IN_VERSION)/SAPCommon.podspec
	sed -i '' 's/$(OLD)/$(NEW)/' SAPFoundation/$(IN_VERSION)/SAPFoundation.podspec
	sed -i '' 's/$(OLD)/$(NEW)/' SAPFiori/$(IN_VERSION)/SAPFiori.podspec
	sed -i '' 's/$(OLD)/$(NEW)/' SAPFioriFlows/$(IN_VERSION)/SAPFioriFlows.podspec
	sed -i '' 's/$(OLD)/$(NEW)/' SAPML/$(IN_VERSION)/SAPML.podspec
	sed -i '' 's/$(OLD)/$(NEW)/' SAPOData/$(IN_VERSION)/SAPOData.podspec
	sed -i '' 's/$(OLD)/$(NEW)/' SAPOfflineOData/$(IN_VERSION)/SAPOfflineOData.podspec
download_zips: # e.g. make download_zips VERSION=6.1.0
	curl -LO https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPCommon/$(VERSION)/SAPCommon-$(VERSION)-Release-xcframework.zip -netrc
	curl -LO https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPFoundation/$(VERSION)/SAPFoundation-$(VERSION)-Release-xcframework.zip -netrc
	curl -LO https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/uireuse/SAPFiori/$(VERSION)/SAPFiori-$(VERSION)-Release-xcframework.zip -netrc
	curl -LO https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/flows/SAPFioriFlows/$(VERSION)/SAPFioriFlows-$(VERSION)-Release-xcframework.zip -netrc
	curl -LO https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/uireuse/SAPML/$(VERSION)/SAPML-$(VERSION)-Release-xcframework.zip -netrc
	curl -LO https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPOData/$(VERSION)/SAPOData-$(VERSION)-Release-xcframework.zip -netrc
	curl -LO https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPOfflineOData/$(VERSION)/SAPOfflineOData-$(VERSION)-Release-xcframework.zip -netrc
