Delivery-date: Fri, 17 Feb 2023 18:36:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4eo-00AIDP-UN
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:36:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ej-0006E1-5w
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:36:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RaGbjGe2ypfE3ErF0mnjbLT4f8MaOlL75XPTu9b0wAI=; b=h7kV57gTMzLEGs2c4BbKweLlXC
	yFiPj51eaMT1Fc2qsnxmW92G0cTyGmdJWCUFBp5E6vZXX+6ZPE++O2xM9FC2YdY9oT2mPTApteDU2
	ud88U9fAp+C0nsuqAsiU9GoBM6Gwb5n5MdUIeyyt/dyXJxrqd/68iXDrgUvTcbAMopBH/w0/P9Wby
	idBJChrQ9wcGEOTvNu2WbCyxQCVHvT/Z4a6ejOJ1KnHdFEJV/GNRiek2/iXj5cPo2vS1GZmhbM9sV
	u4fnnF892x9hHVJYCaf23iQXH+Y/yfu2Xn/B9tlIdGNoAq08fkDKBIULSrQ4frQlhz1OsYTKeRwtz
	By+AJC6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4dE-00FHVS-C6; Fri, 17 Feb 2023 17:34:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zk-00FFMH-JK
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Zb-0004Eg-6S; Fri, 17 Feb 2023 18:31:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-005dUE-Cd; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZV-007ixQ-TJ; Fri, 17 Feb 2023 18:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:38 +0100
Message-Id: <20230217173057.1839835-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 01/20] scripts/dtc: Update to upstream version v1.7.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the following commits from upstream dtc:

039a99414e77 Bump version to v1.7.0
9b62ec84bb2d Merge remote-tracking branch 'gitlab/main'
3f29d6d85c24 pylibfdt: add size_hint parameter for get_path
2022bb10879d checks: Update #{size,address}-cells check for 'dma-ranges'
abbd523bae6e pylibfdt: Work-around SWIG limitations with flexible arrays
a41509bea3e7 libfdt: Replace deprecated 0-length arrays with proper flexible arrays
2cd89f862cdb dtc: Warning rather than error on possible truncation of cell values
55778a03df61 libfdt: tests: add get_next_tag_invalid_prop_len
73590342fc85 libfdt: prevent integer overflow in fdt_next_tag
035fb90d5375 libfdt: add fdt_get_property_by_offset_w helper
98a07006c48d Makefile: fix infinite recursion by dropping non-existent `%.output`
a036cc7b0c10 Makefile: limit make re-execution to avoid infinite spin
c6e92108bcd9 libdtc: remove duplicate judgments
e37c25677dc9 Don't generate erroneous fixups from reference to path
50454658f2b5 libfdt: Don't mask fdt_get_name() returned error
e64a204196c9 manual.txt: Follow README.md and remove Jon
f508c83fe6f0 Update README in MANIFEST.in and setup.py to README.md
c2ccf8a77dd2 Add description of Signed-off-by lines
90b9d9de42ca Split out information for contributors to CONTRIBUTING.md
0ee1d479b23a Remove Jon Loeliger from maintainers list
b33a73c62c1c Convert README to README.md
7ad60734b1c1 Allow static building with meson
fd9b8c96c780 Allow static building with make
fda71da26e7f libfdt: Handle failed get_name() on BEGIN_NODE
c7c7f17a83d5 Fix test script to run also on dash shell
01f23ffe1679 Add missing relref_merge test to meson test list
ed310803ea89 pylibfdt: add FdtRo.get_path()
c001fc01a43e pylibfdt: fix swig build in install
26c54f840d23 tests: add test cases for label-relative path references
ec7986e682cf dtc: introduce label relative path references
651410e54cb9 util: introduce xstrndup helper
4048aed12b81 setup.py: fix out of tree build
ff5afb96d0c0 Handle integer overflow in check_property_phandle_args()
ca7294434309 README: Explain how to add a new API function
c0c2e115f82e Fix a UB when fdt_get_string return null
cd5f69cbc0d4 tests: setprop_inplace: use xstrdup instead of unchecked strdup
a04f69025003 pylibfdt: add Property.as_*int*_array()
83102717d7c4 pylibfdt: add Property.as_stringlist()
d152126bb029 Fix Python crash on getprop deallocation
17739b7ef510 Support 'r' format for printing raw bytes with fdtget
45f3d1a095dd libfdt: overlay: make overlay_get_target() public
c19a4bafa514 libfdt: fix an incorrect integer promotion
1cc41b1c969f pylibfdt: Add packaging metadata
db72398cd437 README: Update pylibfdt install instructions
383e148b70a4 pylibfdt: fix with Python 3.10
23b56cb7e189 pylibfdt: Move setup.py to the top level
69a760747d8d pylibfdt: Split setup.py author name and email
0b106a77dbdc pylibfdt: Use setuptools_scm for the version
c691776ddb26 pylibfdt: Use setuptools instead of distutils
5216f3f1bbb7 libfdt: Add static lib to meson build
4eda2590f481 CI: Cirrus: bump used FreeBSD from 12.1 to 13.0
0a3a9d3449c8 checks: Add an interrupt-map check
8fd24744e361 checks: Ensure '#interrupt-cells' only exists in interrupt providers
d8d1a9a77863 checks: Drop interrupt provider '#address-cells' check
52a16fd72824 checks: Make interrupt_provider check dependent on interrupts_extended_is_cell
37fd700685da treesource: Maintain phandle label/path on output
e33ce1d6a8c7 flattree: Use '\n', not ';' to separate asm pseudo-ops
d24cc189dca6 asm: Use assembler macros instead of cpp macros
ff3a30c115ad asm: Use .asciz and .ascii instead of .string
5eb5927d81ee fdtdump: fix -Werror=int-to-pointer-cast
0869f8269161 libfdt: Add ALIGNMENT error string
69595a167f06 checks: Fix bus-range check
72d09e2682a4 Makefile: add -Wsign-compare to warning options
b587787ef388 checks: Fix signedness comparisons warnings
69bed6c2418f dtc: Wrap phandle validity check
910221185560 fdtget: Fix signedness comparisons warnings
d966f08fcd21 tests: Fix signedness comparisons warnings
ecfb438c07fa dtc: Fix signedness comparisons warnings: pointer diff
5bec74a6d135 dtc: Fix signedness comparisons warnings: reservednum
24e7f511fd4a fdtdump: Fix signedness comparisons warnings
b6910bec1161 Bump version to v1.6.1
21d61d18f968 Fix CID 1461557
4c2ef8f4d14c checks: Introduce is_multiple_of()
e59ca36fb70e Make handling of cpp line information more tolerant
0c3fd9b6aceb checks: Drop interrupt_cells_is_cell check
6b3081abc4ac checks: Add check_is_cell() for all phandle+arg properties
2dffc192a77f yamltree: Remove marker ordering dependency
61e513439e40 pylibfdt: Rework "avoid unused variable warning" lines
c8bddd106095 tests: add a positive gpio test case
ad4abfadb687 checks: replace strstr and strrchr with strends
09c6a6e88718 dtc.h: add strends for suffix matching
9bb9b8d0b4a0 checks: tigthen up nr-gpios prop exception
b07b62ee3342 libfdt: Add FDT alignment check to fdt_check_header()
a2def5479950 libfdt: Check that the root-node name is empty
4ca61f84dc21 libfdt: Check that there is only one root node
34d708249a91 dtc: Remove -O dtbo support
8e7ff260f755 libfdt: Fix a possible "unchecked return value" warning
88875268c05c checks: Warn on node-name and property name being the same
9d2279e7e6ee checks: Change node-name check to match devicetree spec
f527c867a8c6 util: limit gnu_printf format attribute to gcc >= 4.4.0
183df9e9c2b9 gitignore: Ignore the swp files
0db6d09584e1 gitignore: Add cscope files
307afa1a7be8 Update Jon Loeliger's email
ca16a723fa9d fdtdump: Fix gcc11 warning
64990a272e8f srcpos: increase MAX_SRCFILE_DEPTH
163f0469bf2e dtc: Allow overlays to have .dtbo extension
3b01518e688d Set last_comp_version correctly in new dtb and fix potential version issues in fdt_open_into
f7e5737f26aa tests: Fix overlay_overlay_nosugar test case
7cd5d5fe43d5 libfdt: Tweak description of assume-aligned load helpers
a7c404099349 libfdt: Internally perform potentially unaligned loads
bab85e48a6f4 meson: increase default timeout for tests
f8b46098824d meson: do not assume python is installed, skip tests
30a56bce4f0b meson: fix -Wall warning
5e735860c478 libfdt: Check for 8-byte address alignment in fdt_ro_probe_()
67849a327927 build-sys: add meson build
05874d08212d pylibfdt: allow build out of tree
3bc3a6b9fe0c dtc: Fix signedness comparisons warnings: Wrap (-1)
e1147b159e92 dtc: Fix signedness comparisons warnings: change types
04cf1fdc0fcf convert-dtsv0: Fix signedness comparisons warning
b30013edb878 libfdt: Fix kernel-doc comments
cbca977ea121 checks: Allow PCI bridge child nodes without an address
73e0f143b73d libfdt: fdt_strerror(): Fix comparison warning
6c2be7d85315 libfdt: fdt_get_string(): Fix sequential write comparison warnings
82525f41d59e libfdt: libfdt_wip: Fix comparison warning
fb1f65f15832 libfdt: fdt_create_with_flags(): Fix comparison warning
f28aa271000b libfdt: fdt_move(): Fix comparison warnings
3d7c6f44195a libfdt: fdt_add_string_(): Fix comparison warning
10f682788c30 libfdt: fdt_node_offset_by_phandle(): Fix comparison warning
07158f4cf2a2 libfdt: overlay: Fix comparison warning
ce9e1f25a7de libfdt: fdt_resize(): Fix comparison warning
faa76fc10bc5 libfdt: fdt_splice_(): Fix comparison warning
54dca0985316 libfdt: fdt_get_string(): Fix comparison warnings
f8e11e61624e libfdt: fdt_grab_space_(): Fix comparison warning
0c43d4d7bf5a libfdt: fdt_mem_rsv(): Fix comparison warnings
442ea3dd1579 libfdt: fdt_offset_ptr(): Fix comparison warnings
ca19c3db2bf6 Makefile: Specify cflags for libyaml
7bb86f1c0956 libfdt: fix fdt_check_node_offset_ w/ VALID_INPUT
3d522abc7571 dtc: Include stdlib.h in util.h
808cdaaf524f dtc: Avoid UB when shifting
3e3138b4a956 libfdt: fix fdt_check_full buffer overrun
9d7888cbf19c dtc: Consider one-character strings as strings
8259d59f59de checks: Improve i2c reg property checking
fdabcf2980a4 checks: Remove warning for I2C_OWN_SLAVE_ADDRESS
2478b1652c8d libfdt: add extern "C" for C++
f68bfc2668b2 libfdt: trivial typo fix
7be250b4d059 libfdt: Correct condition for reordering blocks
81e0919a3e21 checks: Add interrupt provider test
85e5d839847a Makefile: when building libfdt only, do not add unneeded deps
b28464a550c5 Fix some potential unaligned accesses in dtc
87a656ae5ff9 check: Inform about missing ranges
73d6e9ecb417 libfdt: fix undefined behaviour in fdt_splice_()
2525da3dba9b Bump version to v1.6.0
62cb4ad286ff Execute tests on FreeBSD with Cirrus CI
1f9a41750883 tests: Allow running the testsuite on already installed binary / libraries
c5995ddf4c20 tests: Honour NO_YAML make variable
e4ce227e89d7 tests: Properly clean up .bak file from tests
9b75292c335c tests: Honour $(NO_PYTHON) flag from Makefile in run_tests.sh
6c253afd07d4 Encode $(NO_PYTHON) consistently with other variables
95ec8ef706bd tests: No need to explicitly pass $PYTHON from Make to run_tests.sh
2b5f62d109a2 tests: Let run_tests.sh run Python tests without Makefile assistance
76b43dcbd18a checks: Add 'dma-ranges' check
e5c92a4780c6 libfdt: Use VALID_INPUT for FDT_ERR_BADSTATE checks
e5cc26b68bc0 libfdt: Add support for disabling internal checks
28fd7590aad2 libfdt: Improve comments in some of the assumptions
fc207c32341b libfdt: Fix a few typos
0f61c72dedc4 libfdt: Allow exclusion of fdt_check_full()
f270f45fd5d2 libfdt: Add support for disabling ordering check/fixup
c18bae9a4c96 libfdt: Add support for disabling version checks
fc03c4a2e04e libfdt: Add support for disabling rollback handling
77563ae72b7c libfdt: Add support for disabling sanity checks
57bc6327b80b libfdt: Add support for disabling dtb checks
464962489dcc Add a way to control the level of checks in the code
0c5326cb2845 libfdt: De-inline fdt_header_size()
cc6a5a071504 Revert "yamltree: Ensure consistent bracketing of properties with phandles"
0e9225eb0dfe Remove redundant YYLOC global declaration
cab09eedd644 Move -DNO_VALGRIND into CPPFLAGS
0eb1cb0b531e Makefile: pass $(CFLAGS) also during dependency generation
c40aeb60b47a travis.yml: Run tests on the non-x86 builders, too
9f86aff444f4 Add .cirrus.yml for FreeBSD build
34c82275bae6 Avoid gnu_printf attribute when using Clang
743000931bc9 tests: default to 'cc' if CC not set
adcd676491cc Add test-case for trailing zero
d9c55f855b65 Remove trailing zero from the overlay path
7a22132c79ec pylibfdt: Adjust for deprecated test methods
dbe80d577ee2 tests: add extension to sed -i for GNU/BSD sed compatibility
af57d440d887 libfdt: Correct prototype for fdt_ro_probe_()
6ce585ac153b Use correct inttypes.h format specifier
715028622547 support byacc in addition to bison
fdf3f6d897ab pylibfdt: Correct the type for fdt_property_stub()
430419c28100 tests: fix some python warnings
588a29ff2e4e util: use gnu_printf format attribute
bc876708ab1d fstree: replace lstat with stat
4c3c4ccb9916 dumptrees: pass outputdir as first argument
aa522da9fff6 tests: allow out-of-tree test run
0d0d0fa51b1f fdtoverlay: Return non-zero exit code if overlays can't be applied
4605eb047b38 Add .editorconfig
18d7b2f4ee45 yamltree: Ensure consistent bracketing of properties with phandles
67f790c1adcc libfdt.h: add explicit cast from void* to uint8_t* in fdt(32|64)_st
b111122ea5eb pylibfdt: use python3 shebang

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/dtc/checks.c                 | 293 ++++++++++++++++++++-------
 scripts/dtc/data.c                   |   6 +-
 scripts/dtc/dtc-lexer.l              |   4 +-
 scripts/dtc/dtc-parser.y             |  32 ++-
 scripts/dtc/dtc.c                    |   6 +-
 scripts/dtc/dtc.h                    |  79 +++++++-
 scripts/dtc/fdtget.c                 |  15 +-
 scripts/dtc/flattree.c               |  21 +-
 scripts/dtc/fstree.c                 |   2 +-
 scripts/dtc/libfdt/Makefile.libfdt   |   2 +-
 scripts/dtc/libfdt/fdt.c             | 144 ++++++++-----
 scripts/dtc/libfdt/fdt.h             |   4 +-
 scripts/dtc/libfdt/fdt_addresses.c   |   2 +-
 scripts/dtc/libfdt/fdt_overlay.c     |  34 +---
 scripts/dtc/libfdt/fdt_ro.c          | 175 +++++++---------
 scripts/dtc/libfdt/fdt_rw.c          |  64 ++++--
 scripts/dtc/libfdt/fdt_strerror.c    |   5 +-
 scripts/dtc/libfdt/fdt_sw.c          |  50 +++--
 scripts/dtc/libfdt/fdt_wip.c         |   2 +-
 scripts/dtc/libfdt/libfdt.h          | 175 +++++++++++-----
 scripts/dtc/libfdt/libfdt_internal.h | 145 ++++++++++++-
 scripts/dtc/livetree.c               |  47 ++++-
 scripts/dtc/srcpos.c                 |   2 +-
 scripts/dtc/treesource.c             |  56 +++--
 scripts/dtc/util.c                   |  18 +-
 scripts/dtc/util.h                   |   9 +-
 scripts/dtc/version_gen.h            |   2 +-
 scripts/dtc/yamltree.c               |  24 ++-
 28 files changed, 985 insertions(+), 433 deletions(-)

diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index 756f0fa9203f..69f2649e6ebd 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -143,6 +143,14 @@ static void check_nodes_props(struct check *c, struct dt_info *dti, struct node
 		check_nodes_props(c, dti, child);
 }
 
+static bool is_multiple_of(int multiple, int divisor)
+{
+	if (divisor == 0)
+		return multiple == 0;
+	else
+		return (multiple % divisor) == 0;
+}
+
 static bool run_check(struct check *c, struct dt_info *dti)
 {
 	struct node *dt = dti->dt;
@@ -297,19 +305,20 @@ ERROR(duplicate_property_names, check_duplicate_property_names, NULL);
 #define LOWERCASE	"abcdefghijklmnopqrstuvwxyz"
 #define UPPERCASE	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 #define DIGITS		"0123456789"
-#define PROPNODECHARS	LOWERCASE UPPERCASE DIGITS ",._+*#?-"
+#define NODECHARS	LOWERCASE UPPERCASE DIGITS ",._+-@"
+#define PROPCHARS	LOWERCASE UPPERCASE DIGITS ",._+*#?-"
 #define PROPNODECHARSSTRICT	LOWERCASE UPPERCASE DIGITS ",-"
 
 static void check_node_name_chars(struct check *c, struct dt_info *dti,
 				  struct node *node)
 {
-	int n = strspn(node->name, c->data);
+	size_t n = strspn(node->name, c->data);
 
 	if (n < strlen(node->name))
 		FAIL(c, dti, node, "Bad character '%c' in node name",
 		     node->name[n]);
 }
-ERROR(node_name_chars, check_node_name_chars, PROPNODECHARS "@");
+ERROR(node_name_chars, check_node_name_chars, NODECHARS);
 
 static void check_node_name_chars_strict(struct check *c, struct dt_info *dti,
 					 struct node *node)
@@ -330,6 +339,20 @@ static void check_node_name_format(struct check *c, struct dt_info *dti,
 }
 ERROR(node_name_format, check_node_name_format, NULL, &node_name_chars);
 
+static void check_node_name_vs_property_name(struct check *c,
+					     struct dt_info *dti,
+					     struct node *node)
+{
+	if (!node->parent)
+		return;
+
+	if (get_property(node->parent, node->name)) {
+		FAIL(c, dti, node, "node name and property name conflict");
+	}
+}
+WARNING(node_name_vs_property_name, check_node_name_vs_property_name,
+	NULL, &node_name_chars);
+
 static void check_unit_address_vs_reg(struct check *c, struct dt_info *dti,
 				      struct node *node)
 {
@@ -352,7 +375,7 @@ static void check_unit_address_vs_reg(struct check *c, struct dt_info *dti,
 			FAIL(c, dti, node, "node has a reg or ranges property, but no unit name");
 	} else {
 		if (unitname[0])
-			FAIL(c, dti, node, "node has a unit name, but no reg property");
+			FAIL(c, dti, node, "node has a unit name, but no reg or ranges property");
 	}
 }
 WARNING(unit_address_vs_reg, check_unit_address_vs_reg, NULL);
@@ -363,14 +386,14 @@ static void check_property_name_chars(struct check *c, struct dt_info *dti,
 	struct property *prop;
 
 	for_each_property(node, prop) {
-		int n = strspn(prop->name, c->data);
+		size_t n = strspn(prop->name, c->data);
 
 		if (n < strlen(prop->name))
 			FAIL_PROP(c, dti, node, prop, "Bad character '%c' in property name",
 				  prop->name[n]);
 	}
 }
-ERROR(property_name_chars, check_property_name_chars, PROPNODECHARS);
+ERROR(property_name_chars, check_property_name_chars, PROPCHARS);
 
 static void check_property_name_chars_strict(struct check *c,
 					     struct dt_info *dti,
@@ -380,7 +403,7 @@ static void check_property_name_chars_strict(struct check *c,
 
 	for_each_property(node, prop) {
 		const char *name = prop->name;
-		int n = strspn(name, c->data);
+		size_t n = strspn(name, c->data);
 
 		if (n == strlen(prop->name))
 			continue;
@@ -497,7 +520,7 @@ static cell_t check_phandle_prop(struct check *c, struct dt_info *dti,
 
 	phandle = propval_cell(prop);
 
-	if ((phandle == 0) || (phandle == -1)) {
+	if (!phandle_is_valid(phandle)) {
 		FAIL_PROP(c, dti, node, prop, "bad value (0x%x) in %s property",
 		     phandle, prop->name);
 		return 0;
@@ -556,7 +579,7 @@ static void check_name_properties(struct check *c, struct dt_info *dti,
 	if (!prop)
 		return; /* No name property, that's fine */
 
-	if ((prop->val.len != node->basenamelen+1)
+	if ((prop->val.len != node->basenamelen + 1U)
 	    || (memcmp(prop->val.val, node->name, node->basenamelen) != 0)) {
 		FAIL(c, dti, node, "\"name\" property is incorrect (\"%s\" instead"
 		     " of base node name)", prop->val.val);
@@ -657,7 +680,6 @@ ERROR(omit_unused_nodes, fixup_omit_unused_nodes, NULL, &phandle_references, &pa
  */
 WARNING_IF_NOT_CELL(address_cells_is_cell, "#address-cells");
 WARNING_IF_NOT_CELL(size_cells_is_cell, "#size-cells");
-WARNING_IF_NOT_CELL(interrupt_cells_is_cell, "#interrupt-cells");
 
 WARNING_IF_NOT_STRING(device_type_is_string, "device_type");
 WARNING_IF_NOT_STRING(model_is_string, "model");
@@ -672,8 +694,7 @@ static void check_names_is_string_list(struct check *c, struct dt_info *dti,
 	struct property *prop;
 
 	for_each_property(node, prop) {
-		const char *s = strrchr(prop->name, '-');
-		if (!s || !streq(s, "-names"))
+		if (!strends(prop->name, "-names"))
 			continue;
 
 		c->data = prop->name;
@@ -753,7 +774,7 @@ static void check_reg_format(struct check *c, struct dt_info *dti,
 	size_cells = node_size_cells(node->parent);
 	entrylen = (addr_cells + size_cells) * sizeof(cell_t);
 
-	if (!entrylen || (prop->val.len % entrylen) != 0)
+	if (!is_multiple_of(prop->val.len, entrylen))
 		FAIL_PROP(c, dti, node, prop, "property has invalid length (%d bytes) "
 			  "(#address-cells == %d, #size-cells == %d)",
 			  prop->val.len, addr_cells, size_cells);
@@ -765,13 +786,15 @@ static void check_ranges_format(struct check *c, struct dt_info *dti,
 {
 	struct property *prop;
 	int c_addr_cells, p_addr_cells, c_size_cells, p_size_cells, entrylen;
+	const char *ranges = c->data;
 
-	prop = get_property(node, "ranges");
+	prop = get_property(node, ranges);
 	if (!prop)
 		return;
 
 	if (!node->parent) {
-		FAIL_PROP(c, dti, node, prop, "Root node has a \"ranges\" property");
+		FAIL_PROP(c, dti, node, prop, "Root node has a \"%s\" property",
+			  ranges);
 		return;
 	}
 
@@ -783,23 +806,24 @@ static void check_ranges_format(struct check *c, struct dt_info *dti,
 
 	if (prop->val.len == 0) {
 		if (p_addr_cells != c_addr_cells)
-			FAIL_PROP(c, dti, node, prop, "empty \"ranges\" property but its "
+			FAIL_PROP(c, dti, node, prop, "empty \"%s\" property but its "
 				  "#address-cells (%d) differs from %s (%d)",
-				  c_addr_cells, node->parent->fullpath,
+				  ranges, c_addr_cells, node->parent->fullpath,
 				  p_addr_cells);
 		if (p_size_cells != c_size_cells)
-			FAIL_PROP(c, dti, node, prop, "empty \"ranges\" property but its "
+			FAIL_PROP(c, dti, node, prop, "empty \"%s\" property but its "
 				  "#size-cells (%d) differs from %s (%d)",
-				  c_size_cells, node->parent->fullpath,
+				  ranges, c_size_cells, node->parent->fullpath,
 				  p_size_cells);
-	} else if ((prop->val.len % entrylen) != 0) {
-		FAIL_PROP(c, dti, node, prop, "\"ranges\" property has invalid length (%d bytes) "
+	} else if (!is_multiple_of(prop->val.len, entrylen)) {
+		FAIL_PROP(c, dti, node, prop, "\"%s\" property has invalid length (%d bytes) "
 			  "(parent #address-cells == %d, child #address-cells == %d, "
-			  "#size-cells == %d)", prop->val.len,
+			  "#size-cells == %d)", ranges, prop->val.len,
 			  p_addr_cells, c_addr_cells, c_size_cells);
 	}
 }
-WARNING(ranges_format, check_ranges_format, NULL, &addr_size_cells);
+WARNING(ranges_format, check_ranges_format, "ranges", &addr_size_cells);
+WARNING(dma_ranges_format, check_ranges_format, "dma-ranges", &addr_size_cells);
 
 static const struct bus_type pci_bus = {
 	.name = "PCI",
@@ -868,7 +892,7 @@ static void check_pci_device_bus_num(struct check *c, struct dt_info *dti, struc
 	} else {
 		cells = (cell_t *)prop->val.val;
 		min_bus = fdt32_to_cpu(cells[0]);
-		max_bus = fdt32_to_cpu(cells[0]);
+		max_bus = fdt32_to_cpu(cells[1]);
 	}
 	if ((bus_num < min_bus) || (bus_num > max_bus))
 		FAIL_PROP(c, dti, node, prop, "PCI bus number %d out of range, expected (%d - %d)",
@@ -888,10 +912,8 @@ static void check_pci_device_reg(struct check *c, struct dt_info *dti, struct no
 		return;
 
 	prop = get_property(node, "reg");
-	if (!prop) {
-		FAIL(c, dti, node, "missing PCI reg property");
+	if (!prop)
 		return;
-	}
 
 	cells = (cell_t *)prop->val.val;
 	if (cells[1] || cells[2])
@@ -1019,6 +1041,9 @@ static void check_i2c_bus_bridge(struct check *c, struct dt_info *dti, struct no
 }
 WARNING(i2c_bus_bridge, check_i2c_bus_bridge, NULL, &addr_size_cells);
 
+#define I2C_OWN_SLAVE_ADDRESS	(1U << 30)
+#define I2C_TEN_BIT_ADDRESS	(1U << 31)
+
 static void check_i2c_bus_reg(struct check *c, struct dt_info *dti, struct node *node)
 {
 	struct property *prop;
@@ -1041,6 +1066,8 @@ static void check_i2c_bus_reg(struct check *c, struct dt_info *dti, struct node
 	}
 
 	reg = fdt32_to_cpu(*cells);
+	/* Ignore I2C_OWN_SLAVE_ADDRESS */
+	reg &= ~I2C_OWN_SLAVE_ADDRESS;
 	snprintf(unit_addr, sizeof(unit_addr), "%x", reg);
 	if (!streq(unitname, unit_addr))
 		FAIL(c, dti, node, "I2C bus unit address format error, expected \"%s\"",
@@ -1048,10 +1075,15 @@ static void check_i2c_bus_reg(struct check *c, struct dt_info *dti, struct node
 
 	for (len = prop->val.len; len > 0; len -= 4) {
 		reg = fdt32_to_cpu(*(cells++));
-		if (reg > 0x3ff)
+		/* Ignore I2C_OWN_SLAVE_ADDRESS */
+		reg &= ~I2C_OWN_SLAVE_ADDRESS;
+
+		if ((reg & I2C_TEN_BIT_ADDRESS) && ((reg & ~I2C_TEN_BIT_ADDRESS) > 0x3ff))
 			FAIL_PROP(c, dti, node, prop, "I2C address must be less than 10-bits, got \"0x%x\"",
 				  reg);
-
+		else if (reg > 0x7f)
+			FAIL_PROP(c, dti, node, prop, "I2C address must be less than 7-bits, got \"0x%x\". Set I2C_TEN_BIT_ADDRESS for 10 bit addresses or fix the property",
+				  reg);
 	}
 }
 WARNING(i2c_bus_reg, check_i2c_bus_reg, NULL, &reg_format, &i2c_bus_bridge);
@@ -1190,7 +1222,7 @@ static void check_avoid_unnecessary_addr_size(struct check *c, struct dt_info *d
 	if (!node->parent || node->addr_cells < 0 || node->size_cells < 0)
 		return;
 
-	if (get_property(node, "ranges") || !node->children)
+	if (get_property(node, "ranges") || get_property(node, "dma-ranges") || !node->children)
 		return;
 
 	for_each_child(node, child) {
@@ -1200,7 +1232,7 @@ static void check_avoid_unnecessary_addr_size(struct check *c, struct dt_info *d
 	}
 
 	if (!has_reg)
-		FAIL(c, dti, node, "unnecessary #address-cells/#size-cells without \"ranges\" or child \"reg\" property");
+		FAIL(c, dti, node, "unnecessary #address-cells/#size-cells without \"ranges\", \"dma-ranges\" or child \"reg\" property");
 }
 WARNING(avoid_unnecessary_addr_size, check_avoid_unnecessary_addr_size, NULL, &avoid_default_addr_size);
 
@@ -1350,15 +1382,15 @@ struct provider {
 };
 
 static void check_property_phandle_args(struct check *c,
-					  struct dt_info *dti,
-				          struct node *node,
-				          struct property *prop,
-				          const struct provider *provider)
+					struct dt_info *dti,
+					struct node *node,
+					struct property *prop,
+					const struct provider *provider)
 {
 	struct node *root = dti->dt;
-	int cell, cellsize = 0;
+	unsigned int cell, cellsize = 0;
 
-	if (prop->val.len % sizeof(cell_t)) {
+	if (!is_multiple_of(prop->val.len, sizeof(cell_t))) {
 		FAIL_PROP(c, dti, node, prop,
 			  "property size (%d) is invalid, expected multiple of %zu",
 			  prop->val.len, sizeof(cell_t));
@@ -1368,14 +1400,15 @@ static void check_property_phandle_args(struct check *c,
 	for (cell = 0; cell < prop->val.len / sizeof(cell_t); cell += cellsize + 1) {
 		struct node *provider_node;
 		struct property *cellprop;
-		int phandle;
+		cell_t phandle;
+		unsigned int expected;
 
 		phandle = propval_cell_n(prop, cell);
 		/*
 		 * Some bindings use a cell value 0 or -1 to skip over optional
 		 * entries when each index position has a specific definition.
 		 */
-		if (phandle == 0 || phandle == -1) {
+		if (!phandle_is_valid(phandle)) {
 			/* Give up if this is an overlay with external references */
 			if (dti->dtsflags & DTSF_PLUGIN)
 				break;
@@ -1418,10 +1451,12 @@ static void check_property_phandle_args(struct check *c,
 			break;
 		}
 
-		if (prop->val.len < ((cell + cellsize + 1) * sizeof(cell_t))) {
+		expected = (cell + cellsize + 1) * sizeof(cell_t);
+		if ((expected <= cell) || prop->val.len < expected) {
 			FAIL_PROP(c, dti, node, prop,
-				  "property size (%d) too small for cell size %d",
+				  "property size (%d) too small for cell size %u",
 				  prop->val.len, cellsize);
+			break;
 		}
 	}
 }
@@ -1441,7 +1476,8 @@ static void check_provider_cells_property(struct check *c,
 }
 #define WARNING_PROPERTY_PHANDLE_CELLS(nm, propname, cells_name, ...) \
 	static struct provider nm##_provider = { (propname), (cells_name), __VA_ARGS__ }; \
-	WARNING(nm##_property, check_provider_cells_property, &nm##_provider, &phandle_references);
+	WARNING_IF_NOT_CELL(nm##_is_cell, cells_name); \
+	WARNING(nm##_property, check_provider_cells_property, &nm##_provider, &nm##_is_cell, &phandle_references);
 
 WARNING_PROPERTY_PHANDLE_CELLS(clocks, "clocks", "#clock-cells");
 WARNING_PROPERTY_PHANDLE_CELLS(cooling_device, "cooling-device", "#cooling-cells");
@@ -1462,24 +1498,17 @@ WARNING_PROPERTY_PHANDLE_CELLS(thermal_sensors, "thermal-sensors", "#thermal-sen
 
 static bool prop_is_gpio(struct property *prop)
 {
-	char *str;
-
 	/*
 	 * *-gpios and *-gpio can appear in property names,
 	 * so skip over any false matches (only one known ATM)
 	 */
-	if (strstr(prop->name, "nr-gpio"))
+	if (strends(prop->name, ",nr-gpios"))
 		return false;
 
-	str = strrchr(prop->name, '-');
-	if (str)
-		str++;
-	else
-		str = prop->name;
-	if (!(streq(str, "gpios") || streq(str, "gpio")))
-		return false;
-
-	return true;
+	return strends(prop->name, "-gpios") ||
+		streq(prop->name, "gpios") ||
+		strends(prop->name, "-gpio") ||
+		streq(prop->name, "gpio");
 }
 
 static void check_gpios_property(struct check *c,
@@ -1514,13 +1543,10 @@ static void check_deprecated_gpio_property(struct check *c,
 	struct property *prop;
 
 	for_each_property(node, prop) {
-		char *str;
-
 		if (!prop_is_gpio(prop))
 			continue;
 
-		str = strstr(prop->name, "gpio");
-		if (!streq(str, "gpio"))
+		if (!strends(prop->name, "gpio"))
 			continue;
 
 		FAIL_PROP(c, dti, node, prop,
@@ -1544,6 +1570,113 @@ static bool node_is_interrupt_provider(struct node *node)
 
 	return false;
 }
+
+static void check_interrupt_provider(struct check *c,
+				     struct dt_info *dti,
+				     struct node *node)
+{
+	struct property *prop;
+	bool irq_provider = node_is_interrupt_provider(node);
+
+	prop = get_property(node, "#interrupt-cells");
+	if (irq_provider && !prop) {
+		FAIL(c, dti, node,
+		     "Missing '#interrupt-cells' in interrupt provider");
+		return;
+	}
+
+	if (!irq_provider && prop) {
+		FAIL(c, dti, node,
+		     "'#interrupt-cells' found, but node is not an interrupt provider");
+		return;
+	}
+}
+WARNING(interrupt_provider, check_interrupt_provider, NULL, &interrupts_extended_is_cell);
+
+static void check_interrupt_map(struct check *c,
+				struct dt_info *dti,
+				struct node *node)
+{
+	struct node *root = dti->dt;
+	struct property *prop, *irq_map_prop;
+	size_t cellsize, cell, map_cells;
+
+	irq_map_prop = get_property(node, "interrupt-map");
+	if (!irq_map_prop)
+		return;
+
+	if (node->addr_cells < 0) {
+		FAIL(c, dti, node,
+		     "Missing '#address-cells' in interrupt-map provider");
+		return;
+	}
+	cellsize = node_addr_cells(node);
+	cellsize += propval_cell(get_property(node, "#interrupt-cells"));
+
+	prop = get_property(node, "interrupt-map-mask");
+	if (prop && (prop->val.len != (cellsize * sizeof(cell_t))))
+		FAIL_PROP(c, dti, node, prop,
+			  "property size (%d) is invalid, expected %zu",
+			  prop->val.len, cellsize * sizeof(cell_t));
+
+	if (!is_multiple_of(irq_map_prop->val.len, sizeof(cell_t))) {
+		FAIL_PROP(c, dti, node, irq_map_prop,
+			  "property size (%d) is invalid, expected multiple of %zu",
+			  irq_map_prop->val.len, sizeof(cell_t));
+		return;
+	}
+
+	map_cells = irq_map_prop->val.len / sizeof(cell_t);
+	for (cell = 0; cell < map_cells; ) {
+		struct node *provider_node;
+		struct property *cellprop;
+		int phandle;
+		size_t parent_cellsize;
+
+		if ((cell + cellsize) >= map_cells) {
+			FAIL_PROP(c, dti, node, irq_map_prop,
+				  "property size (%d) too small, expected > %zu",
+				  irq_map_prop->val.len, (cell + cellsize) * sizeof(cell_t));
+			break;
+		}
+		cell += cellsize;
+
+		phandle = propval_cell_n(irq_map_prop, cell);
+		if (!phandle_is_valid(phandle)) {
+			/* Give up if this is an overlay with external references */
+			if (!(dti->dtsflags & DTSF_PLUGIN))
+				FAIL_PROP(c, dti, node, irq_map_prop,
+					  "Cell %zu is not a phandle(%d)",
+					  cell, phandle);
+			break;
+		}
+
+		provider_node = get_node_by_phandle(root, phandle);
+		if (!provider_node) {
+			FAIL_PROP(c, dti, node, irq_map_prop,
+				  "Could not get phandle(%d) node for (cell %zu)",
+				  phandle, cell);
+			break;
+		}
+
+		cellprop = get_property(provider_node, "#interrupt-cells");
+		if (cellprop) {
+			parent_cellsize = propval_cell(cellprop);
+		} else {
+			FAIL(c, dti, node, "Missing property '#interrupt-cells' in node %s or bad phandle (referred from interrupt-map[%zu])",
+			     provider_node->fullpath, cell);
+			break;
+		}
+
+		cellprop = get_property(provider_node, "#address-cells");
+		if (cellprop)
+			parent_cellsize += propval_cell(cellprop);
+
+		cell += 1 + parent_cellsize;
+	}
+}
+WARNING(interrupt_map, check_interrupt_map, NULL, &phandle_references, &addr_size_cells, &interrupt_provider);
+
 static void check_interrupts_property(struct check *c,
 				      struct dt_info *dti,
 				      struct node *node)
@@ -1551,13 +1684,13 @@ static void check_interrupts_property(struct check *c,
 	struct node *root = dti->dt;
 	struct node *irq_node = NULL, *parent = node;
 	struct property *irq_prop, *prop = NULL;
-	int irq_cells, phandle;
+	cell_t irq_cells, phandle;
 
 	irq_prop = get_property(node, "interrupts");
 	if (!irq_prop)
 		return;
 
-	if (irq_prop->val.len % sizeof(cell_t))
+	if (!is_multiple_of(irq_prop->val.len, sizeof(cell_t)))
 		FAIL_PROP(c, dti, node, irq_prop, "size (%d) is invalid, expected multiple of %zu",
 		     irq_prop->val.len, sizeof(cell_t));
 
@@ -1570,7 +1703,7 @@ static void check_interrupts_property(struct check *c,
 		prop = get_property(parent, "interrupt-parent");
 		if (prop) {
 			phandle = propval_cell(prop);
-			if ((phandle == 0) || (phandle == -1)) {
+			if (!phandle_is_valid(phandle)) {
 				/* Give up if this is an overlay with
 				 * external references */
 				if (dti->dtsflags & DTSF_PLUGIN)
@@ -1601,12 +1734,12 @@ static void check_interrupts_property(struct check *c,
 
 	prop = get_property(irq_node, "#interrupt-cells");
 	if (!prop) {
-		FAIL(c, dti, irq_node, "Missing #interrupt-cells in interrupt-parent");
+		/* We warn about that already in another test. */
 		return;
 	}
 
 	irq_cells = propval_cell(prop);
-	if (irq_prop->val.len % (irq_cells * sizeof(cell_t))) {
+	if (!is_multiple_of(irq_prop->val.len, irq_cells * sizeof(cell_t))) {
 		FAIL_PROP(c, dti, node, prop,
 			  "size is (%d), expected multiple of %d",
 			  irq_prop->val.len, (int)(irq_cells * sizeof(cell_t)));
@@ -1717,7 +1850,7 @@ WARNING(graph_port, check_graph_port, NULL, &graph_nodes);
 static struct node *get_remote_endpoint(struct check *c, struct dt_info *dti,
 					struct node *endpoint)
 {
-	int phandle;
+	cell_t phandle;
 	struct node *node;
 	struct property *prop;
 
@@ -1727,7 +1860,7 @@ static struct node *get_remote_endpoint(struct check *c, struct dt_info *dti,
 
 	phandle = propval_cell(prop);
 	/* Give up if this is an overlay with external references */
-	if (phandle == 0 || phandle == -1)
+	if (!phandle_is_valid(phandle))
 		return NULL;
 
 	node = get_node_by_phandle(dti->dt, phandle);
@@ -1763,7 +1896,7 @@ WARNING(graph_endpoint, check_graph_endpoint, NULL, &graph_nodes);
 static struct check *check_table[] = {
 	&duplicate_node_names, &duplicate_property_names,
 	&node_name_chars, &node_name_format, &property_name_chars,
-	&name_is_string, &name_properties,
+	&name_is_string, &name_properties, &node_name_vs_property_name,
 
 	&duplicate_label,
 
@@ -1771,7 +1904,7 @@ static struct check *check_table[] = {
 	&phandle_references, &path_references,
 	&omit_unused_nodes,
 
-	&address_cells_is_cell, &size_cells_is_cell, &interrupt_cells_is_cell,
+	&address_cells_is_cell, &size_cells_is_cell,
 	&device_type_is_string, &model_is_string, &status_is_string,
 	&label_is_string,
 
@@ -1780,7 +1913,7 @@ static struct check *check_table[] = {
 	&property_name_chars_strict,
 	&node_name_chars_strict,
 
-	&addr_size_cells, &reg_format, &ranges_format,
+	&addr_size_cells, &reg_format, &ranges_format, &dma_ranges_format,
 
 	&unit_address_vs_reg,
 	&unit_address_format,
@@ -1806,25 +1939,43 @@ static struct check *check_table[] = {
 	&chosen_node_is_root, &chosen_node_bootargs, &chosen_node_stdout_path,
 
 	&clocks_property,
+	&clocks_is_cell,
 	&cooling_device_property,
+	&cooling_device_is_cell,
 	&dmas_property,
+	&dmas_is_cell,
 	&hwlocks_property,
+	&hwlocks_is_cell,
 	&interrupts_extended_property,
+	&interrupts_extended_is_cell,
 	&io_channels_property,
+	&io_channels_is_cell,
 	&iommus_property,
+	&iommus_is_cell,
 	&mboxes_property,
+	&mboxes_is_cell,
 	&msi_parent_property,
+	&msi_parent_is_cell,
 	&mux_controls_property,
+	&mux_controls_is_cell,
 	&phys_property,
+	&phys_is_cell,
 	&power_domains_property,
+	&power_domains_is_cell,
 	&pwms_property,
+	&pwms_is_cell,
 	&resets_property,
+	&resets_is_cell,
 	&sound_dai_property,
+	&sound_dai_is_cell,
 	&thermal_sensors_property,
+	&thermal_sensors_is_cell,
 
 	&deprecated_gpio_property,
 	&gpios_property,
 	&interrupts_property,
+	&interrupt_provider,
+	&interrupt_map,
 
 	&alias_paths,
 
@@ -1848,7 +1999,7 @@ static void enable_warning_error(struct check *c, bool warn, bool error)
 
 static void disable_warning_error(struct check *c, bool warn, bool error)
 {
-	int i;
+	unsigned int i;
 
 	/* Lowering level, also lower it for things this is the prereq
 	 * for */
@@ -1869,7 +2020,7 @@ static void disable_warning_error(struct check *c, bool warn, bool error)
 
 void parse_checks_option(bool warn, bool error, const char *arg)
 {
-	int i;
+	unsigned int i;
 	const char *name = arg;
 	bool enable = true;
 
@@ -1896,7 +2047,7 @@ void parse_checks_option(bool warn, bool error, const char *arg)
 
 void process_checks(bool force, struct dt_info *dti)
 {
-	int i;
+	unsigned int i;
 	int error = 0;
 
 	for (i = 0; i < ARRAY_SIZE(check_table); i++) {
diff --git a/scripts/dtc/data.c b/scripts/dtc/data.c
index 0a43b6de3264..14734233ad8b 100644
--- a/scripts/dtc/data.c
+++ b/scripts/dtc/data.c
@@ -21,10 +21,10 @@ void data_free(struct data d)
 		free(d.val);
 }
 
-struct data data_grow_for(struct data d, int xlen)
+struct data data_grow_for(struct data d, unsigned int xlen)
 {
 	struct data nd;
-	int newsize;
+	unsigned int newsize;
 
 	if (xlen == 0)
 		return d;
@@ -84,7 +84,7 @@ struct data data_copy_file(FILE *f, size_t maxlen)
 	while (!feof(f) && (d.len < maxlen)) {
 		size_t chunksize, ret;
 
-		if (maxlen == -1)
+		if (maxlen == (size_t)-1)
 			chunksize = 4096;
 		else
 			chunksize = maxlen - d.len;
diff --git a/scripts/dtc/dtc-lexer.l b/scripts/dtc/dtc-lexer.l
index b3b7270300de..de60a70b6bdb 100644
--- a/scripts/dtc/dtc-lexer.l
+++ b/scripts/dtc/dtc-lexer.l
@@ -57,7 +57,7 @@ static void PRINTF(1, 2) lexical_error(const char *fmt, ...);
 			push_input_file(name);
 		}
 
-<*>^"#"(line)?[ \t]+[0-9]+[ \t]+{STRING}([ \t]+[0-9]+)? {
+<*>^"#"(line)?[ \t]+[0-9]+[ \t]+{STRING}([ \t]+[0-9]+)* {
 			char *line, *fnstart, *fnend;
 			struct data fn;
 			/* skip text before line # */
@@ -200,7 +200,7 @@ static void PRINTF(1, 2) lexical_error(const char *fmt, ...);
 			return DT_LABEL_REF;
 		}
 
-<*>"&{/"{PATHCHAR}*\}	{	/* new-style path reference */
+<*>"&{"{PATHCHAR}*\}	{	/* new-style path reference */
 			yytext[yyleng-1] = '\0';
 			DPRINT("Ref: %s\n", yytext+2);
 			yylval.labelref = xstrdup(yytext+2);
diff --git a/scripts/dtc/dtc-parser.y b/scripts/dtc/dtc-parser.y
index 2ed4dc1f07fd..bff1337ec266 100644
--- a/scripts/dtc/dtc-parser.y
+++ b/scripts/dtc/dtc-parser.y
@@ -2,6 +2,8 @@
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
  */
+%locations
+
 %{
 #include <stdio.h>
 #include <inttypes.h>
@@ -17,8 +19,16 @@ extern void yyerror(char const *s);
 		treesource_error = true; \
 	} while (0)
 
+#define YYERROR_CALL(msg) yyerror(msg)
+
 extern struct dt_info *parser_output;
 extern bool treesource_error;
+
+static bool is_ref_relative(const char *ref)
+{
+	return ref[0] != '/' && strchr(&ref[1], '/');
+}
+
 %}
 
 %union {
@@ -165,6 +175,8 @@ devicetree:
 			 */
 			if (!($<flags>-1 & DTSF_PLUGIN))
 				ERROR(&@2, "Label or path %s not found", $1);
+			else if (is_ref_relative($1))
+				ERROR(&@2, "Label-relative reference %s not supported in plugin", $1);
 			$$ = add_orphan_node(
 					name_node(build_node(NULL, NULL, NULL),
 						  ""),
@@ -174,6 +186,9 @@ devicetree:
 		{
 			struct node *target = get_node_by_ref($1, $3);
 
+			if (($<flags>-1 & DTSF_PLUGIN) && is_ref_relative($3))
+				ERROR(&@2, "Label-relative reference %s not supported in plugin", $3);
+
 			if (target) {
 				add_label(&target->labels, $2);
 				merge_nodes(target, $4);
@@ -189,6 +204,8 @@ devicetree:
 			 * so $-1 is what we want (plugindecl)
 			 */
 			if ($<flags>-1 & DTSF_PLUGIN) {
+				if (is_ref_relative($2))
+					ERROR(&@2, "Label-relative reference %s not supported in plugin", $2);
 				add_orphan_node($1, $3, $2);
 			} else {
 				struct node *target = get_node_by_ref($1, $2);
@@ -387,9 +404,14 @@ arrayprefix:
 				 * within the mask to one (i.e. | in the
 				 * mask), all bits are one.
 				 */
-				if (($2 > mask) && (($2 | mask) != -1ULL))
-					ERROR(&@2, "Value out of range for"
-					      " %d-bit array element", $1.bits);
+				if (($2 > mask) && (($2 | mask) != -1ULL)) {
+					char *loc = srcpos_string(&@2);
+					fprintf(stderr,
+						"WARNING: %s: Value 0x%016" PRIx64
+						" truncated to 0x%0*" PRIx64 "\n",
+						loc, $2, $1.bits / 4, ($2 & mask));
+					free(loc);
+				}
 			}
 
 			$$.data = data_append_integer($1.data, $2, $1.bits);
@@ -472,8 +494,8 @@ integer_rela:
 	;
 
 integer_shift:
-	  integer_shift DT_LSHIFT integer_add { $$ = $1 << $3; }
-	| integer_shift DT_RSHIFT integer_add { $$ = $1 >> $3; }
+	  integer_shift DT_LSHIFT integer_add { $$ = ($3 < 64) ? ($1 << $3) : 0; }
+	| integer_shift DT_RSHIFT integer_add { $$ = ($3 < 64) ? ($1 >> $3) : 0; }
 	| integer_add
 	;
 
diff --git a/scripts/dtc/dtc.c b/scripts/dtc/dtc.c
index bdb3f5945699..bc786c543b7e 100644
--- a/scripts/dtc/dtc.c
+++ b/scripts/dtc/dtc.c
@@ -12,7 +12,7 @@
  * Command line options
  */
 int quiet;		/* Level of quietness */
-int reservenum;		/* Number of memory reservation slots */
+unsigned int reservenum;/* Number of memory reservation slots */
 int minsize;		/* Minimum blob size */
 int padsize;		/* Additional padding to blob */
 int alignsize;		/* Additional padding to blob accroding to the alignsize */
@@ -122,6 +122,8 @@ static const char *guess_type_by_name(const char *fname, const char *fallback)
 		return "dts";
 	if (!strcasecmp(s, ".yaml"))
 		return "yaml";
+	if (!strcasecmp(s, ".dtbo"))
+		return "dtb";
 	if (!strcasecmp(s, ".dtb"))
 		return "dtb";
 	return fallback;
@@ -195,7 +197,7 @@ int main(int argc, char *argv[])
 			depname = optarg;
 			break;
 		case 'R':
-			reservenum = strtol(optarg, NULL, 0);
+			reservenum = strtoul(optarg, NULL, 0);
 			break;
 		case 'S':
 			minsize = strtol(optarg, NULL, 0);
diff --git a/scripts/dtc/dtc.h b/scripts/dtc/dtc.h
index 6e74ecea55a3..0a1f54991026 100644
--- a/scripts/dtc/dtc.h
+++ b/scripts/dtc/dtc.h
@@ -35,7 +35,7 @@
  * Command line options
  */
 extern int quiet;		/* Level of quietness */
-extern int reservenum;		/* Number of memory reservation slots */
+extern unsigned int reservenum;	/* Number of memory reservation slots */
 extern int minsize;		/* Minimum blob size */
 extern int padsize;		/* Additional padding to blob */
 extern int alignsize;		/* Additional padding to blob accroding to the alignsize */
@@ -51,10 +51,56 @@ extern int annotate;		/* annotate .dts with input source location */
 
 typedef uint32_t cell_t;
 
+static inline bool phandle_is_valid(cell_t phandle)
+{
+	return phandle != 0 && phandle != ~0U;
+}
+
+static inline uint16_t dtb_ld16(const void *p)
+{
+	const uint8_t *bp = (const uint8_t *)p;
+
+	return ((uint16_t)bp[0] << 8)
+		| bp[1];
+}
+
+static inline uint32_t dtb_ld32(const void *p)
+{
+	const uint8_t *bp = (const uint8_t *)p;
+
+	return ((uint32_t)bp[0] << 24)
+		| ((uint32_t)bp[1] << 16)
+		| ((uint32_t)bp[2] << 8)
+		| bp[3];
+}
+
+static inline uint64_t dtb_ld64(const void *p)
+{
+	const uint8_t *bp = (const uint8_t *)p;
+
+	return ((uint64_t)bp[0] << 56)
+		| ((uint64_t)bp[1] << 48)
+		| ((uint64_t)bp[2] << 40)
+		| ((uint64_t)bp[3] << 32)
+		| ((uint64_t)bp[4] << 24)
+		| ((uint64_t)bp[5] << 16)
+		| ((uint64_t)bp[6] << 8)
+		| bp[7];
+}
 
 #define streq(a, b)	(strcmp((a), (b)) == 0)
 #define strstarts(s, prefix)	(strncmp((s), (prefix), strlen(prefix)) == 0)
 #define strprefixeq(a, n, b)	(strlen(b) == (n) && (memcmp(a, b, n) == 0))
+static inline bool strends(const char *str, const char *suffix)
+{
+	unsigned int len, suffix_len;
+
+	len = strlen(str);
+	suffix_len = strlen(suffix);
+	if (len < suffix_len)
+		return false;
+	return streq(str + len - suffix_len, suffix);
+}
 
 #define ALIGN(x, a)	(((x) + (a) - 1) & ~((a) - 1))
 
@@ -70,17 +116,23 @@ enum markertype {
 	TYPE_UINT64,
 	TYPE_STRING,
 };
+
+static inline bool is_type_marker(enum markertype type)
+{
+	return type >= TYPE_UINT8;
+}
+
 extern const char *markername(enum markertype markertype);
 
 struct  marker {
 	enum markertype type;
-	int offset;
+	unsigned int offset;
 	char *ref;
 	struct marker *next;
 };
 
 struct data {
-	int len;
+	unsigned int len;
 	char *val;
 	struct marker *markers;
 };
@@ -94,11 +146,26 @@ struct data {
 	for_each_marker(m) \
 		if ((m)->type == (t))
 
-size_t type_marker_length(struct marker *m);
+static inline struct marker *next_type_marker(struct marker *m)
+{
+	for_each_marker(m)
+		if (is_type_marker(m->type))
+			break;
+	return m;
+}
+
+static inline size_t type_marker_length(struct marker *m)
+{
+	struct marker *next = next_type_marker(m->next);
+
+	if (next)
+		return next->offset - m->offset;
+	return 0;
+}
 
 void data_free(struct data d);
 
-struct data data_grow_for(struct data d, int xlen);
+struct data data_grow_for(struct data d, unsigned int xlen);
 
 struct data data_copy_mem(const char *mem, int len);
 struct data data_copy_escape_string(const char *s, int len);
@@ -222,7 +289,7 @@ void append_to_property(struct node *node,
 const char *get_unitname(struct node *node);
 struct property *get_property(struct node *node, const char *propname);
 cell_t propval_cell(struct property *prop);
-cell_t propval_cell_n(struct property *prop, int n);
+cell_t propval_cell_n(struct property *prop, unsigned int n);
 struct property *get_property_by_label(struct node *tree, const char *label,
 				       struct node **node);
 struct marker *get_marker_label(struct node *tree, const char *label,
diff --git a/scripts/dtc/fdtget.c b/scripts/dtc/fdtget.c
index 777582e2d45f..dd709854becc 100644
--- a/scripts/dtc/fdtget.c
+++ b/scripts/dtc/fdtget.c
@@ -62,8 +62,14 @@ static int show_cell_list(struct display_info *disp, const char *data, int len,
 	for (i = 0; i < len; i += size, p += size) {
 		if (i)
 			printf(" ");
-		value = size == 4 ? fdt32_ld((const fdt32_t *)p) :
-			size == 2 ? (*p << 8) | p[1] : *p;
+		switch (size) {
+		case 4: value = fdt32_ld((const fdt32_t *)p); break;
+		case 2: value = fdt16_ld((const fdt16_t *)p); break;
+		case 1:
+		default:
+			value = *p;
+			break;
+		}
 		printf(fmt, value);
 	}
 
@@ -91,6 +97,11 @@ static int show_data(struct display_info *disp, const char *data, int len)
 	if (len == 0)
 		return 0;
 
+	if (disp->type == 'r') {
+		fwrite(data, 1, len, stdout);
+		return 0;
+	}
+
 	is_string = (disp->type) == 's' ||
 		(!disp->type && util_is_printable_string(data, len));
 	if (is_string) {
diff --git a/scripts/dtc/flattree.c b/scripts/dtc/flattree.c
index bd6977eedcb8..95e43d32c3e6 100644
--- a/scripts/dtc/flattree.c
+++ b/scripts/dtc/flattree.c
@@ -124,7 +124,8 @@ static void asm_emit_cell(void *e, cell_t val)
 {
 	FILE *f = e;
 
-	fprintf(f, "\t.byte 0x%02x; .byte 0x%02x; .byte 0x%02x; .byte 0x%02x\n",
+	fprintf(f, "\t.byte\t0x%02x\n" "\t.byte\t0x%02x\n"
+		"\t.byte\t0x%02x\n" "\t.byte\t0x%02x\n",
 		(val >> 24) & 0xff, (val >> 16) & 0xff,
 		(val >> 8) & 0xff, val & 0xff);
 }
@@ -134,9 +135,9 @@ static void asm_emit_string(void *e, const char *str, int len)
 	FILE *f = e;
 
 	if (len != 0)
-		fprintf(f, "\t.string\t\"%.*s\"\n", len, str);
+		fprintf(f, "\t.asciz\t\"%.*s\"\n", len, str);
 	else
-		fprintf(f, "\t.string\t\"%s\"\n", str);
+		fprintf(f, "\t.asciz\t\"%s\"\n", str);
 }
 
 static void asm_emit_align(void *e, int a)
@@ -149,14 +150,14 @@ static void asm_emit_align(void *e, int a)
 static void asm_emit_data(void *e, struct data d)
 {
 	FILE *f = e;
-	int off = 0;
+	unsigned int off = 0;
 	struct marker *m = d.markers;
 
 	for_each_marker_of_type(m, LABEL)
 		emit_offset_label(f, m->ref, m->offset);
 
 	while ((d.len - off) >= sizeof(uint32_t)) {
-		asm_emit_cell(e, fdt32_to_cpu(*((fdt32_t *)(d.val+off))));
+		asm_emit_cell(e, dtb_ld32(d.val + off));
 		off += sizeof(uint32_t);
 	}
 
@@ -219,7 +220,7 @@ static struct emitter asm_emitter = {
 
 static int stringtable_insert(struct data *d, const char *str)
 {
-	int i;
+	unsigned int i;
 
 	/* FIXME: do this more efficiently? */
 
@@ -295,7 +296,7 @@ static struct data flatten_reserve_list(struct reserve_info *reservelist,
 {
 	struct reserve_info *re;
 	struct data d = empty_data;
-	int    j;
+	unsigned int j;
 
 	for (re = reservelist; re; re = re->next) {
 		d = data_append_re(d, re->address, re->size);
@@ -345,7 +346,7 @@ static void make_fdt_header(struct fdt_header *fdt,
 void dt_to_blob(FILE *f, struct dt_info *dti, int version)
 {
 	struct version_info *vi = NULL;
-	int i;
+	unsigned int i;
 	struct data blob       = empty_data;
 	struct data reservebuf = empty_data;
 	struct data dtbuf      = empty_data;
@@ -438,7 +439,7 @@ static void dump_stringtable_asm(FILE *f, struct data strbuf)
 
 	while (p < (strbuf.val + strbuf.len)) {
 		len = strlen(p);
-		fprintf(f, "\t.string \"%s\"\n", p);
+		fprintf(f, "\t.asciz \"%s\"\n", p);
 		p += len+1;
 	}
 }
@@ -446,7 +447,7 @@ static void dump_stringtable_asm(FILE *f, struct data strbuf)
 void dt_to_asm(FILE *f, struct dt_info *dti, int version)
 {
 	struct version_info *vi = NULL;
-	int i;
+	unsigned int i;
 	struct data strbuf = empty_data;
 	struct reserve_info *re;
 	const char *symprefix = "dt";
diff --git a/scripts/dtc/fstree.c b/scripts/dtc/fstree.c
index 9871689b4afb..5e59594ab301 100644
--- a/scripts/dtc/fstree.c
+++ b/scripts/dtc/fstree.c
@@ -30,7 +30,7 @@ static struct node *read_fstree(const char *dirname)
 
 		tmpname = join_path(dirname, de->d_name);
 
-		if (lstat(tmpname, &st) < 0)
+		if (stat(tmpname, &st) < 0)
 			die("stat(%s): %s\n", tmpname, strerror(errno));
 
 		if (S_ISREG(st.st_mode)) {
diff --git a/scripts/dtc/libfdt/Makefile.libfdt b/scripts/dtc/libfdt/Makefile.libfdt
index e54639738c8e..b6d8fc02dd0b 100644
--- a/scripts/dtc/libfdt/Makefile.libfdt
+++ b/scripts/dtc/libfdt/Makefile.libfdt
@@ -8,7 +8,7 @@ LIBFDT_soname = libfdt.$(SHAREDLIB_EXT).1
 LIBFDT_INCLUDES = fdt.h libfdt.h libfdt_env.h
 LIBFDT_VERSION = version.lds
 LIBFDT_SRCS = fdt.c fdt_ro.c fdt_wip.c fdt_sw.c fdt_rw.c fdt_strerror.c fdt_empty_tree.c \
-	fdt_addresses.c fdt_overlay.c
+	fdt_addresses.c fdt_overlay.c fdt_check.c
 LIBFDT_OBJS = $(LIBFDT_SRCS:%.c=%.o)
 LIBFDT_LIB = libfdt-$(DTC_VERSION).$(SHAREDLIB_EXT)
 
diff --git a/scripts/dtc/libfdt/fdt.c b/scripts/dtc/libfdt/fdt.c
index d6ce7c052dc8..20c6415b9ced 100644
--- a/scripts/dtc/libfdt/fdt.c
+++ b/scripts/dtc/libfdt/fdt.c
@@ -19,15 +19,25 @@ int32_t fdt_ro_probe_(const void *fdt)
 {
 	uint32_t totalsize = fdt_totalsize(fdt);
 
+	if (can_assume(VALID_DTB))
+		return totalsize;
+
+	/* The device tree must be at an 8-byte aligned address */
+	if ((uintptr_t)fdt & 7)
+		return -FDT_ERR_ALIGNMENT;
+
 	if (fdt_magic(fdt) == FDT_MAGIC) {
 		/* Complete tree */
-		if (fdt_version(fdt) < FDT_FIRST_SUPPORTED_VERSION)
-			return -FDT_ERR_BADVERSION;
-		if (fdt_last_comp_version(fdt) > FDT_LAST_SUPPORTED_VERSION)
-			return -FDT_ERR_BADVERSION;
+		if (!can_assume(LATEST)) {
+			if (fdt_version(fdt) < FDT_FIRST_SUPPORTED_VERSION)
+				return -FDT_ERR_BADVERSION;
+			if (fdt_last_comp_version(fdt) >
+					FDT_LAST_SUPPORTED_VERSION)
+				return -FDT_ERR_BADVERSION;
+		}
 	} else if (fdt_magic(fdt) == FDT_SW_MAGIC) {
 		/* Unfinished sequential-write blob */
-		if (fdt_size_dt_struct(fdt) == 0)
+		if (!can_assume(VALID_INPUT) && fdt_size_dt_struct(fdt) == 0)
 			return -FDT_ERR_BADSTATE;
 	} else {
 		return -FDT_ERR_BADMAGIC;
@@ -70,58 +80,79 @@ size_t fdt_header_size_(uint32_t version)
 		return FDT_V17_SIZE;
 }
 
+size_t fdt_header_size(const void *fdt)
+{
+	return can_assume(LATEST) ? FDT_V17_SIZE :
+		fdt_header_size_(fdt_version(fdt));
+}
+
 int fdt_check_header(const void *fdt)
 {
 	size_t hdrsize;
 
+	/* The device tree must be at an 8-byte aligned address */
+	if ((uintptr_t)fdt & 7)
+		return -FDT_ERR_ALIGNMENT;
+
 	if (fdt_magic(fdt) != FDT_MAGIC)
 		return -FDT_ERR_BADMAGIC;
+	if (!can_assume(LATEST)) {
+		if ((fdt_version(fdt) < FDT_FIRST_SUPPORTED_VERSION)
+		    || (fdt_last_comp_version(fdt) >
+			FDT_LAST_SUPPORTED_VERSION))
+			return -FDT_ERR_BADVERSION;
+		if (fdt_version(fdt) < fdt_last_comp_version(fdt))
+			return -FDT_ERR_BADVERSION;
+	}
 	hdrsize = fdt_header_size(fdt);
-	if ((fdt_version(fdt) < FDT_FIRST_SUPPORTED_VERSION)
-	    || (fdt_last_comp_version(fdt) > FDT_LAST_SUPPORTED_VERSION))
-		return -FDT_ERR_BADVERSION;
-	if (fdt_version(fdt) < fdt_last_comp_version(fdt))
-		return -FDT_ERR_BADVERSION;
-
-	if ((fdt_totalsize(fdt) < hdrsize)
-	    || (fdt_totalsize(fdt) > INT_MAX))
-		return -FDT_ERR_TRUNCATED;
-
-	/* Bounds check memrsv block */
-	if (!check_off_(hdrsize, fdt_totalsize(fdt), fdt_off_mem_rsvmap(fdt)))
-		return -FDT_ERR_TRUNCATED;
+	if (!can_assume(VALID_DTB)) {
+		if ((fdt_totalsize(fdt) < hdrsize)
+		    || (fdt_totalsize(fdt) > INT_MAX))
+			return -FDT_ERR_TRUNCATED;
 
-	/* Bounds check structure block */
-	if (fdt_version(fdt) < 17) {
+		/* Bounds check memrsv block */
 		if (!check_off_(hdrsize, fdt_totalsize(fdt),
-				fdt_off_dt_struct(fdt)))
+				fdt_off_mem_rsvmap(fdt)))
 			return -FDT_ERR_TRUNCATED;
-	} else {
+
+		/* Bounds check structure block */
+		if (!can_assume(LATEST) && fdt_version(fdt) < 17) {
+			if (!check_off_(hdrsize, fdt_totalsize(fdt),
+					fdt_off_dt_struct(fdt)))
+				return -FDT_ERR_TRUNCATED;
+		} else {
+			if (!check_block_(hdrsize, fdt_totalsize(fdt),
+					  fdt_off_dt_struct(fdt),
+					  fdt_size_dt_struct(fdt)))
+				return -FDT_ERR_TRUNCATED;
+		}
+
+		/* Bounds check strings block */
 		if (!check_block_(hdrsize, fdt_totalsize(fdt),
-				  fdt_off_dt_struct(fdt),
-				  fdt_size_dt_struct(fdt)))
+				  fdt_off_dt_strings(fdt),
+				  fdt_size_dt_strings(fdt)))
 			return -FDT_ERR_TRUNCATED;
 	}
 
-	/* Bounds check strings block */
-	if (!check_block_(hdrsize, fdt_totalsize(fdt),
-			  fdt_off_dt_strings(fdt), fdt_size_dt_strings(fdt)))
-		return -FDT_ERR_TRUNCATED;
-
 	return 0;
 }
 
 const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int len)
 {
-	unsigned absoffset = offset + fdt_off_dt_struct(fdt);
+	unsigned int uoffset = offset;
+	unsigned int absoffset = offset + fdt_off_dt_struct(fdt);
 
-	if ((absoffset < offset)
-	    || ((absoffset + len) < absoffset)
-	    || (absoffset + len) > fdt_totalsize(fdt))
+	if (offset < 0)
 		return NULL;
 
-	if (fdt_version(fdt) >= 0x11)
-		if (((offset + len) < offset)
+	if (!can_assume(VALID_INPUT))
+		if ((absoffset < uoffset)
+		    || ((absoffset + len) < absoffset)
+		    || (absoffset + len) > fdt_totalsize(fdt))
+			return NULL;
+
+	if (can_assume(LATEST) || fdt_version(fdt) >= 0x11)
+		if (((uoffset + len) < uoffset)
 		    || ((offset + len) > fdt_size_dt_struct(fdt)))
 			return NULL;
 
@@ -131,13 +162,13 @@ const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int len)
 uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 {
 	const fdt32_t *tagp, *lenp;
-	uint32_t tag;
+	uint32_t tag, len, sum;
 	int offset = startoffset;
 	const char *p;
 
 	*nextoffset = -FDT_ERR_TRUNCATED;
 	tagp = fdt_offset_ptr(fdt, offset, FDT_TAGSIZE);
-	if (!tagp)
+	if (!can_assume(VALID_DTB) && !tagp)
 		return FDT_END; /* premature end */
 	tag = fdt32_to_cpu(*tagp);
 	offset += FDT_TAGSIZE;
@@ -149,19 +180,27 @@ uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 		do {
 			p = fdt_offset_ptr(fdt, offset++, 1);
 		} while (p && (*p != '\0'));
-		if (!p)
+		if (!can_assume(VALID_DTB) && !p)
 			return FDT_END; /* premature end */
 		break;
 
 	case FDT_PROP:
 		lenp = fdt_offset_ptr(fdt, offset, sizeof(*lenp));
-		if (!lenp)
+		if (!can_assume(VALID_DTB) && !lenp)
+			return FDT_END; /* premature end */
+
+		len = fdt32_to_cpu(*lenp);
+		sum = len + offset;
+		if (!can_assume(VALID_DTB) &&
+		    (INT_MAX <= sum || sum < (uint32_t) offset))
 			return FDT_END; /* premature end */
+
 		/* skip-name offset, length and value */
-		offset += sizeof(struct fdt_property) - FDT_TAGSIZE
-			+ fdt32_to_cpu(*lenp);
-		if (fdt_version(fdt) < 0x10 && fdt32_to_cpu(*lenp) >= 8 &&
-		    ((offset - fdt32_to_cpu(*lenp)) % 8) != 0)
+		offset += sizeof(struct fdt_property) - FDT_TAGSIZE + len;
+
+		if (!can_assume(LATEST) &&
+		    fdt_version(fdt) < 0x10 && len >= 8 &&
+		    ((offset - len) % 8) != 0)
 			offset += 4;
 		break;
 
@@ -183,8 +222,11 @@ uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 
 int fdt_check_node_offset_(const void *fdt, int offset)
 {
-	if ((offset < 0) || (offset % FDT_TAGSIZE)
-	    || (fdt_next_tag(fdt, offset, &offset) != FDT_BEGIN_NODE))
+	if (!can_assume(VALID_INPUT)
+	    && ((offset < 0) || (offset % FDT_TAGSIZE)))
+		return -FDT_ERR_BADOFFSET;
+
+	if (fdt_next_tag(fdt, offset, &offset) != FDT_BEGIN_NODE)
 		return -FDT_ERR_BADOFFSET;
 
 	return offset;
@@ -192,8 +234,11 @@ int fdt_check_node_offset_(const void *fdt, int offset)
 
 int fdt_check_prop_offset_(const void *fdt, int offset)
 {
-	if ((offset < 0) || (offset % FDT_TAGSIZE)
-	    || (fdt_next_tag(fdt, offset, &offset) != FDT_PROP))
+	if (!can_assume(VALID_INPUT)
+	    && ((offset < 0) || (offset % FDT_TAGSIZE)))
+		return -FDT_ERR_BADOFFSET;
+
+	if (fdt_next_tag(fdt, offset, &offset) != FDT_PROP)
 		return -FDT_ERR_BADOFFSET;
 
 	return offset;
@@ -281,9 +326,12 @@ const char *fdt_find_string_(const char *strtab, int tabsize, const char *s)
 
 int fdt_move(const void *fdt, void *buf, int bufsize)
 {
+	if (!can_assume(VALID_INPUT) && bufsize < 0)
+		return -FDT_ERR_NOSPACE;
+
 	FDT_RO_PROBE(fdt);
 
-	if (fdt_totalsize(fdt) > bufsize)
+	if (fdt_totalsize(fdt) > (unsigned int)bufsize)
 		return -FDT_ERR_NOSPACE;
 
 	memmove(buf, fdt, fdt_totalsize(fdt));
diff --git a/scripts/dtc/libfdt/fdt.h b/scripts/dtc/libfdt/fdt.h
index f2e68807f277..0c91aa7f67b5 100644
--- a/scripts/dtc/libfdt/fdt.h
+++ b/scripts/dtc/libfdt/fdt.h
@@ -35,14 +35,14 @@ struct fdt_reserve_entry {
 
 struct fdt_node_header {
 	fdt32_t tag;
-	char name[0];
+	char name[];
 };
 
 struct fdt_property {
 	fdt32_t tag;
 	fdt32_t len;
 	fdt32_t nameoff;
-	char data[0];
+	char data[];
 };
 
 #endif /* !__ASSEMBLY */
diff --git a/scripts/dtc/libfdt/fdt_addresses.c b/scripts/dtc/libfdt/fdt_addresses.c
index 9a82cd0ba2f9..c40ba094f1f8 100644
--- a/scripts/dtc/libfdt/fdt_addresses.c
+++ b/scripts/dtc/libfdt/fdt_addresses.c
@@ -73,7 +73,7 @@ int fdt_appendprop_addrrange(void *fdt, int parent, int nodeoffset,
 	/* check validity of address */
 	prop = data;
 	if (addr_cells == 1) {
-		if ((addr > UINT32_MAX) || ((UINT32_MAX + 1 - addr) < size))
+		if ((addr > UINT32_MAX) || (((uint64_t) UINT32_MAX + 1 - addr) < size))
 			return -FDT_ERR_BADVALUE;
 
 		fdt32_st(prop, (uint32_t)addr);
diff --git a/scripts/dtc/libfdt/fdt_overlay.c b/scripts/dtc/libfdt/fdt_overlay.c
index be7187336615..5c0c3981b89d 100644
--- a/scripts/dtc/libfdt/fdt_overlay.c
+++ b/scripts/dtc/libfdt/fdt_overlay.c
@@ -40,37 +40,22 @@ static uint32_t overlay_get_target_phandle(const void *fdto, int fragment)
 	return fdt32_to_cpu(*val);
 }
 
-/**
- * overlay_get_target - retrieves the offset of a fragment's target
- * @fdt: Base device tree blob
- * @fdto: Device tree overlay blob
- * @fragment: node offset of the fragment in the overlay
- * @pathp: pointer which receives the path of the target (or NULL)
- *
- * overlay_get_target() retrieves the target offset in the base
- * device tree of a fragment, no matter how the actual targeting is
- * done (through a phandle or a path)
- *
- * returns:
- *      the targeted node offset in the base device tree
- *      Negative error code on error
- */
-static int overlay_get_target(const void *fdt, const void *fdto,
-			      int fragment, char const **pathp)
+int fdt_overlay_target_offset(const void *fdt, const void *fdto,
+			      int fragment_offset, char const **pathp)
 {
 	uint32_t phandle;
 	const char *path = NULL;
 	int path_len = 0, ret;
 
 	/* Try first to do a phandle based lookup */
-	phandle = overlay_get_target_phandle(fdto, fragment);
+	phandle = overlay_get_target_phandle(fdto, fragment_offset);
 	if (phandle == (uint32_t)-1)
 		return -FDT_ERR_BADPHANDLE;
 
 	/* no phandle, try path */
 	if (!phandle) {
 		/* And then a path based lookup */
-		path = fdt_getprop(fdto, fragment, "target-path", &path_len);
+		path = fdt_getprop(fdto, fragment_offset, "target-path", &path_len);
 		if (path)
 			ret = fdt_path_offset(fdt, path);
 		else
@@ -241,6 +226,7 @@ static int overlay_update_local_node_references(void *fdto,
 
 		if (fixup_len % sizeof(uint32_t))
 			return -FDT_ERR_BADOVERLAY;
+		fixup_len /= sizeof(uint32_t);
 
 		tree_val = fdt_getprop(fdto, tree_node, name, &tree_len);
 		if (!tree_val) {
@@ -250,7 +236,7 @@ static int overlay_update_local_node_references(void *fdto,
 			return tree_len;
 		}
 
-		for (i = 0; i < (fixup_len / sizeof(uint32_t)); i++) {
+		for (i = 0; i < fixup_len; i++) {
 			fdt32_t adj_val;
 			uint32_t poffset;
 
@@ -635,7 +621,7 @@ static int overlay_merge(void *fdt, void *fdto)
 		if (overlay < 0)
 			return overlay;
 
-		target = overlay_get_target(fdt, fdto, fragment, NULL);
+		target = fdt_overlay_target_offset(fdt, fdto, fragment, NULL);
 		if (target < 0)
 			return target;
 
@@ -752,7 +738,7 @@ static int overlay_symbol_update(void *fdt, void *fdto)
 		if ((e - s) > len && (memcmp(s, "/__overlay__/", len) == 0)) {
 			/* /<fragment-name>/__overlay__/<relative-subnode-path> */
 			rel_path = s + len;
-			rel_path_len = e - rel_path;
+			rel_path_len = e - rel_path - 1;
 		} else if ((e - s) == len
 			   && (memcmp(s, "/__overlay__", len - 1) == 0)) {
 			/* /<fragment-name>/__overlay__ */
@@ -778,7 +764,7 @@ static int overlay_symbol_update(void *fdt, void *fdto)
 			return -FDT_ERR_BADOVERLAY;
 
 		/* get the target of the fragment */
-		ret = overlay_get_target(fdt, fdto, fragment, &target_path);
+		ret = fdt_overlay_target_offset(fdt, fdto, fragment, &target_path);
 		if (ret < 0)
 			return ret;
 		target = ret;
@@ -800,7 +786,7 @@ static int overlay_symbol_update(void *fdt, void *fdto)
 
 		if (!target_path) {
 			/* again in case setprop_placeholder changed it */
-			ret = overlay_get_target(fdt, fdto, fragment, &target_path);
+			ret = fdt_overlay_target_offset(fdt, fdto, fragment, &target_path);
 			if (ret < 0)
 				return ret;
 			target = ret;
diff --git a/scripts/dtc/libfdt/fdt_ro.c b/scripts/dtc/libfdt/fdt_ro.c
index a5c2797cde65..9f6c551a22c2 100644
--- a/scripts/dtc/libfdt/fdt_ro.c
+++ b/scripts/dtc/libfdt/fdt_ro.c
@@ -33,36 +33,47 @@ static int fdt_nodename_eq_(const void *fdt, int offset,
 
 const char *fdt_get_string(const void *fdt, int stroffset, int *lenp)
 {
-	int32_t totalsize = fdt_ro_probe_(fdt);
-	uint32_t absoffset = stroffset + fdt_off_dt_strings(fdt);
+	int32_t totalsize;
+	uint32_t absoffset;
 	size_t len;
 	int err;
 	const char *s, *n;
 
+	if (can_assume(VALID_INPUT)) {
+		s = (const char *)fdt + fdt_off_dt_strings(fdt) + stroffset;
+
+		if (lenp)
+			*lenp = strlen(s);
+		return s;
+	}
+	totalsize = fdt_ro_probe_(fdt);
 	err = totalsize;
 	if (totalsize < 0)
 		goto fail;
 
 	err = -FDT_ERR_BADOFFSET;
-	if (absoffset >= totalsize)
+	absoffset = stroffset + fdt_off_dt_strings(fdt);
+	if (absoffset >= (unsigned)totalsize)
 		goto fail;
 	len = totalsize - absoffset;
 
 	if (fdt_magic(fdt) == FDT_MAGIC) {
 		if (stroffset < 0)
 			goto fail;
-		if (fdt_version(fdt) >= 17) {
-			if (stroffset >= fdt_size_dt_strings(fdt))
+		if (can_assume(LATEST) || fdt_version(fdt) >= 17) {
+			if ((unsigned)stroffset >= fdt_size_dt_strings(fdt))
 				goto fail;
 			if ((fdt_size_dt_strings(fdt) - stroffset) < len)
 				len = fdt_size_dt_strings(fdt) - stroffset;
 		}
 	} else if (fdt_magic(fdt) == FDT_SW_MAGIC) {
-		if ((stroffset >= 0)
-		    || (stroffset < -fdt_size_dt_strings(fdt)))
+		unsigned int sw_stroffset = -stroffset;
+
+		if ((stroffset >= 0) ||
+		    (sw_stroffset > fdt_size_dt_strings(fdt)))
 			goto fail;
-		if ((-stroffset) < len)
-			len = -stroffset;
+		if (sw_stroffset < len)
+			len = sw_stroffset;
 	} else {
 		err = -FDT_ERR_INTERNAL;
 		goto fail;
@@ -148,13 +159,16 @@ int fdt_generate_phandle(const void *fdt, uint32_t *phandle)
 
 static const struct fdt_reserve_entry *fdt_mem_rsv(const void *fdt, int n)
 {
-	int offset = n * sizeof(struct fdt_reserve_entry);
-	int absoffset = fdt_off_mem_rsvmap(fdt) + offset;
+	unsigned int offset = n * sizeof(struct fdt_reserve_entry);
+	unsigned int absoffset = fdt_off_mem_rsvmap(fdt) + offset;
 
-	if (absoffset < fdt_off_mem_rsvmap(fdt))
-		return NULL;
-	if (absoffset > fdt_totalsize(fdt) - sizeof(struct fdt_reserve_entry))
-		return NULL;
+	if (!can_assume(VALID_INPUT)) {
+		if (absoffset < fdt_off_mem_rsvmap(fdt))
+			return NULL;
+		if (absoffset > fdt_totalsize(fdt) -
+		    sizeof(struct fdt_reserve_entry))
+			return NULL;
+	}
 	return fdt_mem_rsv_(fdt, n);
 }
 
@@ -164,11 +178,11 @@ int fdt_get_mem_rsv(const void *fdt, int n, uint64_t *address, uint64_t *size)
 
 	FDT_RO_PROBE(fdt);
 	re = fdt_mem_rsv(fdt, n);
-	if (!re)
+	if (!can_assume(VALID_INPUT) && !re)
 		return -FDT_ERR_BADOFFSET;
 
-	*address = fdt64_ld(&re->address);
-	*size = fdt64_ld(&re->size);
+	*address = fdt64_ld_(&re->address);
+	*size = fdt64_ld_(&re->size);
 	return 0;
 }
 
@@ -178,7 +192,7 @@ int fdt_num_mem_rsv(const void *fdt)
 	const struct fdt_reserve_entry *re;
 
 	for (i = 0; (re = fdt_mem_rsv(fdt, i)) != NULL; i++) {
-		if (fdt64_ld(&re->size) == 0)
+		if (fdt64_ld_(&re->size) == 0)
 			return i;
 	}
 	return -FDT_ERR_TRUNCATED;
@@ -295,7 +309,7 @@ const char *fdt_get_name(const void *fdt, int nodeoffset, int *len)
 
 	nameptr = nh->name;
 
-	if (fdt_version(fdt) < 0x10) {
+	if (!can_assume(LATEST) && fdt_version(fdt) < 0x10) {
 		/*
 		 * For old FDT versions, match the naming conventions of V16:
 		 * give only the leaf name (after all /). The actual tree
@@ -346,7 +360,8 @@ static const struct fdt_property *fdt_get_property_by_offset_(const void *fdt,
 	int err;
 	const struct fdt_property *prop;
 
-	if ((err = fdt_check_prop_offset_(fdt, offset)) < 0) {
+	if (!can_assume(VALID_INPUT) &&
+	    (err = fdt_check_prop_offset_(fdt, offset)) < 0) {
 		if (lenp)
 			*lenp = err;
 		return NULL;
@@ -355,7 +370,7 @@ static const struct fdt_property *fdt_get_property_by_offset_(const void *fdt,
 	prop = fdt_offset_ptr_(fdt, offset);
 
 	if (lenp)
-		*lenp = fdt32_ld(&prop->len);
+		*lenp = fdt32_ld_(&prop->len);
 
 	return prop;
 }
@@ -367,7 +382,7 @@ const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
 	/* Prior to version 16, properties may need realignment
 	 * and this API does not work. fdt_getprop_*() will, however. */
 
-	if (fdt_version(fdt) < 0x10) {
+	if (!can_assume(LATEST) && fdt_version(fdt) < 0x10) {
 		if (lenp)
 			*lenp = -FDT_ERR_BADVERSION;
 		return NULL;
@@ -388,11 +403,12 @@ static const struct fdt_property *fdt_get_property_namelen_(const void *fdt,
 	     (offset = fdt_next_property_offset(fdt, offset))) {
 		const struct fdt_property *prop;
 
-		if (!(prop = fdt_get_property_by_offset_(fdt, offset, lenp))) {
+		prop = fdt_get_property_by_offset_(fdt, offset, lenp);
+		if (!can_assume(LIBFDT_FLAWLESS) && !prop) {
 			offset = -FDT_ERR_INTERNAL;
 			break;
 		}
-		if (fdt_string_eq_(fdt, fdt32_ld(&prop->nameoff),
+		if (fdt_string_eq_(fdt, fdt32_ld_(&prop->nameoff),
 				   name, namelen)) {
 			if (poffset)
 				*poffset = offset;
@@ -413,7 +429,7 @@ const struct fdt_property *fdt_get_property_namelen(const void *fdt,
 {
 	/* Prior to version 16, properties may need realignment
 	 * and this API does not work. fdt_getprop_*() will, however. */
-	if (fdt_version(fdt) < 0x10) {
+	if (!can_assume(LATEST) && fdt_version(fdt) < 0x10) {
 		if (lenp)
 			*lenp = -FDT_ERR_BADVERSION;
 		return NULL;
@@ -444,8 +460,8 @@ const void *fdt_getprop_namelen(const void *fdt, int nodeoffset,
 		return NULL;
 
 	/* Handle realignment */
-	if (fdt_version(fdt) < 0x10 && (poffset + sizeof(*prop)) % 8 &&
-	    fdt32_ld(&prop->len) >= 8)
+	if (!can_assume(LATEST) && fdt_version(fdt) < 0x10 &&
+	    (poffset + sizeof(*prop)) % 8 && fdt32_ld_(&prop->len) >= 8)
 		return prop->data + 4;
 	return prop->data;
 }
@@ -461,19 +477,24 @@ const void *fdt_getprop_by_offset(const void *fdt, int offset,
 	if (namep) {
 		const char *name;
 		int namelen;
-		name = fdt_get_string(fdt, fdt32_ld(&prop->nameoff),
-				      &namelen);
-		if (!name) {
-			if (lenp)
-				*lenp = namelen;
-			return NULL;
+
+		if (!can_assume(VALID_INPUT)) {
+			name = fdt_get_string(fdt, fdt32_ld_(&prop->nameoff),
+					      &namelen);
+			*namep = name;
+			if (!name) {
+				if (lenp)
+					*lenp = namelen;
+				return NULL;
+			}
+		} else {
+			*namep = fdt_string(fdt, fdt32_ld_(&prop->nameoff));
 		}
-		*namep = name;
 	}
 
 	/* Handle realignment */
-	if (fdt_version(fdt) < 0x10 && (offset + sizeof(*prop)) % 8 &&
-	    fdt32_ld(&prop->len) >= 8)
+	if (!can_assume(LATEST) && fdt_version(fdt) < 0x10 &&
+	    (offset + sizeof(*prop)) % 8 && fdt32_ld_(&prop->len) >= 8)
 		return prop->data + 4;
 	return prop->data;
 }
@@ -498,7 +519,7 @@ uint32_t fdt_get_phandle(const void *fdt, int nodeoffset)
 			return 0;
 	}
 
-	return fdt32_ld(php);
+	return fdt32_ld_(php);
 }
 
 const char *fdt_get_alias_namelen(const void *fdt,
@@ -598,10 +619,12 @@ int fdt_supernode_atdepth_offset(const void *fdt, int nodeoffset,
 		}
 	}
 
-	if ((offset == -FDT_ERR_NOTFOUND) || (offset >= 0))
-		return -FDT_ERR_BADOFFSET;
-	else if (offset == -FDT_ERR_BADOFFSET)
-		return -FDT_ERR_BADSTRUCTURE;
+	if (!can_assume(VALID_INPUT)) {
+		if ((offset == -FDT_ERR_NOTFOUND) || (offset >= 0))
+			return -FDT_ERR_BADOFFSET;
+		else if (offset == -FDT_ERR_BADOFFSET)
+			return -FDT_ERR_BADSTRUCTURE;
+	}
 
 	return offset; /* error from fdt_next_node() */
 }
@@ -613,7 +636,8 @@ int fdt_node_depth(const void *fdt, int nodeoffset)
 
 	err = fdt_supernode_atdepth_offset(fdt, nodeoffset, 0, &nodedepth);
 	if (err)
-		return (err < 0) ? err : -FDT_ERR_INTERNAL;
+		return (can_assume(LIBFDT_FLAWLESS) || err < 0) ? err :
+			-FDT_ERR_INTERNAL;
 	return nodedepth;
 }
 
@@ -658,7 +682,7 @@ int fdt_node_offset_by_phandle(const void *fdt, uint32_t phandle)
 {
 	int offset;
 
-	if ((phandle == 0) || (phandle == -1))
+	if ((phandle == 0) || (phandle == ~0U))
 		return -FDT_ERR_BADPHANDLE;
 
 	FDT_RO_PROBE(fdt);
@@ -833,66 +857,3 @@ int fdt_node_offset_by_compatible(const void *fdt, int startoffset,
 
 	return offset; /* error from fdt_next_node() */
 }
-
-int fdt_check_full(const void *fdt, size_t bufsize)
-{
-	int err;
-	int num_memrsv;
-	int offset, nextoffset = 0;
-	uint32_t tag;
-	unsigned depth = 0;
-	const void *prop;
-	const char *propname;
-
-	if (bufsize < FDT_V1_SIZE)
-		return -FDT_ERR_TRUNCATED;
-	err = fdt_check_header(fdt);
-	if (err != 0)
-		return err;
-	if (bufsize < fdt_totalsize(fdt))
-		return -FDT_ERR_TRUNCATED;
-
-	num_memrsv = fdt_num_mem_rsv(fdt);
-	if (num_memrsv < 0)
-		return num_memrsv;
-
-	while (1) {
-		offset = nextoffset;
-		tag = fdt_next_tag(fdt, offset, &nextoffset);
-
-		if (nextoffset < 0)
-			return nextoffset;
-
-		switch (tag) {
-		case FDT_NOP:
-			break;
-
-		case FDT_END:
-			if (depth != 0)
-				return -FDT_ERR_BADSTRUCTURE;
-			return 0;
-
-		case FDT_BEGIN_NODE:
-			depth++;
-			if (depth > INT_MAX)
-				return -FDT_ERR_BADSTRUCTURE;
-			break;
-
-		case FDT_END_NODE:
-			if (depth == 0)
-				return -FDT_ERR_BADSTRUCTURE;
-			depth--;
-			break;
-
-		case FDT_PROP:
-			prop = fdt_getprop_by_offset(fdt, offset, &propname,
-						     &err);
-			if (!prop)
-				return err;
-			break;
-
-		default:
-			return -FDT_ERR_INTERNAL;
-		}
-	}
-}
diff --git a/scripts/dtc/libfdt/fdt_rw.c b/scripts/dtc/libfdt/fdt_rw.c
index 8795947c00dd..3621d3651d3f 100644
--- a/scripts/dtc/libfdt/fdt_rw.c
+++ b/scripts/dtc/libfdt/fdt_rw.c
@@ -24,14 +24,16 @@ static int fdt_blocks_misordered_(const void *fdt,
 
 static int fdt_rw_probe_(void *fdt)
 {
+	if (can_assume(VALID_DTB))
+		return 0;
 	FDT_RO_PROBE(fdt);
 
-	if (fdt_version(fdt) < 17)
+	if (!can_assume(LATEST) && fdt_version(fdt) < 17)
 		return -FDT_ERR_BADVERSION;
 	if (fdt_blocks_misordered_(fdt, sizeof(struct fdt_reserve_entry),
 				   fdt_size_dt_struct(fdt)))
 		return -FDT_ERR_BADLAYOUT;
-	if (fdt_version(fdt) > 17)
+	if (!can_assume(LATEST) && fdt_version(fdt) > 17)
 		fdt_set_version(fdt, 17);
 
 	return 0;
@@ -44,7 +46,7 @@ static int fdt_rw_probe_(void *fdt)
 			return err_; \
 	}
 
-static inline int fdt_data_size_(void *fdt)
+static inline unsigned int fdt_data_size_(void *fdt)
 {
 	return fdt_off_dt_strings(fdt) + fdt_size_dt_strings(fdt);
 }
@@ -52,15 +54,16 @@ static inline int fdt_data_size_(void *fdt)
 static int fdt_splice_(void *fdt, void *splicepoint, int oldlen, int newlen)
 {
 	char *p = splicepoint;
-	char *end = (char *)fdt + fdt_data_size_(fdt);
+	unsigned int dsize = fdt_data_size_(fdt);
+	size_t soff = p - (char *)fdt;
 
-	if (((p + oldlen) < p) || ((p + oldlen) > end))
+	if ((oldlen < 0) || (soff + oldlen < soff) || (soff + oldlen > dsize))
 		return -FDT_ERR_BADOFFSET;
-	if ((p < (char *)fdt) || ((end - oldlen + newlen) < (char *)fdt))
+	if ((p < (char *)fdt) || (dsize + newlen < (unsigned)oldlen))
 		return -FDT_ERR_BADOFFSET;
-	if ((end - oldlen + newlen) > ((char *)fdt + fdt_totalsize(fdt)))
+	if (dsize - oldlen + newlen > fdt_totalsize(fdt))
 		return -FDT_ERR_NOSPACE;
-	memmove(p + newlen, p + oldlen, end - p - oldlen);
+	memmove(p + newlen, p + oldlen, ((char *)fdt + dsize) - (p + oldlen));
 	return 0;
 }
 
@@ -112,6 +115,15 @@ static int fdt_splice_string_(void *fdt, int newlen)
 	return 0;
 }
 
+/**
+ * fdt_find_add_string_() - Find or allocate a string
+ *
+ * @fdt: pointer to the device tree to check/adjust
+ * @s: string to find/add
+ * @allocated: Set to 0 if the string was found, 1 if not found and so
+ *	allocated. Ignored if can_assume(NO_ROLLBACK)
+ * @return offset of string in the string table (whether found or added)
+ */
 static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
 {
 	char *strtab = (char *)fdt + fdt_off_dt_strings(fdt);
@@ -120,7 +132,8 @@ static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
 	int len = strlen(s) + 1;
 	int err;
 
-	*allocated = 0;
+	if (!can_assume(NO_ROLLBACK))
+		*allocated = 0;
 
 	p = fdt_find_string_(strtab, fdt_size_dt_strings(fdt), s);
 	if (p)
@@ -132,7 +145,8 @@ static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
 	if (err)
 		return err;
 
-	*allocated = 1;
+	if (!can_assume(NO_ROLLBACK))
+		*allocated = 1;
 
 	memcpy(new, s, len);
 	return (new - strtab);
@@ -206,7 +220,8 @@ static int fdt_add_property_(void *fdt, int nodeoffset, const char *name,
 
 	err = fdt_splice_struct_(fdt, *prop, 0, proplen);
 	if (err) {
-		if (allocated)
+		/* Delete the string if we failed to add it */
+		if (!can_assume(NO_ROLLBACK) && allocated)
 			fdt_del_last_string_(fdt, name);
 		return err;
 	}
@@ -334,7 +349,10 @@ int fdt_add_subnode_namelen(void *fdt, int parentoffset,
 		return offset;
 
 	/* Try to place the new node after the parent's properties */
-	fdt_next_tag(fdt, parentoffset, &nextoffset); /* skip the BEGIN_NODE */
+	tag = fdt_next_tag(fdt, parentoffset, &nextoffset);
+	/* the fdt_subnode_offset_namelen() should ensure this never hits */
+	if (!can_assume(LIBFDT_FLAWLESS) && (tag != FDT_BEGIN_NODE))
+		return -FDT_ERR_INTERNAL;
 	do {
 		offset = nextoffset;
 		tag = fdt_next_tag(fdt, offset, &nextoffset);
@@ -376,7 +394,9 @@ int fdt_del_node(void *fdt, int nodeoffset)
 }
 
 static void fdt_packblocks_(const char *old, char *new,
-			    int mem_rsv_size, int struct_size)
+			    int mem_rsv_size,
+			    int struct_size,
+			    int strings_size)
 {
 	int mem_rsv_off, struct_off, strings_off;
 
@@ -391,8 +411,7 @@ static void fdt_packblocks_(const char *old, char *new,
 	fdt_set_off_dt_struct(new, struct_off);
 	fdt_set_size_dt_struct(new, struct_size);
 
-	memmove(new + strings_off, old + fdt_off_dt_strings(old),
-		fdt_size_dt_strings(old));
+	memmove(new + strings_off, old + fdt_off_dt_strings(old), strings_size);
 	fdt_set_off_dt_strings(new, strings_off);
 	fdt_set_size_dt_strings(new, fdt_size_dt_strings(old));
 }
@@ -411,17 +430,20 @@ int fdt_open_into(const void *fdt, void *buf, int bufsize)
 	mem_rsv_size = (fdt_num_mem_rsv(fdt)+1)
 		* sizeof(struct fdt_reserve_entry);
 
-	if (fdt_version(fdt) >= 17) {
+	if (can_assume(LATEST) || fdt_version(fdt) >= 17) {
 		struct_size = fdt_size_dt_struct(fdt);
-	} else {
+	} else if (fdt_version(fdt) == 16) {
 		struct_size = 0;
 		while (fdt_next_tag(fdt, struct_size, &struct_size) != FDT_END)
 			;
 		if (struct_size < 0)
 			return struct_size;
+	} else {
+		return -FDT_ERR_BADVERSION;
 	}
 
-	if (!fdt_blocks_misordered_(fdt, mem_rsv_size, struct_size)) {
+	if (can_assume(LIBFDT_ORDER) ||
+	    !fdt_blocks_misordered_(fdt, mem_rsv_size, struct_size)) {
 		/* no further work necessary */
 		err = fdt_move(fdt, buf, bufsize);
 		if (err)
@@ -449,7 +471,8 @@ int fdt_open_into(const void *fdt, void *buf, int bufsize)
 			return -FDT_ERR_NOSPACE;
 	}
 
-	fdt_packblocks_(fdt, tmp, mem_rsv_size, struct_size);
+	fdt_packblocks_(fdt, tmp, mem_rsv_size, struct_size,
+			fdt_size_dt_strings(fdt));
 	memmove(buf, tmp, newsize);
 
 	fdt_set_magic(buf, FDT_MAGIC);
@@ -469,7 +492,8 @@ int fdt_pack(void *fdt)
 
 	mem_rsv_size = (fdt_num_mem_rsv(fdt)+1)
 		* sizeof(struct fdt_reserve_entry);
-	fdt_packblocks_(fdt, fdt, mem_rsv_size, fdt_size_dt_struct(fdt));
+	fdt_packblocks_(fdt, fdt, mem_rsv_size, fdt_size_dt_struct(fdt),
+			fdt_size_dt_strings(fdt));
 	fdt_set_totalsize(fdt, fdt_data_size_(fdt));
 
 	return 0;
diff --git a/scripts/dtc/libfdt/fdt_strerror.c b/scripts/dtc/libfdt/fdt_strerror.c
index 768db66eada5..d852b77e81e7 100644
--- a/scripts/dtc/libfdt/fdt_strerror.c
+++ b/scripts/dtc/libfdt/fdt_strerror.c
@@ -39,8 +39,9 @@ static struct fdt_errtabent fdt_errtable[] = {
 	FDT_ERRTABENT(FDT_ERR_BADOVERLAY),
 	FDT_ERRTABENT(FDT_ERR_NOPHANDLES),
 	FDT_ERRTABENT(FDT_ERR_BADFLAGS),
+	FDT_ERRTABENT(FDT_ERR_ALIGNMENT),
 };
-#define FDT_ERRTABSIZE	(sizeof(fdt_errtable) / sizeof(fdt_errtable[0]))
+#define FDT_ERRTABSIZE	((int)(sizeof(fdt_errtable) / sizeof(fdt_errtable[0])))
 
 const char *fdt_strerror(int errval)
 {
@@ -48,7 +49,7 @@ const char *fdt_strerror(int errval)
 		return "<valid offset/length>";
 	else if (errval == 0)
 		return "<no error>";
-	else if (errval > -FDT_ERRTABSIZE) {
+	else if (-errval < FDT_ERRTABSIZE) {
 		const char *s = fdt_errtable[-errval].str;
 
 		if (s)
diff --git a/scripts/dtc/libfdt/fdt_sw.c b/scripts/dtc/libfdt/fdt_sw.c
index 76bea22f734f..4c569ee7eb0d 100644
--- a/scripts/dtc/libfdt/fdt_sw.c
+++ b/scripts/dtc/libfdt/fdt_sw.c
@@ -12,10 +12,13 @@
 
 static int fdt_sw_probe_(void *fdt)
 {
-	if (fdt_magic(fdt) == FDT_MAGIC)
-		return -FDT_ERR_BADSTATE;
-	else if (fdt_magic(fdt) != FDT_SW_MAGIC)
-		return -FDT_ERR_BADMAGIC;
+	if (!can_assume(VALID_INPUT)) {
+		if (fdt_magic(fdt) == FDT_MAGIC)
+			return -FDT_ERR_BADSTATE;
+		else if (fdt_magic(fdt) != FDT_SW_MAGIC)
+			return -FDT_ERR_BADMAGIC;
+	}
+
 	return 0;
 }
 
@@ -29,7 +32,7 @@ static int fdt_sw_probe_(void *fdt)
 /* 'memrsv' state:	Initial state after fdt_create()
  *
  * Allowed functions:
- *	fdt_add_reservmap_entry()
+ *	fdt_add_reservemap_entry()
  *	fdt_finish_reservemap()		[moves to 'struct' state]
  */
 static int fdt_sw_probe_memrsv_(void *fdt)
@@ -38,7 +41,7 @@ static int fdt_sw_probe_memrsv_(void *fdt)
 	if (err)
 		return err;
 
-	if (fdt_off_dt_strings(fdt) != 0)
+	if (!can_assume(VALID_INPUT) && fdt_off_dt_strings(fdt) != 0)
 		return -FDT_ERR_BADSTATE;
 	return 0;
 }
@@ -64,7 +67,8 @@ static int fdt_sw_probe_struct_(void *fdt)
 	if (err)
 		return err;
 
-	if (fdt_off_dt_strings(fdt) != fdt_totalsize(fdt))
+	if (!can_assume(VALID_INPUT) &&
+	    fdt_off_dt_strings(fdt) != fdt_totalsize(fdt))
 		return -FDT_ERR_BADSTATE;
 	return 0;
 }
@@ -89,8 +93,8 @@ static inline uint32_t sw_flags(void *fdt)
 
 static void *fdt_grab_space_(void *fdt, size_t len)
 {
-	int offset = fdt_size_dt_struct(fdt);
-	int spaceleft;
+	unsigned int offset = fdt_size_dt_struct(fdt);
+	unsigned int spaceleft;
 
 	spaceleft = fdt_totalsize(fdt) - fdt_off_dt_struct(fdt)
 		- fdt_size_dt_strings(fdt);
@@ -104,8 +108,8 @@ static void *fdt_grab_space_(void *fdt, size_t len)
 
 int fdt_create_with_flags(void *buf, int bufsize, uint32_t flags)
 {
-	const size_t hdrsize = FDT_ALIGN(sizeof(struct fdt_header),
-					 sizeof(struct fdt_reserve_entry));
+	const int hdrsize = FDT_ALIGN(sizeof(struct fdt_header),
+				      sizeof(struct fdt_reserve_entry));
 	void *fdt = buf;
 
 	if (bufsize < hdrsize)
@@ -148,13 +152,17 @@ int fdt_resize(void *fdt, void *buf, int bufsize)
 
 	FDT_SW_PROBE(fdt);
 
+	if (bufsize < 0)
+		return -FDT_ERR_NOSPACE;
+
 	headsize = fdt_off_dt_struct(fdt) + fdt_size_dt_struct(fdt);
 	tailsize = fdt_size_dt_strings(fdt);
 
-	if ((headsize + tailsize) > fdt_totalsize(fdt))
+	if (!can_assume(VALID_DTB) &&
+	    headsize + tailsize > fdt_totalsize(fdt))
 		return -FDT_ERR_INTERNAL;
 
-	if ((headsize + tailsize) > bufsize)
+	if ((headsize + tailsize) > (unsigned)bufsize)
 		return -FDT_ERR_NOSPACE;
 
 	oldtail = (char *)fdt + fdt_totalsize(fdt) - tailsize;
@@ -242,18 +250,18 @@ int fdt_end_node(void *fdt)
 static int fdt_add_string_(void *fdt, const char *s)
 {
 	char *strtab = (char *)fdt + fdt_totalsize(fdt);
-	int strtabsize = fdt_size_dt_strings(fdt);
-	int len = strlen(s) + 1;
-	int struct_top, offset;
+	unsigned int strtabsize = fdt_size_dt_strings(fdt);
+	unsigned int len = strlen(s) + 1;
+	unsigned int struct_top, offset;
 
-	offset = -strtabsize - len;
+	offset = strtabsize + len;
 	struct_top = fdt_off_dt_struct(fdt) + fdt_size_dt_struct(fdt);
-	if (fdt_totalsize(fdt) + offset < struct_top)
+	if (fdt_totalsize(fdt) - offset < struct_top)
 		return 0; /* no more room :( */
 
-	memcpy(strtab + offset, s, len);
+	memcpy(strtab - offset, s, len);
 	fdt_set_size_dt_strings(fdt, strtabsize + len);
-	return offset;
+	return -offset;
 }
 
 /* Must only be used to roll back in case of error */
@@ -369,7 +377,7 @@ int fdt_finish(void *fdt)
 	fdt_set_totalsize(fdt, newstroffset + fdt_size_dt_strings(fdt));
 
 	/* And fix up fields that were keeping intermediate state. */
-	fdt_set_last_comp_version(fdt, FDT_FIRST_SUPPORTED_VERSION);
+	fdt_set_last_comp_version(fdt, FDT_LAST_COMPATIBLE_VERSION);
 	fdt_set_magic(fdt, FDT_MAGIC);
 
 	return 0;
diff --git a/scripts/dtc/libfdt/fdt_wip.c b/scripts/dtc/libfdt/fdt_wip.c
index f64139e0b3dc..c2d7566a67dc 100644
--- a/scripts/dtc/libfdt/fdt_wip.c
+++ b/scripts/dtc/libfdt/fdt_wip.c
@@ -23,7 +23,7 @@ int fdt_setprop_inplace_namelen_partial(void *fdt, int nodeoffset,
 	if (!propval)
 		return proplen;
 
-	if (proplen < (len + idx))
+	if ((unsigned)proplen < (len + idx))
 		return -FDT_ERR_NOSPACE;
 
 	memcpy((char *)propval + idx, val, len);
diff --git a/scripts/dtc/libfdt/libfdt.h b/scripts/dtc/libfdt/libfdt.h
index 7b5ffd13a887..77ccff19911e 100644
--- a/scripts/dtc/libfdt/libfdt.h
+++ b/scripts/dtc/libfdt/libfdt.h
@@ -9,7 +9,12 @@
 #include "libfdt_env.h"
 #include "fdt.h"
 
+#ifdef __cplusplus
+extern "C" {
+#endif
+
 #define FDT_FIRST_SUPPORTED_VERSION	0x02
+#define FDT_LAST_COMPATIBLE_VERSION 0x10
 #define FDT_LAST_SUPPORTED_VERSION	0x11
 
 /* Error codes: informative error codes */
@@ -97,7 +102,11 @@
 	/* FDT_ERR_BADFLAGS: The function was passed a flags field that
 	 * contains invalid flags or an invalid combination of flags. */
 
-#define FDT_ERR_MAX		18
+#define FDT_ERR_ALIGNMENT	19
+	/* FDT_ERR_ALIGNMENT: The device tree base address is not 8-byte
+	 * aligned. */
+
+#define FDT_ERR_MAX		19
 
 /* constants */
 #define FDT_MAX_PHANDLE 0xfffffffe
@@ -118,11 +127,16 @@ static inline void *fdt_offset_ptr_w(void *fdt, int offset, int checklen)
 uint32_t fdt_next_tag(const void *fdt, int offset, int *nextoffset);
 
 /*
- * Alignment helpers:
- *     These helpers access words from a device tree blob.  They're
- *     built to work even with unaligned pointers on platforms (ike
- *     ARM) that don't like unaligned loads and stores
+ * External helpers to access words from a device tree blob. They're built
+ * to work even with unaligned pointers on platforms (such as ARMv5) that don't
+ * like unaligned loads and stores.
  */
+static inline uint16_t fdt16_ld(const fdt16_t *p)
+{
+	const uint8_t *bp = (const uint8_t *)p;
+
+	return ((uint16_t)bp[0] << 8) | bp[1];
+}
 
 static inline uint32_t fdt32_ld(const fdt32_t *p)
 {
@@ -136,7 +150,7 @@ static inline uint32_t fdt32_ld(const fdt32_t *p)
 
 static inline void fdt32_st(void *property, uint32_t value)
 {
-	uint8_t *bp = property;
+	uint8_t *bp = (uint8_t *)property;
 
 	bp[0] = value >> 24;
 	bp[1] = (value >> 16) & 0xff;
@@ -160,7 +174,7 @@ static inline uint64_t fdt64_ld(const fdt64_t *p)
 
 static inline void fdt64_st(void *property, uint64_t value)
 {
-	uint8_t *bp = property;
+	uint8_t *bp = (uint8_t *)property;
 
 	bp[0] = value >> 56;
 	bp[1] = (value >> 48) & 0xff;
@@ -180,23 +194,23 @@ int fdt_next_node(const void *fdt, int offset, int *depth);
 
 /**
  * fdt_first_subnode() - get offset of first direct subnode
- *
  * @fdt:	FDT blob
  * @offset:	Offset of node to check
- * @return offset of first subnode, or -FDT_ERR_NOTFOUND if there is none
+ *
+ * Return: offset of first subnode, or -FDT_ERR_NOTFOUND if there is none
  */
 int fdt_first_subnode(const void *fdt, int offset);
 
 /**
  * fdt_next_subnode() - get offset of next direct subnode
+ * @fdt:	FDT blob
+ * @offset:	Offset of previous subnode
  *
  * After first calling fdt_first_subnode(), call this function repeatedly to
  * get direct subnodes of a parent node.
  *
- * @fdt:	FDT blob
- * @offset:	Offset of previous subnode
- * @return offset of next subnode, or -FDT_ERR_NOTFOUND if there are no more
- * subnodes
+ * Return: offset of next subnode, or -FDT_ERR_NOTFOUND if there are no more
+ *         subnodes
  */
 int fdt_next_subnode(const void *fdt, int offset);
 
@@ -221,7 +235,6 @@ int fdt_next_subnode(const void *fdt, int offset);
  * Note that this is implemented as a macro and @node is used as
  * iterator in the loop. The parent variable be constant or even a
  * literal.
- *
  */
 #define fdt_for_each_subnode(node, fdt, parent)		\
 	for (node = fdt_first_subnode(fdt, parent);	\
@@ -265,16 +278,21 @@ fdt_set_hdr_(size_dt_struct);
 /**
  * fdt_header_size - return the size of the tree's header
  * @fdt: pointer to a flattened device tree
+ *
+ * Return: size of DTB header in bytes
+ */
+size_t fdt_header_size(const void *fdt);
+
+/**
+ * fdt_header_size_ - internal function to get header size from a version number
+ * @version: devicetree version number
+ *
+ * Return: size of DTB header in bytes
  */
 size_t fdt_header_size_(uint32_t version);
-static inline size_t fdt_header_size(const void *fdt)
-{
-	return fdt_header_size_(fdt_version(fdt));
-}
 
 /**
  * fdt_check_header - sanity check a device tree header
-
  * @fdt: pointer to data which might be a flattened device tree
  *
  * fdt_check_header() checks that the given buffer contains what
@@ -399,8 +417,7 @@ static inline uint32_t fdt_get_max_phandle(const void *fdt)
  * highest phandle value in the device tree blob) will be returned in the
  * @phandle parameter.
  *
- * Returns:
- *   0 on success or a negative error-code on failure
+ * Return: 0 on success or a negative error-code on failure
  */
 int fdt_generate_phandle(const void *fdt, uint32_t *phandle);
 
@@ -420,9 +437,11 @@ int fdt_num_mem_rsv(const void *fdt);
 /**
  * fdt_get_mem_rsv - retrieve one memory reserve map entry
  * @fdt: pointer to the device tree blob
- * @address, @size: pointers to 64-bit variables
+ * @n: index of reserve map entry
+ * @address: pointer to 64-bit variable to hold the start address
+ * @size: pointer to 64-bit variable to hold the size of the entry
  *
- * On success, *address and *size will contain the address and size of
+ * On success, @address and @size will contain the address and size of
  * the n-th reserve map entry from the device tree blob, in
  * native-endian format.
  *
@@ -445,6 +464,8 @@ int fdt_get_mem_rsv(const void *fdt, int n, uint64_t *address, uint64_t *size);
  * namelen characters of name for matching the subnode name.  This is
  * useful for finding subnodes based on a portion of a larger string,
  * such as a full path.
+ *
+ * Return: offset of the subnode or -FDT_ERR_NOTFOUND if name not found.
  */
 #ifndef SWIG /* Not available in Python */
 int fdt_subnode_offset_namelen(const void *fdt, int parentoffset,
@@ -484,6 +505,8 @@ int fdt_subnode_offset(const void *fdt, int parentoffset, const char *name);
  *
  * Identical to fdt_path_offset(), but only consider the first namelen
  * characters of path as the path name.
+ *
+ * Return: offset of the node or negative libfdt error value otherwise
  */
 #ifndef SWIG /* Not available in Python */
 int fdt_path_offset_namelen(const void *fdt, const char *path, int namelen);
@@ -583,9 +606,9 @@ int fdt_next_property_offset(const void *fdt, int offset);
 /**
  * fdt_for_each_property_offset - iterate over all properties of a node
  *
- * @property_offset:	property offset (int, lvalue)
- * @fdt:		FDT blob (const void *)
- * @node:		node offset (int)
+ * @property:	property offset (int, lvalue)
+ * @fdt:	FDT blob (const void *)
+ * @node:	node offset (int)
  *
  * This is actually a wrapper around a for loop and would be used like so:
  *
@@ -637,6 +660,13 @@ int fdt_next_property_offset(const void *fdt, int offset);
 const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
 						      int offset,
 						      int *lenp);
+static inline struct fdt_property *fdt_get_property_by_offset_w(void *fdt,
+								int offset,
+								int *lenp)
+{
+	return (struct fdt_property *)(uintptr_t)
+		fdt_get_property_by_offset(fdt, offset, lenp);
+}
 
 /**
  * fdt_get_property_namelen - find a property based on substring
@@ -648,6 +678,9 @@ const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
  *
  * Identical to fdt_get_property(), but only examine the first namelen
  * characters of name for matching the property name.
+ *
+ * Return: pointer to the structure representing the property, or NULL
+ *         if not found
  */
 #ifndef SWIG /* Not available in Python */
 const struct fdt_property *fdt_get_property_namelen(const void *fdt,
@@ -740,6 +773,8 @@ const void *fdt_getprop_by_offset(const void *fdt, int offset,
  *
  * Identical to fdt_getprop(), but only examine the first namelen
  * characters of name for matching the property name.
+ *
+ * Return: pointer to the property's value or NULL on error
  */
 #ifndef SWIG /* Not available in Python */
 const void *fdt_getprop_namelen(const void *fdt, int nodeoffset,
@@ -761,10 +796,10 @@ static inline void *fdt_getprop_namelen_w(void *fdt, int nodeoffset,
  * @lenp: pointer to an integer variable (will be overwritten) or NULL
  *
  * fdt_getprop() retrieves a pointer to the value of the property
- * named 'name' of the node at offset nodeoffset (this will be a
+ * named @name of the node at offset @nodeoffset (this will be a
  * pointer to within the device blob itself, not a copy of the value).
- * If lenp is non-NULL, the length of the property value is also
- * returned, in the integer pointed to by lenp.
+ * If @lenp is non-NULL, the length of the property value is also
+ * returned, in the integer pointed to by @lenp.
  *
  * returns:
  *	pointer to the property's value
@@ -809,8 +844,11 @@ uint32_t fdt_get_phandle(const void *fdt, int nodeoffset);
  * @name: name of the alias th look up
  * @namelen: number of characters of name to consider
  *
- * Identical to fdt_get_alias(), but only examine the first namelen
- * characters of name for matching the alias name.
+ * Identical to fdt_get_alias(), but only examine the first @namelen
+ * characters of @name for matching the alias name.
+ *
+ * Return: a pointer to the expansion of the alias named @name, if it exists,
+ *	   NULL otherwise
  */
 #ifndef SWIG /* Not available in Python */
 const char *fdt_get_alias_namelen(const void *fdt,
@@ -823,7 +861,7 @@ const char *fdt_get_alias_namelen(const void *fdt,
  * @name: name of the alias th look up
  *
  * fdt_get_alias() retrieves the value of a given alias.  That is, the
- * value of the property named 'name' in the node /aliases.
+ * value of the property named @name in the node /aliases.
  *
  * returns:
  *	a pointer to the expansion of the alias named 'name', if it exists
@@ -999,14 +1037,13 @@ int fdt_node_offset_by_prop_value(const void *fdt, int startoffset,
 int fdt_node_offset_by_phandle(const void *fdt, uint32_t phandle);
 
 /**
- * fdt_node_check_compatible: check a node's compatible property
+ * fdt_node_check_compatible - check a node's compatible property
  * @fdt: pointer to the device tree blob
  * @nodeoffset: offset of a tree node
  * @compatible: string to match against
  *
- *
  * fdt_node_check_compatible() returns 0 if the given node contains a
- * 'compatible' property with the given string as one of its elements,
+ * @compatible property with the given string as one of its elements,
  * it returns non-zero otherwise, or on error.
  *
  * returns:
@@ -1070,7 +1107,7 @@ int fdt_node_offset_by_compatible(const void *fdt, int startoffset,
  * one or more strings, each terminated by \0, as is found in a device tree
  * "compatible" property.
  *
- * @return: 1 if the string is found in the list, 0 not found, or invalid list
+ * Return: 1 if the string is found in the list, 0 not found, or invalid list
  */
 int fdt_stringlist_contains(const char *strlist, int listlen, const char *str);
 
@@ -1079,7 +1116,8 @@ int fdt_stringlist_contains(const char *strlist, int listlen, const char *str);
  * @fdt: pointer to the device tree blob
  * @nodeoffset: offset of a tree node
  * @property: name of the property containing the string list
- * @return:
+ *
+ * Return:
  *   the number of strings in the given property
  *   -FDT_ERR_BADVALUE if the property value is not NUL-terminated
  *   -FDT_ERR_NOTFOUND if the property does not exist
@@ -1099,7 +1137,7 @@ int fdt_stringlist_count(const void *fdt, int nodeoffset, const char *property);
  * small-valued cell properties, such as #address-cells, when searching for
  * the empty string.
  *
- * @return:
+ * return:
  *   the index of the string in the list of strings
  *   -FDT_ERR_BADVALUE if the property value is not NUL-terminated
  *   -FDT_ERR_NOTFOUND if the property does not exist or does not contain
@@ -1123,7 +1161,7 @@ int fdt_stringlist_search(const void *fdt, int nodeoffset, const char *property,
  * If non-NULL, the length of the string (on success) or a negative error-code
  * (on failure) will be stored in the integer pointer to by lenp.
  *
- * @return:
+ * Return:
  *   A pointer to the string at the given index in the string list or NULL on
  *   failure. On success the length of the string will be stored in the memory
  *   location pointed to by the lenp parameter, if non-NULL. On failure one of
@@ -1212,6 +1250,8 @@ int fdt_size_cells(const void *fdt, int nodeoffset);
  * starting from the given index, and using only the first characters
  * of the name. It is useful when you want to manipulate only one value of
  * an array and you have a string that doesn't end with \0.
+ *
+ * Return: 0 on success, negative libfdt error value otherwise
  */
 #ifndef SWIG /* Not available in Python */
 int fdt_setprop_inplace_namelen_partial(void *fdt, int nodeoffset,
@@ -1325,8 +1365,13 @@ static inline int fdt_setprop_inplace_u64(void *fdt, int nodeoffset,
 
 /**
  * fdt_setprop_inplace_cell - change the value of a single-cell property
+ * @fdt: pointer to the device tree blob
+ * @nodeoffset: offset of the node containing the property
+ * @name: name of the property to change the value of
+ * @val: new value of the 32-bit cell
  *
  * This is an alternative name for fdt_setprop_inplace_u32()
+ * Return: 0 on success, negative libfdt error number otherwise.
  */
 static inline int fdt_setprop_inplace_cell(void *fdt, int nodeoffset,
 					   const char *name, uint32_t val)
@@ -1398,7 +1443,7 @@ int fdt_nop_node(void *fdt, int nodeoffset);
 
 /**
  * fdt_create_with_flags - begin creation of a new fdt
- * @fdt: pointer to memory allocated where fdt will be created
+ * @buf: pointer to memory allocated where fdt will be created
  * @bufsize: size of the memory space at fdt
  * @flags: a valid combination of FDT_CREATE_FLAG_ flags, or 0.
  *
@@ -1416,7 +1461,7 @@ int fdt_create_with_flags(void *buf, int bufsize, uint32_t flags);
 
 /**
  * fdt_create - begin creation of a new fdt
- * @fdt: pointer to memory allocated where fdt will be created
+ * @buf: pointer to memory allocated where fdt will be created
  * @bufsize: size of the memory space at fdt
  *
  * fdt_create() is equivalent to fdt_create_with_flags() with flags=0.
@@ -1481,7 +1526,8 @@ int fdt_pack(void *fdt);
 /**
  * fdt_add_mem_rsv - add one memory reserve map entry
  * @fdt: pointer to the device tree blob
- * @address, @size: 64-bit values (native endian)
+ * @address: 64-bit start address of the reserve map entry
+ * @size: 64-bit size of the reserved region
  *
  * Adds a reserve map entry to the given blob reserving a region at
  * address address of length size.
@@ -1686,8 +1732,14 @@ static inline int fdt_setprop_u64(void *fdt, int nodeoffset, const char *name,
 
 /**
  * fdt_setprop_cell - set a property to a single cell value
+ * @fdt: pointer to the device tree blob
+ * @nodeoffset: offset of the node whose property to change
+ * @name: name of the property to change
+ * @val: 32-bit integer value for the property (native endian)
  *
  * This is an alternative name for fdt_setprop_u32()
+ *
+ * Return: 0 on success, negative libfdt error value otherwise.
  */
 static inline int fdt_setprop_cell(void *fdt, int nodeoffset, const char *name,
 				   uint32_t val)
@@ -1858,8 +1910,14 @@ static inline int fdt_appendprop_u64(void *fdt, int nodeoffset,
 
 /**
  * fdt_appendprop_cell - append a single cell value to a property
+ * @fdt: pointer to the device tree blob
+ * @nodeoffset: offset of the node whose property to change
+ * @name: name of the property to change
+ * @val: 32-bit integer value to append to the property (native endian)
  *
  * This is an alternative name for fdt_appendprop_u32()
+ *
+ * Return: 0 on success, negative libfdt error value otherwise.
  */
 static inline int fdt_appendprop_cell(void *fdt, int nodeoffset,
 				      const char *name, uint32_t val)
@@ -1962,13 +2020,16 @@ int fdt_delprop(void *fdt, int nodeoffset, const char *name);
  * fdt_add_subnode_namelen - creates a new node based on substring
  * @fdt: pointer to the device tree blob
  * @parentoffset: structure block offset of a node
- * @name: name of the subnode to locate
+ * @name: name of the subnode to create
  * @namelen: number of characters of name to consider
  *
- * Identical to fdt_add_subnode(), but use only the first namelen
- * characters of name as the name of the new node.  This is useful for
+ * Identical to fdt_add_subnode(), but use only the first @namelen
+ * characters of @name as the name of the new node.  This is useful for
  * creating subnodes based on a portion of a larger string, such as a
  * full path.
+ *
+ * Return: structure block offset of the created subnode (>=0),
+ *	   negative libfdt error value otherwise
  */
 #ifndef SWIG /* Not available in Python */
 int fdt_add_subnode_namelen(void *fdt, int parentoffset,
@@ -1987,7 +2048,7 @@ int fdt_add_subnode_namelen(void *fdt, int parentoffset,
  *
  * This function will insert data into the blob, and will therefore
  * change the offsets of some existing nodes.
-
+ *
  * returns:
  *	structure block offset of the created nodeequested subnode (>=0), on
  *		success
@@ -2062,10 +2123,32 @@ int fdt_del_node(void *fdt, int nodeoffset);
  */
 int fdt_overlay_apply(void *fdt, void *fdto);
 
+/**
+ * fdt_overlay_target_offset - retrieves the offset of a fragment's target
+ * @fdt: Base device tree blob
+ * @fdto: Device tree overlay blob
+ * @fragment_offset: node offset of the fragment in the overlay
+ * @pathp: pointer which receives the path of the target (or NULL)
+ *
+ * fdt_overlay_target_offset() retrieves the target offset in the base
+ * device tree of a fragment, no matter how the actual targeting is
+ * done (through a phandle or a path)
+ *
+ * returns:
+ *      the targeted node offset in the base device tree
+ *      Negative error code on error
+ */
+int fdt_overlay_target_offset(const void *fdt, const void *fdto,
+			      int fragment_offset, char const **pathp);
+
 /**********************************************************************/
 /* Debugging / informational functions                                */
 /**********************************************************************/
 
 const char *fdt_strerror(int errval);
 
+#ifdef __cplusplus
+}
+#endif
+
 #endif /* LIBFDT_H */
diff --git a/scripts/dtc/libfdt/libfdt_internal.h b/scripts/dtc/libfdt/libfdt_internal.h
index 741eeb31502b..16bda1906a7b 100644
--- a/scripts/dtc/libfdt/libfdt_internal.h
+++ b/scripts/dtc/libfdt/libfdt_internal.h
@@ -10,10 +10,10 @@
 #define FDT_ALIGN(x, a)		(((x) + (a) - 1) & ~((a) - 1))
 #define FDT_TAGALIGN(x)		(FDT_ALIGN((x), FDT_TAGSIZE))
 
-int fdt_ro_probe_(const void *fdt);
+int32_t fdt_ro_probe_(const void *fdt);
 #define FDT_RO_PROBE(fdt)					\
 	{							\
-		int totalsize_;					\
+		int32_t totalsize_;				\
 		if ((totalsize_ = fdt_ro_probe_(fdt)) < 0)	\
 			return totalsize_;			\
 	}
@@ -46,6 +46,147 @@ static inline struct fdt_reserve_entry *fdt_mem_rsv_w_(void *fdt, int n)
 	return (void *)(uintptr_t)fdt_mem_rsv_(fdt, n);
 }
 
+/*
+ * Internal helpers to access tructural elements of the device tree
+ * blob (rather than for exaple reading integers from within property
+ * values).  We assume that we are either given a naturally aligned
+ * address for the platform or if we are not, we are on a platform
+ * where unaligned memory reads will be handled in a graceful manner.
+ * If not the external helpers fdtXX_ld() from libfdt.h can be used
+ * instead.
+ */
+static inline uint32_t fdt32_ld_(const fdt32_t *p)
+{
+	return fdt32_to_cpu(*p);
+}
+
+static inline uint64_t fdt64_ld_(const fdt64_t *p)
+{
+	return fdt64_to_cpu(*p);
+}
+
 #define FDT_SW_MAGIC		(~FDT_MAGIC)
 
+/**********************************************************************/
+/* Checking controls                                                  */
+/**********************************************************************/
+
+#ifndef FDT_ASSUME_MASK
+#define FDT_ASSUME_MASK 0
+#endif
+
+/*
+ * Defines assumptions which can be enabled. Each of these can be enabled
+ * individually. For maximum safety, don't enable any assumptions!
+ *
+ * For minimal code size and no safety, use ASSUME_PERFECT at your own risk.
+ * You should have another method of validating the device tree, such as a
+ * signature or hash check before using libfdt.
+ *
+ * For situations where security is not a concern it may be safe to enable
+ * ASSUME_SANE.
+ */
+enum {
+	/*
+	 * This does essentially no checks. Only the latest device-tree
+	 * version is correctly handled. Inconsistencies or errors in the device
+	 * tree may cause undefined behaviour or crashes. Invalid parameters
+	 * passed to libfdt may do the same.
+	 *
+	 * If an error occurs when modifying the tree it may leave the tree in
+	 * an intermediate (but valid) state. As an example, adding a property
+	 * where there is insufficient space may result in the property name
+	 * being added to the string table even though the property itself is
+	 * not added to the struct section.
+	 *
+	 * Only use this if you have a fully validated device tree with
+	 * the latest supported version and wish to minimise code size.
+	 */
+	ASSUME_PERFECT		= 0xff,
+
+	/*
+	 * This assumes that the device tree is sane. i.e. header metadata
+	 * and basic hierarchy are correct.
+	 *
+	 * With this assumption enabled, normal device trees produced by libfdt
+	 * and the compiler should be handled safely. Malicious device trees and
+	 * complete garbage may cause libfdt to behave badly or crash. Truncated
+	 * device trees (e.g. those only partially loaded) can also cause
+	 * problems.
+	 *
+	 * Note: Only checks that relate exclusively to the device tree itself
+	 * (not the parameters passed to libfdt) are disabled by this
+	 * assumption. This includes checking headers, tags and the like.
+	 */
+	ASSUME_VALID_DTB	= 1 << 0,
+
+	/*
+	 * This builds on ASSUME_VALID_DTB and further assumes that libfdt
+	 * functions are called with valid parameters, i.e. not trigger
+	 * FDT_ERR_BADOFFSET or offsets that are out of bounds. It disables any
+	 * extensive checking of parameters and the device tree, making various
+	 * assumptions about correctness.
+	 *
+	 * It doesn't make sense to enable this assumption unless
+	 * ASSUME_VALID_DTB is also enabled.
+	 */
+	ASSUME_VALID_INPUT	= 1 << 1,
+
+	/*
+	 * This disables checks for device-tree version and removes all code
+	 * which handles older versions.
+	 *
+	 * Only enable this if you know you have a device tree with the latest
+	 * version.
+	 */
+	ASSUME_LATEST		= 1 << 2,
+
+	/*
+	 * This assumes that it is OK for a failed addition to the device tree,
+	 * due to lack of space or some other problem, to skip any rollback
+	 * steps (such as dropping the property name from the string table).
+	 * This is safe to enable in most circumstances, even though it may
+	 * leave the tree in a sub-optimal state.
+	 */
+	ASSUME_NO_ROLLBACK	= 1 << 3,
+
+	/*
+	 * This assumes that the device tree components appear in a 'convenient'
+	 * order, i.e. the memory reservation block first, then the structure
+	 * block and finally the string block.
+	 *
+	 * This order is not specified by the device-tree specification,
+	 * but is expected by libfdt. The device-tree compiler always created
+	 * device trees with this order.
+	 *
+	 * This assumption disables a check in fdt_open_into() and removes the
+	 * ability to fix the problem there. This is safe if you know that the
+	 * device tree is correctly ordered. See fdt_blocks_misordered_().
+	 */
+	ASSUME_LIBFDT_ORDER	= 1 << 4,
+
+	/*
+	 * This assumes that libfdt itself does not have any internal bugs. It
+	 * drops certain checks that should never be needed unless libfdt has an
+	 * undiscovered bug.
+	 *
+	 * This can generally be considered safe to enable.
+	 */
+	ASSUME_LIBFDT_FLAWLESS	= 1 << 5,
+};
+
+/**
+ * can_assume_() - check if a particular assumption is enabled
+ *
+ * @mask: Mask to check (ASSUME_...)
+ * @return true if that assumption is enabled, else false
+ */
+static inline bool can_assume_(int mask)
+{
+	return FDT_ASSUME_MASK & mask;
+}
+
+/** helper macros for checking assumptions */
+#define can_assume(_assume)	can_assume_(ASSUME_ ## _assume)
+
 #endif /* LIBFDT_INTERNAL_H */
diff --git a/scripts/dtc/livetree.c b/scripts/dtc/livetree.c
index 032df5878ccc..f46a098d5ada 100644
--- a/scripts/dtc/livetree.c
+++ b/scripts/dtc/livetree.c
@@ -438,7 +438,7 @@ cell_t propval_cell(struct property *prop)
 	return fdt32_to_cpu(*((fdt32_t *)prop->val.val));
 }
 
-cell_t propval_cell_n(struct property *prop, int n)
+cell_t propval_cell_n(struct property *prop, unsigned int n)
 {
 	assert(prop->val.len / sizeof(cell_t) >= n);
 	return fdt32_to_cpu(*((fdt32_t *)prop->val.val + n));
@@ -526,7 +526,7 @@ struct node *get_node_by_path(struct node *tree, const char *path)
 	p = strchr(path, '/');
 
 	for_each_child(tree, child) {
-		if (p && strprefixeq(path, p - path, child->name))
+		if (p && strprefixeq(path, (size_t)(p - path), child->name))
 			return get_node_by_path(child, p+1);
 		else if (!p && streq(path, child->name))
 			return child;
@@ -559,7 +559,7 @@ struct node *get_node_by_phandle(struct node *tree, cell_t phandle)
 {
 	struct node *child, *node;
 
-	if ((phandle == 0) || (phandle == -1)) {
+	if (!phandle_is_valid(phandle)) {
 		assert(generate_fixups);
 		return NULL;
 	}
@@ -581,12 +581,39 @@ struct node *get_node_by_phandle(struct node *tree, cell_t phandle)
 
 struct node *get_node_by_ref(struct node *tree, const char *ref)
 {
+	struct node *target = tree;
+	const char *label = NULL, *path = NULL;
+
 	if (streq(ref, "/"))
 		return tree;
-	else if (ref[0] == '/')
-		return get_node_by_path(tree, ref);
+
+	if (ref[0] == '/')
+		path = ref;
 	else
-		return get_node_by_label(tree, ref);
+		label = ref;
+
+	if (label) {
+		const char *slash = strchr(label, '/');
+		char *buf = NULL;
+
+		if (slash) {
+			buf = xstrndup(label, slash - label);
+			label = buf;
+			path = slash + 1;
+		}
+
+		target = get_node_by_label(tree, label);
+
+		free(buf);
+
+		if (!target)
+			return NULL;
+	}
+
+	if (path)
+		target = get_node_by_path(target, path);
+
+	return target;
 }
 
 cell_t get_node_phandle(struct node *root, struct node *node)
@@ -594,7 +621,7 @@ cell_t get_node_phandle(struct node *root, struct node *node)
 	static cell_t phandle = 1; /* FIXME: ick, static local */
 	struct data d = empty_data;
 
-	if ((node->phandle != 0) && (node->phandle != -1))
+	if (phandle_is_valid(node->phandle))
 		return node->phandle;
 
 	while (get_node_by_phandle(root, phandle))
@@ -892,6 +919,12 @@ static void add_fixup_entry(struct dt_info *dti, struct node *fn,
 	/* m->ref can only be a REF_PHANDLE, but check anyway */
 	assert(m->type == REF_PHANDLE);
 
+	/* The format only permits fixups for references to label, not
+	 * references to path */
+	if (strchr(m->ref, '/'))
+		die("Can't generate fixup for reference to path &{%s}\n",
+		    m->ref);
+
 	/* there shouldn't be any ':' in the arguments */
 	if (strchr(node->fullpath, ':') || strchr(prop->name, ':'))
 		die("arguments should not contain ':'\n");
diff --git a/scripts/dtc/srcpos.c b/scripts/dtc/srcpos.c
index f5205fb9c1ff..4fdb22a019bd 100644
--- a/scripts/dtc/srcpos.c
+++ b/scripts/dtc/srcpos.c
@@ -20,7 +20,7 @@ struct search_path {
 static struct search_path *search_path_head, **search_path_tail;
 
 /* Detect infinite include recursion. */
-#define MAX_SRCFILE_DEPTH     (100)
+#define MAX_SRCFILE_DEPTH     (200)
 static int srcfile_depth; /* = 0 */
 
 static char *get_dirname(const char *path)
diff --git a/scripts/dtc/treesource.c b/scripts/dtc/treesource.c
index c9d980c8abfc..33fedee82d58 100644
--- a/scripts/dtc/treesource.c
+++ b/scripts/dtc/treesource.c
@@ -110,13 +110,13 @@ static void write_propval_int(FILE *f, const char *p, size_t len, size_t width)
 			fprintf(f, "%02"PRIx8, *(const uint8_t*)p);
 			break;
 		case 2:
-			fprintf(f, "0x%02"PRIx16, fdt16_to_cpu(*(const fdt16_t*)p));
+			fprintf(f, "0x%02"PRIx16, dtb_ld16(p));
 			break;
 		case 4:
-			fprintf(f, "0x%02"PRIx32, fdt32_to_cpu(*(const fdt32_t*)p));
+			fprintf(f, "0x%02"PRIx32, dtb_ld32(p));
 			break;
 		case 8:
-			fprintf(f, "0x%02"PRIx64, fdt64_to_cpu(*(const fdt64_t*)p));
+			fprintf(f, "0x%02"PRIx64, dtb_ld64(p));
 			break;
 		}
 		if (p + width < end)
@@ -124,27 +124,6 @@ static void write_propval_int(FILE *f, const char *p, size_t len, size_t width)
 	}
 }
 
-static bool has_data_type_information(struct marker *m)
-{
-	return m->type >= TYPE_UINT8;
-}
-
-static struct marker *next_type_marker(struct marker *m)
-{
-	while (m && !has_data_type_information(m))
-		m = m->next;
-	return m;
-}
-
-size_t type_marker_length(struct marker *m)
-{
-	struct marker *next = next_type_marker(m->next);
-
-	if (next)
-		return next->offset - m->offset;
-	return 0;
-}
-
 static const char *delim_start[] = {
 	[TYPE_UINT8] = "[",
 	[TYPE_UINT16] = "/bits/ 16 <",
@@ -183,7 +162,7 @@ static enum markertype guess_value_type(struct property *prop)
 			nnotcelllbl++;
 	}
 
-	if ((p[len-1] == '\0') && (nnotstring == 0) && (nnul < (len-nnul))
+	if ((p[len-1] == '\0') && (nnotstring == 0) && (nnul <= (len-nnul))
 	    && (nnotstringlbl == 0)) {
 		return TYPE_STRING;
 	} else if (((len % sizeof(cell_t)) == 0) && (nnotcelllbl == 0)) {
@@ -229,26 +208,39 @@ static void write_propval(FILE *f, struct property *prop)
 		size_t chunk_len = (m->next ? m->next->offset : len) - m->offset;
 		size_t data_len = type_marker_length(m) ? : len - m->offset;
 		const char *p = &prop->val.val[m->offset];
+		struct marker *m_phandle;
 
-		if (has_data_type_information(m)) {
+		if (is_type_marker(m->type)) {
 			emit_type = m->type;
 			fprintf(f, " %s", delim_start[emit_type]);
 		} else if (m->type == LABEL)
 			fprintf(f, " %s:", m->ref);
-		else if (m->offset)
-			fputc(' ', f);
 
-		if (emit_type == TYPE_NONE) {
-			assert(chunk_len == 0);
+		if (emit_type == TYPE_NONE || chunk_len == 0)
 			continue;
-		}
 
 		switch(emit_type) {
 		case TYPE_UINT16:
 			write_propval_int(f, p, chunk_len, 2);
 			break;
 		case TYPE_UINT32:
-			write_propval_int(f, p, chunk_len, 4);
+			m_phandle = prop->val.markers;
+			for_each_marker_of_type(m_phandle, REF_PHANDLE)
+				if (m->offset == m_phandle->offset)
+					break;
+
+			if (m_phandle) {
+				if (m_phandle->ref[0] == '/')
+					fprintf(f, "&{%s}", m_phandle->ref);
+				else
+					fprintf(f, "&%s", m_phandle->ref);
+				if (chunk_len > 4) {
+					fputc(' ', f);
+					write_propval_int(f, p + 4, chunk_len - 4, 4);
+				}
+			} else {
+				write_propval_int(f, p, chunk_len, 4);
+			}
 			break;
 		case TYPE_UINT64:
 			write_propval_int(f, p, chunk_len, 8);
diff --git a/scripts/dtc/util.c b/scripts/dtc/util.c
index 48af961dcc8c..507f0120cd13 100644
--- a/scripts/dtc/util.c
+++ b/scripts/dtc/util.c
@@ -13,6 +13,7 @@
 #include <stdarg.h>
 #include <string.h>
 #include <assert.h>
+#include <inttypes.h>
 
 #include <errno.h>
 #include <fcntl.h>
@@ -32,6 +33,17 @@ char *xstrdup(const char *s)
 	return d;
 }
 
+char *xstrndup(const char *s, size_t n)
+{
+	size_t len = strnlen(s, n) + 1;
+	char *d = xmalloc(len);
+
+	memcpy(d, s, len - 1);
+	d[len - 1] = '\0';
+
+	return d;
+}
+
 int xavsprintf_append(char **strp, const char *fmt, va_list ap)
 {
 	int n, size = 0;	/* start with 128 bytes */
@@ -352,11 +364,11 @@ int utilfdt_decode_type(const char *fmt, int *type, int *size)
 	}
 
 	/* we should now have a type */
-	if ((*fmt == '\0') || !strchr("iuxs", *fmt))
+	if ((*fmt == '\0') || !strchr("iuxsr", *fmt))
 		return -1;
 
 	/* convert qualifier (bhL) to byte size */
-	if (*fmt != 's')
+	if (*fmt != 's' && *fmt != 'r')
 		*size = qualifier == 'b' ? 1 :
 				qualifier == 'h' ? 2 :
 				qualifier == 'l' ? 4 : -1;
@@ -393,7 +405,7 @@ void utilfdt_print_data(const char *data, int len)
 
 		printf(" = <");
 		for (i = 0, len /= 4; i < len; i++)
-			printf("0x%08x%s", fdt32_to_cpu(cell[i]),
+			printf("0x%08" PRIx32 "%s", fdt32_to_cpu(cell[i]),
 			       i < (len - 1) ? " " : "");
 		printf(">");
 	} else {
diff --git a/scripts/dtc/util.h b/scripts/dtc/util.h
index ca5cb52928e3..9d38edee9736 100644
--- a/scripts/dtc/util.h
+++ b/scripts/dtc/util.h
@@ -2,6 +2,7 @@
 #ifndef UTIL_H
 #define UTIL_H
 
+#include <stdlib.h>
 #include <stdarg.h>
 #include <stdbool.h>
 #include <getopt.h>
@@ -12,7 +13,11 @@
  */
 
 #ifdef __GNUC__
+#if __GNUC__ >= 5 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 4)
+#define PRINTF(i, j)	__attribute__((format (gnu_printf, i, j)))
+#else
 #define PRINTF(i, j)	__attribute__((format (printf, i, j)))
+#endif
 #define NORETURN	__attribute__((noreturn))
 #else
 #define PRINTF(i, j)
@@ -56,6 +61,7 @@ static inline void *xrealloc(void *p, size_t len)
 }
 
 extern char *xstrdup(const char *s);
+extern char *xstrndup(const char *s, size_t len);
 
 extern int PRINTF(2, 3) xasprintf(char **strp, const char *fmt, ...);
 extern int PRINTF(2, 3) xasprintf_append(char **strp, const char *fmt, ...);
@@ -138,6 +144,7 @@ int utilfdt_write_err(const char *filename, const void *blob);
  *		i	signed integer
  *		u	unsigned integer
  *		x	hex
+ *		r	raw
  *
  * TODO: Implement ll modifier (8 bytes)
  * TODO: Implement o type (octal)
@@ -155,7 +162,7 @@ int utilfdt_decode_type(const char *fmt, int *type, int *size);
  */
 
 #define USAGE_TYPE_MSG \
-	"<type>\ts=string, i=int, u=unsigned, x=hex\n" \
+	"<type>\ts=string, i=int, u=unsigned, x=hex, r=raw\n" \
 	"\tOptional modifier prefix:\n" \
 	"\t\thh or b=byte, h=2 byte, l=4 byte (default)";
 
diff --git a/scripts/dtc/version_gen.h b/scripts/dtc/version_gen.h
index 5c04ba938c06..f8facf85fbf6 100644
--- a/scripts/dtc/version_gen.h
+++ b/scripts/dtc/version_gen.h
@@ -1 +1 @@
-#define DTC_VERSION "DTC 1.5.0"
+#define DTC_VERSION "DTC 1.7.0"
diff --git a/scripts/dtc/yamltree.c b/scripts/dtc/yamltree.c
index 5b6ea8ea862f..55908c829c98 100644
--- a/scripts/dtc/yamltree.c
+++ b/scripts/dtc/yamltree.c
@@ -29,11 +29,12 @@ char *yaml_error_name[] = {
 		    (emitter)->problem, __func__, __LINE__);		\
 })
 
-static void yaml_propval_int(yaml_emitter_t *emitter, struct marker *markers, char *data, int len, int width)
+static void yaml_propval_int(yaml_emitter_t *emitter, struct marker *markers,
+	char *data, unsigned int seq_offset, unsigned int len, int width)
 {
 	yaml_event_t event;
 	void *tag;
-	int off, start_offset = markers->offset;
+	unsigned int off;
 
 	switch(width) {
 		case 1: tag = "!u8"; break;
@@ -59,21 +60,21 @@ static void yaml_propval_int(yaml_emitter_t *emitter, struct marker *markers, ch
 			sprintf(buf, "0x%"PRIx8, *(uint8_t*)(data + off));
 			break;
 		case 2:
-			sprintf(buf, "0x%"PRIx16, fdt16_to_cpu(*(fdt16_t*)(data + off)));
+			sprintf(buf, "0x%"PRIx16, dtb_ld16(data + off));
 			break;
 		case 4:
-			sprintf(buf, "0x%"PRIx32, fdt32_to_cpu(*(fdt32_t*)(data + off)));
+			sprintf(buf, "0x%"PRIx32, dtb_ld32(data + off));
 			m = markers;
 			is_phandle = false;
 			for_each_marker_of_type(m, REF_PHANDLE) {
-				if (m->offset == (start_offset + off)) {
+				if (m->offset == (seq_offset + off)) {
 					is_phandle = true;
 					break;
 				}
 			}
 			break;
 		case 8:
-			sprintf(buf, "0x%"PRIx64, fdt64_to_cpu(*(fdt64_t*)(data + off)));
+			sprintf(buf, "0x%"PRIx64, dtb_ld64(data + off));
 			break;
 		}
 
@@ -112,8 +113,9 @@ static void yaml_propval_string(yaml_emitter_t *emitter, char *str, int len)
 static void yaml_propval(yaml_emitter_t *emitter, struct property *prop)
 {
 	yaml_event_t event;
-	int len = prop->val.len;
+	unsigned int len = prop->val.len;
 	struct marker *m = prop->val.markers;
+	struct marker *markers = prop->val.markers;
 
 	/* Emit the property name */
 	yaml_scalar_event_initialize(&event, NULL,
@@ -151,19 +153,19 @@ static void yaml_propval(yaml_emitter_t *emitter, struct property *prop)
 
 		switch(m->type) {
 		case TYPE_UINT16:
-			yaml_propval_int(emitter, m, data, chunk_len, 2);
+			yaml_propval_int(emitter, markers, data, m->offset, chunk_len, 2);
 			break;
 		case TYPE_UINT32:
-			yaml_propval_int(emitter, m, data, chunk_len, 4);
+			yaml_propval_int(emitter, markers, data, m->offset, chunk_len, 4);
 			break;
 		case TYPE_UINT64:
-			yaml_propval_int(emitter, m, data, chunk_len, 8);
+			yaml_propval_int(emitter, markers, data, m->offset, chunk_len, 8);
 			break;
 		case TYPE_STRING:
 			yaml_propval_string(emitter, data, chunk_len);
 			break;
 		default:
-			yaml_propval_int(emitter, m, data, chunk_len, 1);
+			yaml_propval_int(emitter, markers, data, m->offset, chunk_len, 1);
 			break;
 		}
 	}
-- 
2.30.2



