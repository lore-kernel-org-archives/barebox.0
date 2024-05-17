Delivery-date: Fri, 17 May 2024 15:27:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xci-001lP9-1n
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcg-0003ZJ-GB
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GcPNpD/qIXDGdNgXiy88me1295Fmu/k+Jdin5O6FrQw=; b=lp51RJkqkGTUGHSnv8kv/oCm0Q
	Jba3KMyDr9g5yvT57dFrWgn1ZfFGw1SxtLHyddsdu6pALK7coBcqSHmps8TFp5Mo33HsIAUeI4kMD
	Y1zw6rmECEbYlS/kDrkg2PQnOrc6Nx5lvqp6jrnfbJVegbMu6ztWG4npHuL/zLJ9Cii9iicz2beuA
	LcSwoqZW29Evnyctwjvi2CRkvvRQJGHNgSZ+TD9hC5SqlvnfSd8Yo+sbA9UTMj9syQ+swMLRInSFc
	8tBFg6LkxSYJvN+KmDXvh3u+H6HUczdtmhOBJl2yDpkf5FxdUzt5DLTt/1dofD4L5XGiutqvx1mo4
	rD4GCSAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc7-00000007wpM-137G;
	Fri, 17 May 2024 13:27:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wjb-3pum
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00032h-Ib; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCI-5o; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00DEM4-0J;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 15:26:51 +0200
Message-Id: <20240517132656.3151273-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_150414_DFE9F854 
X-CRM114-Status: GOOD (  18.84  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] kbuild: add support for merged defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently use scripts/kconfig/merge_config.sh only in MAKEALL.
Linux has been using it inside Kbuild as well to derive new defconfigs
from the existing ones that differ only by a few options, e.g. to enable
virtualization or to switch endianness.

This is useful for us in barebox as well to cut down on the number of
configs and to avoid bitrot in the less used ones, e.g. a lot of AT91
configs can probably be replaced with two lines in mach-at91/Makefile
each this way.

To support this, let's import scripts/Makefile.defconf from Linux, but
we do some barebox-specific changes on it:

  - We include it globally, instead of each architecture including it
  - We implement a global way for architecture Makefiles to register
    their generated defconfigs, so they are shown in the help text
  - We look in common/boards/configs/ for fragments if there is no
    architecture-specific fragment with the same name to allow sharing
    fragments for common features

As this adds configs that aren't located in the source tree,
scripts/list-defconfigs.sh is adjusted to parse the help text instead,
so CI is aware of the new targets.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                   |  6 +++++-
 scripts/Makefile.defconf   | 37 +++++++++++++++++++++++++++++++++++++
 scripts/list-defconfigs.sh | 20 ++++++++++----------
 3 files changed, 52 insertions(+), 11 deletions(-)
 create mode 100644 scripts/Makefile.defconf

diff --git a/Makefile b/Makefile
index 517b54bd9e6d..93d0b58341b7 100644
--- a/Makefile
+++ b/Makefile
@@ -535,6 +535,8 @@ ifdef config-build
 # *config targets only - make sure prerequisites are updated, and descend
 # in scripts/kconfig to make the *config target
 
+include $(srctree)/scripts/Makefile.defconf
+
 # Read arch specific Makefile to set KBUILD_DEFCONFIG as needed.
 # KBUILD_DEFCONFIG may point out an alternative default configuration
 # used for 'make defconfig'
@@ -1225,7 +1227,9 @@ PHONY += compile_commands.json
 # ---------------------------------------------------------------------------
 
 boards := $(wildcard $(srctree)/arch/$(SRCARCH)/configs/*_defconfig)
-boards := $(sort $(notdir $(boards)))
+boards := $(sort $(notdir $(boards)) $(generated_configs))
+
+PHONY += $(generated_configs)
 
 help:
 	@echo  'Cleaning targets:'
diff --git a/scripts/Makefile.defconf b/scripts/Makefile.defconf
new file mode 100644
index 000000000000..93c848bb5a12
--- /dev/null
+++ b/scripts/Makefile.defconf
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: GPL-2.0
+# Configuration heplers
+
+# Creates 'merged defconfigs'
+# compared to the Linux versions, this also looks for global config fragments
+# in common/boards/configs/ if no global fragments exist.
+# ---------------------------------------------------------------------------
+# Usage:
+#   $(call merge_into_defconfig,base_config,config_fragment1 config_fragment2 ...)
+#
+# Input config fragments without '.config' suffix
+define merge_into_defconfig
+	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh \
+		-m -O $(objtree) $(srctree)/arch/$(SRCARCH)/configs/$(1) \
+		$(foreach config,$(2),$(firstword \
+			$(wildcard $(srctree)/arch/$(SRCARCH)/configs/$(config).config) \
+			$(wildcard $(srctree)/common/boards/configs/$(config).config) \
+		))
+	+$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
+endef
+
+
+# Creates 'merged defconfigs without warning about overrides'
+# ---------------------------------------------------------------------------
+# Usage:
+#   $(call merge_into_defconfig_override,base_config,config_fragment1 config_fragment2 ...)
+#
+# Input config fragments without '.config' suffix
+define merge_into_defconfig_override
+	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh \
+		-Q -m -O $(objtree) $(srctree)/arch/$(SRCARCH)/configs/$(1) \
+		$(foreach config,$(2),$(firstword \
+			$(wildcard $(srctree)/arch/$(SRCARCH)/configs/$(config).config) \
+			$(wildcard $(srctree)/common/boards/configs/$(config).config) \
+		))
+	+$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
+endef
diff --git a/scripts/list-defconfigs.sh b/scripts/list-defconfigs.sh
index eeae9fbfdc30..d7516425f8e3 100755
--- a/scripts/list-defconfigs.sh
+++ b/scripts/list-defconfigs.sh
@@ -2,14 +2,14 @@
 # SPDX-License-Identifier: GPL-2.0-only
 #
 # Output json formatted defconfig list for Github Action consumption
+ARCH=${@:-$(for a in arch/*/; do basename $a; done)}
 
-ARCH=${@:-*}
-
-cd arch
-
-archs=$(for arch in $ARCH; do
-	ls -1 $arch/configs | xargs -i printf '{ "arch": "%s", "config": "%s" }\n' \
-		"$arch" "{}" | paste -sd ',' -
-done | paste -sd ',' -)
-
-echo '{ "include" : '" [ $archs ] }"
+echo '{ "include" : [ '
+for arch in $ARCH; do
+	make ARCH=$arch CROSS_COMPILE= help | \
+		awk '/_defconfig/ { print $1  }' | \
+		xargs -i printf '{ "arch": "%s", "config": "%s" }\n' \
+		"$arch" "{}" | \
+		paste -sd ',' -
+done | paste -sd ',' -
+echo '] }'
-- 
2.39.2



