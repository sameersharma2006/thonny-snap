{"payload":{"allShortcutsEnabled":false,"fileTree":{"packaging/linux":{"items":[{"name":"README.md","path":"packaging/linux/README.md","contentType":"file"},{"name":"Thonny.desktop","path":"packaging/linux/Thonny.desktop","contentType":"file"},{"name":"build_bzip2.sh","path":"packaging/linux/build_bzip2.sh","contentType":"file"},{"name":"build_openssl.sh","path":"packaging/linux/build_openssl.sh","contentType":"file"},{"name":"build_python.sh","path":"packaging/linux/build_python.sh","contentType":"file"},{"name":"build_requirements.sh","path":"packaging/linux/build_requirements.sh","contentType":"file"},{"name":"build_tcltk.sh","path":"packaging/linux/build_tcltk.sh","contentType":"file"},{"name":"build_xz.sh","path":"packaging/linux/build_xz.sh","contentType":"file"},{"name":"create_tarball.sh","path":"packaging/linux/create_tarball.sh","contentType":"file"},{"name":"downinstall_template.sh","path":"packaging/linux/downinstall_template.sh","contentType":"file"},{"name":"insert_deps.py","path":"packaging/linux/insert_deps.py","contentType":"file"},{"name":"install.py","path":"packaging/linux/install.py","contentType":"file"},{"name":"install.sh","path":"packaging/linux/install.sh","contentType":"file"},{"name":"install_tarball.sh","path":"packaging/linux/install_tarball.sh","contentType":"file"},{"name":"install_tools_ubuntu.sh","path":"packaging/linux/install_tools_ubuntu.sh","contentType":"file"},{"name":"org.thonny.Thonny.Devel.yaml","path":"packaging/linux/org.thonny.Thonny.Devel.yaml","contentType":"file"},{"name":"org.thonny.Thonny.appdata.xml","path":"packaging/linux/org.thonny.Thonny.appdata.xml","contentType":"file"},{"name":"org.thonny.Thonny.desktop","path":"packaging/linux/org.thonny.Thonny.desktop","contentType":"file"},{"name":"readme.txt","path":"packaging/linux/readme.txt","contentType":"file"},{"name":"thonny","path":"packaging/linux/thonny","contentType":"file"},{"name":"thonny.1","path":"packaging/linux/thonny.1","contentType":"file"},{"name":"thonny_python.ini","path":"packaging/linux/thonny_python.ini","contentType":"file"},{"name":"uninstall.sh","path":"packaging/linux/uninstall.sh","contentType":"file"}],"totalCount":23},"packaging":{"items":[{"name":"icons","path":"packaging/icons","contentType":"directory"},{"name":"linux","path":"packaging/linux","contentType":"directory"},{"name":"mac","path":"packaging/mac","contentType":"directory"},{"name":"setuptools","path":"packaging/setuptools","contentType":"directory"},{"name":"windows","path":"packaging/windows","contentType":"directory"},{"name":"license-soft-wrap.txt","path":"packaging/license-soft-wrap.txt","contentType":"file"},{"name":"pip.sh","path":"packaging/pip.sh","contentType":"file"},{"name":"portable_thonny.ini","path":"packaging/portable_thonny.ini","contentType":"file"},{"name":"readme.txt","path":"packaging/readme.txt","contentType":"file"},{"name":"requirements-regular-bundle.txt","path":"packaging/requirements-regular-bundle.txt","contentType":"file"},{"name":"requirements-xxl-bundle.txt","path":"packaging/requirements-xxl-bundle.txt","contentType":"file"}],"totalCount":11},"":{"items":[{"name":"data","path":"data","contentType":"directory"},{"name":"docs","path":"docs","contentType":"directory"},{"name":"licenses","path":"licenses","contentType":"directory"},{"name":"misc","path":"misc","contentType":"directory"},{"name":"packaging","path":"packaging","contentType":"directory"},{"name":"thonny","path":"thonny","contentType":"directory"},{"name":".editorconfig","path":".editorconfig","contentType":"file"},{"name":".gitattributes","path":".gitattributes","contentType":"file"},{"name":".gitignore","path":".gitignore","contentType":"file"},{"name":".project","path":".project","contentType":"file"},{"name":".pydevproject","path":".pydevproject","contentType":"file"},{"name":".pylintrc","path":".pylintrc","contentType":"file"},{"name":".travis.yml","path":".travis.yml","contentType":"file"},{"name":"CHANGELOG.rst","path":"CHANGELOG.rst","contentType":"file"},{"name":"CONTRIBUTING.rst","path":"CONTRIBUTING.rst","contentType":"file"},{"name":"CREDITS.rst","path":"CREDITS.rst","contentType":"file"},{"name":"LICENSE.txt","path":"LICENSE.txt","contentType":"file"},{"name":"MANIFEST.in","path":"MANIFEST.in","contentType":"file"},{"name":"README.rst","path":"README.rst","contentType":"file"},{"name":"build.bat","path":"build.bat","contentType":"file"},{"name":"build.sh","path":"build.sh","contentType":"file"},{"name":"copy_libs.bat","path":"copy_libs.bat","contentType":"file"},{"name":"copy_libs.sh","path":"copy_libs.sh","contentType":"file"},{"name":"mypy.ini","path":"mypy.ini","contentType":"file"},{"name":"pyproject.toml","path":"pyproject.toml","contentType":"file"},{"name":"requirements.txt","path":"requirements.txt","contentType":"file"},{"name":"setup.py","path":"setup.py","contentType":"file"}],"totalCount":27}},"fileTreeProcessingTime":12.275045,"foldersToFetch":[],"reducedMotionEnabled":null,"repo":{"id":163728962,"defaultBranch":"master","name":"thonny","ownerLogin":"thonny","currentUserCanPush":false,"isFork":false,"isEmpty":false,"createdAt":"2019-01-01T10:29:50.000Z","ownerAvatar":"https://avatars.githubusercontent.com/u/46202078?v=4","public":true,"private":false,"isOrgOwned":true},"symbolsExpanded":false,"treeExpanded":true,"refInfo":{"name":"master","listCacheKey":"v0:1691791403.0","canEdit":false,"refType":"branch","currentOid":"66791c3f60148543a22588d5075b8b19f662ef56"},"path":"packaging/linux/install_tarball.sh","currentUser":null,"blob":{"rawLines":["#!/bin/bash","","TMPDIR=$(mktemp -d -p .)","tar -zxf dist/thonny-4.0.0b3-dev-x86_64.tar.gz -C $TMPDIR","$TMPDIR/thonny/install","rm -rf $TMPDIR"],"stylingDirectives":[[{"start":0,"end":11,"cssClass":"pl-c"},{"start":0,"end":2,"cssClass":"pl-c"}],[],[{"start":7,"end":24,"cssClass":"pl-s"},{"start":7,"end":9,"cssClass":"pl-pds"},{"start":23,"end":24,"cssClass":"pl-pds"}],[{"start":50,"end":57,"cssClass":"pl-smi"}],[{"start":0,"end":7,"cssClass":"pl-smi"}],[{"start":7,"end":14,"cssClass":"pl-smi"}]],"csv":null,"csvError":null,"dependabotInfo":{"showConfigurationBanner":false,"configFilePath":null,"networkDependabotPath":"/thonny/thonny/network/updates","dismissConfigurationNoticePath":"/settings/dismiss-notice/dependabot_configuration_notice","configurationNoticeDismissed":null,"repoAlertsPath":"/thonny/thonny/security/dependabot","repoSecurityAndAnalysisPath":"/thonny/thonny/settings/security_analysis","repoOwnerIsOrg":true,"currentUserCanAdminRepo":false},"displayName":"install_tarball.sh","displayUrl":"https://github.com/thonny/thonny/blob/master/packaging/linux/install_tarball.sh?raw=true","headerInfo":{"blobSize":"134 Bytes","deleteInfo":{"deleteTooltip":"You must be signed in to make or propose changes"},"editInfo":{"editTooltip":"You must be signed in to make or propose changes"},"ghDesktopPath":"https://desktop.github.com","gitLfsPath":null,"onBranch":true,"shortPath":"b5d6856","siteNavLoginPath":"/login?return_to=https%3A%2F%2Fgithub.com%2Fthonny%2Fthonny%2Fblob%2Fmaster%2Fpackaging%2Flinux%2Finstall_tarball.sh","isCSV":false,"isRichtext":false,"toc":null,"lineInfo":{"truncatedLoc":"6","truncatedSloc":"5"},"mode":"executable file"},"image":false,"isCodeownersFile":null,"isPlain":false,"isValidLegacyIssueTemplate":false,"issueTemplateHelpUrl":"https://docs.github.com/articles/about-issue-and-pull-request-templates","issueTemplate":null,"discussionTemplate":null,"language":"Shell","languageID":346,"large":false,"loggedIn":false,"newDiscussionPath":"/thonny/thonny/discussions/new","newIssuePath":"/thonny/thonny/issues/new","planSupportInfo":{"repoIsFork":null,"repoOwnedByCurrentUser":null,"requestFullPath":"/thonny/thonny/blob/master/packaging/linux/install_tarball.sh","showFreeOrgGatedFeatureMessage":null,"showPlanSupportBanner":null,"upgradeDataAttributes":null,"upgradePath":null},"publishBannersInfo":{"dismissActionNoticePath":"/settings/dismiss-notice/publish_action_from_dockerfile","dismissStackNoticePath":"/settings/dismiss-notice/publish_stack_from_file","releasePath":"/thonny/thonny/releases/new?marketplace=true","showPublishActionBanner":false,"showPublishStackBanner":false},"renderImageOrRaw":false,"richText":null,"renderedFileInfo":null,"shortPath":null,"tabSize":8,"topBannersInfo":{"overridingGlobalFundingFile":false,"globalPreferredFundingPath":null,"repoOwner":"thonny","repoName":"thonny","showInvalidCitationWarning":false,"citationHelpUrl":"https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-citation-files","showDependabotConfigurationBanner":false,"actionsOnboardingTip":null},"truncated":false,"viewable":true,"workflowRedirectUrl":null,"symbols":{"timedOut":false,"notAnalyzed":false,"symbols":[]}},"copilotInfo":null,"csrf_tokens":{"/thonny/thonny/branches":{"post":"bJziqOkWGy1BNPxtTUzqDEJEB1bBz7KaUy1IoGQWgJ_muK1PTLy9gpGCEx54BSXBqXpI0aSb2WPI86r54GY8mA"},"/repos/preferences":{"post":"RzJZKGSvd24iEvTZl3DhivPCDK_0LYyjaB9mT2h1hPoMzau9yaLlN9V7kG8YDqPDBbdqcijtVTXNLDCz5U2GZQ"}}},"title":"thonny/packaging/linux/install_tarball.sh at master · thonny/thonny"}