Delivery-date: Mon, 22 May 2023 15:43:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q15p9-009hUg-AX
	for lore@lore.pengutronix.de; Mon, 22 May 2023 15:43:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q15p6-00074s-CX
	for lore@pengutronix.de; Mon, 22 May 2023 15:43:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eD+ShV3blSCHQOWWNGp3w9m99hcZynrGGy1B2+e+QfE=; b=Sq8/EKNlPZZyDDxFDJCMygo1C1
	bOQxISAXN3c3hRtFH4mLa1paR6pwdfAZIKocCQE/wlBVBBvoD9I/DcBrYIru8jn0Q0ZC/HuYMrHrj
	Kbo/rsUGciuTj/ifHqX+hI+5mkVelDvM0l8rYlolZykneQB2SwkF6ixHwCBh7ePuKvW/Qz3imn7/R
	zlYpJ0aaEQ9CDZJLn1rJWrUb8nBZnag5zJQRe/BSXF9H/lcGvBBQQCEl102U15pr/oDewEfH1uMzM
	wLnWwhKN7ASUpQ8ieJ+2QZ5irmCx8Yqr6Enpgmugo8WtVGDtX/COKeWu+PAksgFgODvd1icYE5iRK
	NDb4+1gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q15nr-006hUd-24;
	Mon, 22 May 2023 13:42:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q15nm-006hSg-1P
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 13:42:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q15ni-0006tP-GE; Mon, 22 May 2023 15:42:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q15nh-0021LH-Qd; Mon, 22 May 2023 15:42:13 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q15ng-00AkOt-UP; Mon, 22 May 2023 15:42:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 15:42:10 +0200
Message-Id: <20230522134210.2561620-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522134210.2561620-1-a.fatoum@pengutronix.de>
References: <20230522134210.2561620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_064218_630840_43BA738C 
X-CRM114-Status: GOOD (  11.44  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/3] .clang-format: import kernel coding style rules from Linux v6.3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make onboarding a bit easier by providing a clang-format ruleset
that formats code according to the kernel coding style that barebox
adheres to. The ruleset imported here from Linux v6.3 is not 100%
complete, but it's an ok starting point.

Only difference is adjustment of ForEachMacros to those defined by
barebox. Knowledge of more macros can be added later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .clang-format | 214 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 214 insertions(+)
 create mode 100644 .clang-format

diff --git a/.clang-format b/.clang-format
new file mode 100644
index 000000000000..be6c955e731c
--- /dev/null
+++ b/.clang-format
@@ -0,0 +1,214 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# clang-format configuration file. Intended for clang-format >= 11.
+#
+# For more information, see:
+#
+#   Documentation/process/clang-format.rst
+#   https://clang.llvm.org/docs/ClangFormat.html
+#   https://clang.llvm.org/docs/ClangFormatStyleOptions.html
+#
+---
+AccessModifierOffset: -4
+AlignAfterOpenBracket: Align
+AlignConsecutiveAssignments: false
+AlignConsecutiveDeclarations: false
+AlignEscapedNewlines: Left
+AlignOperands: true
+AlignTrailingComments: false
+AllowAllParametersOfDeclarationOnNextLine: false
+AllowShortBlocksOnASingleLine: false
+AllowShortCaseLabelsOnASingleLine: false
+AllowShortFunctionsOnASingleLine: None
+AllowShortIfStatementsOnASingleLine: false
+AllowShortLoopsOnASingleLine: false
+AlwaysBreakAfterDefinitionReturnType: None
+AlwaysBreakAfterReturnType: None
+AlwaysBreakBeforeMultilineStrings: false
+AlwaysBreakTemplateDeclarations: false
+BinPackArguments: true
+BinPackParameters: true
+BraceWrapping:
+  AfterClass: false
+  AfterControlStatement: false
+  AfterEnum: false
+  AfterFunction: true
+  AfterNamespace: true
+  AfterObjCDeclaration: false
+  AfterStruct: false
+  AfterUnion: false
+  AfterExternBlock: false
+  BeforeCatch: false
+  BeforeElse: false
+  IndentBraces: false
+  SplitEmptyFunction: true
+  SplitEmptyRecord: true
+  SplitEmptyNamespace: true
+BreakBeforeBinaryOperators: None
+BreakBeforeBraces: Custom
+BreakBeforeInheritanceComma: false
+BreakBeforeTernaryOperators: false
+BreakConstructorInitializersBeforeComma: false
+BreakConstructorInitializers: BeforeComma
+BreakAfterJavaFieldAnnotations: false
+BreakStringLiterals: false
+ColumnLimit: 80
+CommentPragmas: '^ IWYU pragma:'
+CompactNamespaces: false
+ConstructorInitializerAllOnOneLineOrOnePerLine: false
+ConstructorInitializerIndentWidth: 8
+ContinuationIndentWidth: 8
+Cpp11BracedListStyle: false
+DerivePointerAlignment: false
+DisableFormat: false
+ExperimentalAutoDetectBinPacking: false
+FixNamespaceComments: false
+
+# Taken from:
+#   git grep -h '^#define [^[:space:]]*for_each[^[:space:]]*(' include/ tools/ \
+#   | sed "s,^#define \([^[:space:]]*for_each[^[:space:]]*\)(.*$,  - '\1'," \
+#   | LC_ALL=C sort -u
+ForEachMacros:
+  - 'bootchooser_for_each_target'
+  - 'bootentries_for_each_entry'
+  - 'bus_for_each_device'
+  - 'bus_for_each_driver'
+  - 'device_for_each_child'
+  - 'device_for_each_child_safe'
+  - 'dsa_switch_for_each_cpu_port'
+  - 'expr_list_for_each_sym'
+  - 'fdt_for_each_property_offset'
+  - 'fdt_for_each_subnode'
+  - 'file_list_for_each_entry'
+  - 'for_each_aiodevice'
+  - 'for_each_available_child_of_node'
+  - 'for_each_block_device'
+  - 'for_each_bus'
+  - 'for_each_cdev'
+  - 'for_each_child'
+  - 'for_each_child_of_node'
+  - 'for_each_child_of_node_safe'
+  - 'for_each_child_withdel'
+  - 'for_each_clear_bit'
+  - 'for_each_clear_bit_from'
+  - 'for_each_command'
+  - 'for_each_compatible_node'
+  - 'for_each_compatible_node_from'
+  - 'for_each_console'
+  - 'for_each_device'
+  - 'for_each_driver'
+  - 'for_each_efi_config_table'
+  - 'for_each_endpoint_of_node'
+  - 'for_each_fs_device'
+  - 'for_each_fs_device_safe'
+  - 'for_each_i2c_adapter'
+  - 'for_each_label'
+  - 'for_each_label_withdel'
+  - 'for_each_marker'
+  - 'for_each_marker_of_type'
+  - 'for_each_matching_node'
+  - 'for_each_matching_node_and_match'
+  - 'for_each_matching_node_from'
+  - 'for_each_memory_bank'
+  - 'for_each_mii_bus'
+  - 'for_each_module'
+  - 'for_each_netdev'
+  - 'for_each_node_by_name'
+  - 'for_each_node_by_name_address'
+  - 'for_each_node_by_name_address_from'
+  - 'for_each_node_by_name_from'
+  - 'for_each_node_by_type'
+  - 'for_each_node_with_property'
+  - 'for_each_of_pci_range'
+  - 'for_each_property'
+  - 'for_each_property_of_node'
+  - 'for_each_property_withdel'
+  - 'for_each_reserved_region'
+  - 'for_each_rsa_key'
+  - 'for_each_set_bit'
+  - 'for_each_set_bit_from'
+  - 'gadget_for_each_ep'
+  - 'hlist_for_each'
+  - 'hlist_for_each_entry'
+  - 'hlist_for_each_entry_continue'
+  - 'hlist_for_each_entry_from'
+  - 'hlist_for_each_entry_safe'
+  - 'hlist_for_each_safe'
+  - '__idr_for_each_entry'
+  - 'imd_for_each'
+  - 'list_for_each'
+  - 'list_for_each_continue'
+  - 'list_for_each_entry'
+  - 'list_for_each_entry_continue'
+  - 'list_for_each_entry_continue_reverse'
+  - 'list_for_each_entry_from'
+  - 'list_for_each_entry_from_reverse'
+  - 'list_for_each_entry_reverse'
+  - 'list_for_each_entry_safe'
+  - 'list_for_each_entry_safe_continue'
+  - 'list_for_each_entry_safe_from'
+  - 'list_for_each_entry_safe_reverse'
+  - 'list_for_each_from'
+  - 'list_for_each_prev'
+  - 'list_for_each_prev_safe'
+  - 'list_for_each_safe'
+  - 'nanddev_io_for_each_page'
+  - 'of_property_for_each_string'
+  - 'of_property_for_each_u32'
+  - 'rbtree_postorder_for_each_entry_safe'
+  - 'string_list_for_each_entry'
+  - 'virtio_device_for_each_vq'
+
+IncludeBlocks: Preserve
+IncludeCategories:
+  - Regex: '.*'
+    Priority: 1
+IncludeIsMainRegex: '(Test)?$'
+IndentCaseLabels: false
+IndentGotoLabels: false
+IndentPPDirectives: None
+IndentWidth: 8
+IndentWrappedFunctionNames: false
+JavaScriptQuotes: Leave
+JavaScriptWrapImports: true
+KeepEmptyLinesAtTheStartOfBlocks: false
+MacroBlockBegin: ''
+MacroBlockEnd: ''
+MaxEmptyLinesToKeep: 1
+NamespaceIndentation: None
+ObjCBinPackProtocolList: Auto
+ObjCBlockIndentWidth: 8
+ObjCSpaceAfterProperty: true
+ObjCSpaceBeforeProtocolList: true
+
+# Taken from git's rules
+PenaltyBreakAssignment: 10
+PenaltyBreakBeforeFirstCallParameter: 30
+PenaltyBreakComment: 10
+PenaltyBreakFirstLessLess: 0
+PenaltyBreakString: 10
+PenaltyExcessCharacter: 100
+PenaltyReturnTypeOnItsOwnLine: 60
+
+PointerAlignment: Right
+ReflowComments: false
+SortIncludes: false
+SortUsingDeclarations: false
+SpaceAfterCStyleCast: false
+SpaceAfterTemplateKeyword: true
+SpaceBeforeAssignmentOperators: true
+SpaceBeforeCtorInitializerColon: true
+SpaceBeforeInheritanceColon: true
+SpaceBeforeParens: ControlStatementsExceptForEachMacros
+SpaceBeforeRangeBasedForLoopColon: true
+SpaceInEmptyParentheses: false
+SpacesBeforeTrailingComments: 1
+SpacesInAngles: false
+SpacesInContainerLiterals: false
+SpacesInCStyleCastParentheses: false
+SpacesInParentheses: false
+SpacesInSquareBrackets: false
+Standard: Cpp03
+TabWidth: 8
+UseTab: Always
+...
-- 
2.39.2



