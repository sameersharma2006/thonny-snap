{"payload":{"allShortcutsEnabled":false,"fileTree":{"packaging/linux":{"items":[{"name":"README.md","path":"packaging/linux/README.md","contentType":"file"},{"name":"Thonny.desktop","path":"packaging/linux/Thonny.desktop","contentType":"file"},{"name":"build_bzip2.sh","path":"packaging/linux/build_bzip2.sh","contentType":"file"},{"name":"build_openssl.sh","path":"packaging/linux/build_openssl.sh","contentType":"file"},{"name":"build_python.sh","path":"packaging/linux/build_python.sh","contentType":"file"},{"name":"build_requirements.sh","path":"packaging/linux/build_requirements.sh","contentType":"file"},{"name":"build_tcltk.sh","path":"packaging/linux/build_tcltk.sh","contentType":"file"},{"name":"build_xz.sh","path":"packaging/linux/build_xz.sh","contentType":"file"},{"name":"create_tarball.sh","path":"packaging/linux/create_tarball.sh","contentType":"file"},{"name":"downinstall_template.sh","path":"packaging/linux/downinstall_template.sh","contentType":"file"},{"name":"insert_deps.py","path":"packaging/linux/insert_deps.py","contentType":"file"},{"name":"install.py","path":"packaging/linux/install.py","contentType":"file"},{"name":"install.sh","path":"packaging/linux/install.sh","contentType":"file"},{"name":"install_tarball.sh","path":"packaging/linux/install_tarball.sh","contentType":"file"},{"name":"install_tools_ubuntu.sh","path":"packaging/linux/install_tools_ubuntu.sh","contentType":"file"},{"name":"org.thonny.Thonny.Devel.yaml","path":"packaging/linux/org.thonny.Thonny.Devel.yaml","contentType":"file"},{"name":"org.thonny.Thonny.appdata.xml","path":"packaging/linux/org.thonny.Thonny.appdata.xml","contentType":"file"},{"name":"org.thonny.Thonny.desktop","path":"packaging/linux/org.thonny.Thonny.desktop","contentType":"file"},{"name":"readme.txt","path":"packaging/linux/readme.txt","contentType":"file"},{"name":"thonny","path":"packaging/linux/thonny","contentType":"file"},{"name":"thonny.1","path":"packaging/linux/thonny.1","contentType":"file"},{"name":"thonny_python.ini","path":"packaging/linux/thonny_python.ini","contentType":"file"},{"name":"uninstall.sh","path":"packaging/linux/uninstall.sh","contentType":"file"}],"totalCount":23},"packaging":{"items":[{"name":"icons","path":"packaging/icons","contentType":"directory"},{"name":"linux","path":"packaging/linux","contentType":"directory"},{"name":"mac","path":"packaging/mac","contentType":"directory"},{"name":"setuptools","path":"packaging/setuptools","contentType":"directory"},{"name":"windows","path":"packaging/windows","contentType":"directory"},{"name":"license-soft-wrap.txt","path":"packaging/license-soft-wrap.txt","contentType":"file"},{"name":"pip.sh","path":"packaging/pip.sh","contentType":"file"},{"name":"portable_thonny.ini","path":"packaging/portable_thonny.ini","contentType":"file"},{"name":"readme.txt","path":"packaging/readme.txt","contentType":"file"},{"name":"requirements-regular-bundle.txt","path":"packaging/requirements-regular-bundle.txt","contentType":"file"},{"name":"requirements-xxl-bundle.txt","path":"packaging/requirements-xxl-bundle.txt","contentType":"file"}],"totalCount":11},"":{"items":[{"name":"data","path":"data","contentType":"directory"},{"name":"docs","path":"docs","contentType":"directory"},{"name":"licenses","path":"licenses","contentType":"directory"},{"name":"misc","path":"misc","contentType":"directory"},{"name":"packaging","path":"packaging","contentType":"directory"},{"name":"thonny","path":"thonny","contentType":"directory"},{"name":".editorconfig","path":".editorconfig","contentType":"file"},{"name":".gitattributes","path":".gitattributes","contentType":"file"},{"name":".gitignore","path":".gitignore","contentType":"file"},{"name":".project","path":".project","contentType":"file"},{"name":".pydevproject","path":".pydevproject","contentType":"file"},{"name":".pylintrc","path":".pylintrc","contentType":"file"},{"name":".travis.yml","path":".travis.yml","contentType":"file"},{"name":"CHANGELOG.rst","path":"CHANGELOG.rst","contentType":"file"},{"name":"CONTRIBUTING.rst","path":"CONTRIBUTING.rst","contentType":"file"},{"name":"CREDITS.rst","path":"CREDITS.rst","contentType":"file"},{"name":"LICENSE.txt","path":"LICENSE.txt","contentType":"file"},{"name":"MANIFEST.in","path":"MANIFEST.in","contentType":"file"},{"name":"README.rst","path":"README.rst","contentType":"file"},{"name":"build.bat","path":"build.bat","contentType":"file"},{"name":"build.sh","path":"build.sh","contentType":"file"},{"name":"copy_libs.bat","path":"copy_libs.bat","contentType":"file"},{"name":"copy_libs.sh","path":"copy_libs.sh","contentType":"file"},{"name":"mypy.ini","path":"mypy.ini","contentType":"file"},{"name":"pyproject.toml","path":"pyproject.toml","contentType":"file"},{"name":"requirements.txt","path":"requirements.txt","contentType":"file"},{"name":"setup.py","path":"setup.py","contentType":"file"}],"totalCount":27}},"fileTreeProcessingTime":12.250021,"foldersToFetch":[],"reducedMotionEnabled":null,"repo":{"id":163728962,"defaultBranch":"master","name":"thonny","ownerLogin":"thonny","currentUserCanPush":false,"isFork":false,"isEmpty":false,"createdAt":"2019-01-01T10:29:50.000Z","ownerAvatar":"https://avatars.githubusercontent.com/u/46202078?v=4","public":true,"private":false,"isOrgOwned":true},"symbolsExpanded":false,"treeExpanded":true,"refInfo":{"name":"master","listCacheKey":"v0:1691791403.0","canEdit":false,"refType":"branch","currentOid":"66791c3f60148543a22588d5075b8b19f662ef56"},"path":"packaging/linux/build_requirements.sh","currentUser":null,"blob":{"rawLines":["#!/usr/bin/env bash","","set -e","","# START BUILDING ####################################################","export PREFIX=$HOME/pythonny310","","export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt ","export LD_LIBRARY_PATH=$PREFIX/lib","","ARCHITECTURE=\"$(uname -m)\"","","rm -Rf $PREFIX","mkdir $PREFIX","MAIN_DIR=\"$( cd \"$( dirname \"${BASH_SOURCE[0]}\" )\" && pwd )\"","","TEMP_DIR=$MAIN_DIR/temp_build_dir","rm -Rf $TEMP_DIR","mkdir $TEMP_DIR","cd $TEMP_DIR","","","$MAIN_DIR/build_bzip2.sh","$MAIN_DIR/build_xz.sh","$MAIN_DIR/build_tcltk.sh","$MAIN_DIR/build_openssl.sh","$MAIN_DIR/build_python.sh","","# COPY SOME LIBS #########################################","# using star because this script must work both in 32 and 64-bit Ubuntu","#cp /lib/*-linux-gnu/libbz2.so.1.0.4 $PREFIX/lib/libbz2.so.1.0","","##########################################################","# back to original dir","cd ..","","# check it out ...","$PREFIX/bin/python3.10 -m idlelib"],"stylingDirectives":[[{"start":0,"end":19,"cssClass":"pl-c"},{"start":0,"end":2,"cssClass":"pl-c"}],[],[{"start":0,"end":3,"cssClass":"pl-c1"}],[],[{"start":0,"end":69,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":0,"end":6,"cssClass":"pl-k"},{"start":14,"end":19,"cssClass":"pl-smi"}],[],[{"start":0,"end":6,"cssClass":"pl-k"}],[{"start":0,"end":6,"cssClass":"pl-k"},{"start":23,"end":30,"cssClass":"pl-smi"}],[],[{"start":13,"end":26,"cssClass":"pl-s"},{"start":13,"end":14,"cssClass":"pl-pds"},{"start":14,"end":25,"cssClass":"pl-s"},{"start":14,"end":16,"cssClass":"pl-pds"},{"start":24,"end":25,"cssClass":"pl-pds"},{"start":25,"end":26,"cssClass":"pl-pds"}],[],[{"start":7,"end":14,"cssClass":"pl-smi"}],[{"start":6,"end":13,"cssClass":"pl-smi"}],[{"start":9,"end":60,"cssClass":"pl-s"},{"start":9,"end":10,"cssClass":"pl-pds"},{"start":10,"end":59,"cssClass":"pl-s"},{"start":10,"end":12,"cssClass":"pl-pds"},{"start":13,"end":15,"cssClass":"pl-c1"},{"start":16,"end":50,"cssClass":"pl-s"},{"start":16,"end":17,"cssClass":"pl-pds"},{"start":17,"end":49,"cssClass":"pl-s"},{"start":17,"end":19,"cssClass":"pl-pds"},{"start":28,"end":47,"cssClass":"pl-s"},{"start":28,"end":29,"cssClass":"pl-pds"},{"start":29,"end":46,"cssClass":"pl-smi"},{"start":46,"end":47,"cssClass":"pl-pds"},{"start":48,"end":49,"cssClass":"pl-pds"},{"start":49,"end":50,"cssClass":"pl-pds"},{"start":51,"end":53,"cssClass":"pl-k"},{"start":54,"end":57,"cssClass":"pl-c1"},{"start":58,"end":59,"cssClass":"pl-pds"},{"start":59,"end":60,"cssClass":"pl-pds"}],[],[{"start":9,"end":18,"cssClass":"pl-smi"}],[{"start":7,"end":16,"cssClass":"pl-smi"}],[{"start":6,"end":15,"cssClass":"pl-smi"}],[{"start":0,"end":2,"cssClass":"pl-c1"},{"start":3,"end":12,"cssClass":"pl-smi"}],[],[],[{"start":0,"end":9,"cssClass":"pl-smi"}],[{"start":0,"end":9,"cssClass":"pl-smi"}],[{"start":0,"end":9,"cssClass":"pl-smi"}],[{"start":0,"end":9,"cssClass":"pl-smi"}],[{"start":0,"end":9,"cssClass":"pl-smi"}],[],[{"start":0,"end":58,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":0,"end":71,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":0,"end":62,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[],[{"start":0,"end":58,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":0,"end":22,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":0,"end":2,"cssClass":"pl-c1"}],[],[{"start":0,"end":18,"cssClass":"pl-c"},{"start":0,"end":1,"cssClass":"pl-c"}],[{"start":0,"end":7,"cssClass":"pl-smi"}],[]],"csv":null,"csvError":null,"dependabotInfo":{"showConfigurationBanner":false,"configFilePath":null,"networkDependabotPath":"/thonny/thonny/network/updates","dismissConfigurationNoticePath":"/settings/dismiss-notice/dependabot_configuration_notice","configurationNoticeDismissed":null,"repoAlertsPath":"/thonny/thonny/security/dependabot","repoSecurityAndAnalysisPath":"/thonny/thonny/settings/security_analysis","repoOwnerIsOrg":true,"currentUserCanAdminRepo":false},"displayName":"build_requirements.sh","displayUrl":"https://github.com/thonny/thonny/blob/master/packaging/linux/build_requirements.sh?raw=true","headerInfo":{"blobSize":"890 Bytes","deleteInfo":{"deleteTooltip":"You must be signed in to make or propose changes"},"editInfo":{"editTooltip":"You must be signed in to make or propose changes"},"ghDesktopPath":"https://desktop.github.com","gitLfsPath":null,"onBranch":true,"shortPath":"b0d7bf8","siteNavLoginPath":"/login?return_to=https%3A%2F%2Fgithub.com%2Fthonny%2Fthonny%2Fblob%2Fmaster%2Fpackaging%2Flinux%2Fbuild_requirements.sh","isCSV":false,"isRichtext":false,"toc":null,"lineInfo":{"truncatedLoc":"39","truncatedSloc":"27"},"mode":"executable file"},"image":false,"isCodeownersFile":null,"isPlain":false,"isValidLegacyIssueTemplate":false,"issueTemplateHelpUrl":"https://docs.github.com/articles/about-issue-and-pull-request-templates","issueTemplate":null,"discussionTemplate":null,"language":"Shell","languageID":346,"large":false,"loggedIn":false,"newDiscussionPath":"/thonny/thonny/discussions/new","newIssuePath":"/thonny/thonny/issues/new","planSupportInfo":{"repoIsFork":null,"repoOwnedByCurrentUser":null,"requestFullPath":"/thonny/thonny/blob/master/packaging/linux/build_requirements.sh","showFreeOrgGatedFeatureMessage":null,"showPlanSupportBanner":null,"upgradeDataAttributes":null,"upgradePath":null},"publishBannersInfo":{"dismissActionNoticePath":"/settings/dismiss-notice/publish_action_from_dockerfile","dismissStackNoticePath":"/settings/dismiss-notice/publish_stack_from_file","releasePath":"/thonny/thonny/releases/new?marketplace=true","showPublishActionBanner":false,"showPublishStackBanner":false},"renderImageOrRaw":false,"richText":null,"renderedFileInfo":null,"shortPath":null,"tabSize":8,"topBannersInfo":{"overridingGlobalFundingFile":false,"globalPreferredFundingPath":null,"repoOwner":"thonny","repoName":"thonny","showInvalidCitationWarning":false,"citationHelpUrl":"https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-citation-files","showDependabotConfigurationBanner":false,"actionsOnboardingTip":null},"truncated":false,"viewable":true,"workflowRedirectUrl":null,"symbols":{"timedOut":false,"notAnalyzed":false,"symbols":[]}},"copilotInfo":null,"csrf_tokens":{"/thonny/thonny/branches":{"post":"qatm48l3X3c7E7YcNVP6cTcf3m_rypcghXxjrHtUz-ZfGsEcDIgFtCRa9ysON47H1ksfhGCe779auHsUGJYDsA"},"/repos/preferences":{"post":"jiOp_6-mOMQHN4QatFPIc9wHm3E7d1Ay3KM3NjAKaZrXkgRc2Mxn8Gy_LGLlzfnFfJp-ol2oRX0mqN5z1R3rgA"}}},"title":"thonny/packaging/linux/build_requirements.sh at master · thonny/thonny"}