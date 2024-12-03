Delivery-date: Tue, 03 Dec 2024 11:58:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQbm-003TAx-0c
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 11:58:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQbl-00050H-Lo
	for lore@pengutronix.de; Tue, 03 Dec 2024 11:58:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R5PwHuhv9tm9EX4ThsmDLmAwvrm4VYq8BwhBv4YRq+M=; b=wcyt1fNVDAJsAPL5T1VjXeLBvs
	PM34ymbskXd67HJKat8bpBijjEuJQnmajw6GgJxeMnF7+7TJnthz4VZ1XCInMgeZdtXlxt+GFdQGi
	li7FsKXg322eGRfOPL0kT/tsh9HKp6uqyxxLD63Jz79JJIeQyZSY2SaLI4bEKmKUuAgt03y2YyKK8
	h0GyzEKUVeySRzjC9cd4w5wcJTNm+WZKAge6ETfFzTaqv2m75gx+kkwciE0Re8dCFx1Xwlx6VAUkp
	28Tt+cS7oPD6mz9EVyF+36lXjqRF6iwef2MNMidF8icwy774VpAbbrQaf6uNphljtIMb9/CxoLPnu
	3AOR0w+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQbH-00000009ABG-1xCV;
	Tue, 03 Dec 2024 10:57:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQMP-000000096vr-18PJ
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 10:42:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIQMM-0001rE-M0; Tue, 03 Dec 2024 11:42:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIQML-001SbN-2K;
	Tue, 03 Dec 2024 11:42:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIQMM-00G9yg-1H;
	Tue, 03 Dec 2024 11:42:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  3 Dec 2024 11:42:24 +0100
Message-Id: <20241203104225.3851406-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_024229_463480_5FD21610 
X-CRM114-Status: GOOD (  15.87  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] kbuild: split off compiler helpers into separate Makefile.compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has split the compile-specific helpers into a separate file, so
let's do the same for barebox to make it easier to sync
scripts/Kbuild.include in the follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                  |  1 +
 scripts/Kbuild.include    | 83 ---------------------------------------
 scripts/Makefile.build    |  1 +
 scripts/Makefile.compiler | 78 ++++++++++++++++++++++++++++++++++++
 4 files changed, 80 insertions(+), 83 deletions(-)
 create mode 100644 scripts/Makefile.compiler

diff --git a/Makefile b/Makefile
index bc75c6335177..0b61d2875471 100644
--- a/Makefile
+++ b/Makefile
@@ -314,6 +314,7 @@ __build_one_by_one:
 else # !mixed-build
 
 include scripts/Kbuild.include
+include scripts/Makefile.compiler
 
 # Read KERNELRELEASE from include/config/kernel.release (if it exists)
 KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 315e50a2f709..72c6a3c5d7d1 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -69,81 +69,6 @@ define filechk
 	fi
 endef
 
-######
-# gcc support functions
-# See documentation in Documentation/kbuild/makefiles.rst
-
-# cc-cross-prefix
-# Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
-# Return first <prefix> where a <prefix>gcc is found in PATH.
-# If no gcc found in PATH with listed prefixes return nothing
-#
-# Note: '2>/dev/null' is here to force Make to invoke a shell. Otherwise, it
-# would try to directly execute the shell builtin 'command'. This workaround
-# should be kept for a long time since this issue was fixed only after the
-# GNU Make 4.2.1 release.
-cc-cross-prefix = $(firstword $(foreach c, $(1), \
-			$(if $(shell command -v -- $(c)gcc 2>/dev/null), $(c))))
-
-# output directory for tests below
-TMPOUT := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/)
-
-# try-run
-# Usage: option = $(call try-run, $(CC)...-o "$$TMP",option-ok,otherwise)
-# Exit code chooses option. "$$TMP" is can be used as temporary file and
-# is automatically cleaned up.
-try-run = $(shell set -e;		\
-	TMP="$(TMPOUT).$$$$.tmp";	\
-	TMPO="$(TMPOUT).$$$$.o";	\
-	if ($(1)) >/dev/null 2>&1;	\
-	then echo "$(2)";		\
-	else echo "$(3)";		\
-	fi;				\
-	rm -f "$$TMP" "$$TMPO")
-
-# as-option
-# Usage: cflags-y += $(call as-option,-Wa$(comma)-isa=foo,)
-
-as-option = $(call try-run,\
-	$(CC) $(KBUILD_CFLAGS) $(1) -c -xassembler /dev/null -o "$$TMP",$(1),$(2))
-
-# as-instr
-# Usage: cflags-y += $(call as-instr,instr,option1,option2)
-
-as-instr = $(call try-run,\
-	printf "%b\n" "$(1)" | $(CC) $(KBUILD_AFLAGS) -c -xassembler -o "$$TMP" -,$(2),$(3))
-
-# cc-option
-# Usage: cflags-y += $(call cc-option,-march=winchip-c6,-march=i586)
-
-cc-option = $(call try-run,\
-	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",$(1),$(2))
-
-# cc-option-yn
-# Usage: flag := $(call cc-option-yn,-march=winchip-c6)
-cc-option-yn = $(call try-run,\
-	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
-
-# cc-disable-warning
-# Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
-cc-disable-warning = $(call try-run,\
-	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) -W$(strip $(1)) -c -xc /dev/null -o "$$TMP",-Wno-$(strip $(1)))
-
-# cc-version
-# Usage gcc-ver := $(call cc-version)
-cc-version = $(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC))
-
-# cc-ifversion
-# Usage:  EXTRA_CFLAGS += $(call cc-ifversion, -lt, 0402, -O1)
-cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
-
-# ld-option
-# Usage: KBUILD_LDFLAGS += $(call ld-option, -X)
-ld-option = $(call try-run,\
-	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
-
-######
-
 ###
 # Shorthand for $(Q)$(MAKE) -f scripts/Makefile.build obj=
 # Usage:
@@ -156,14 +81,6 @@ build := -f $(srctree)/scripts/Makefile.build obj
 # $(Q)$(MAKE) $(clean)=dir
 clean := -f $(srctree)/scripts/Makefile.clean obj
 
-# Prefix -I with $(srctree) if it is not an absolute path.
-# skip if -I has no parameter
-addtree = $(if $(patsubst -I%,%,$(1)), \
-$(if $(filter-out -I/%,$(1)),$(patsubst -I%,-I$(srctree)/%,$(1))) $(1),$(1))
-
-# Find all -I options and call addtree
-flags = $(foreach o,$($(1)),$(if $(filter -I%,$(o)),$(call addtree,$(o)),$(o)))
-
 # echo command.
 # Short version is used, if $(quiet) equals `quiet_', otherwise full one.
 echo-cmd = $(if $($(quiet)cmd_$(1)),\
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 6b67ad17634b..1c511d38a12b 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -37,6 +37,7 @@ subdir-ccflags-y :=
 -include include/config/auto.conf
 
 include scripts/Kbuild.include
+include scripts/Makefile.compiler
 
 # The filename Kbuild has precedence over Makefile
 kbuild-dir := $(if $(filter /%,$(src)),$(src),$(srctree)/$(src))
diff --git a/scripts/Makefile.compiler b/scripts/Makefile.compiler
new file mode 100644
index 000000000000..1d34239b3bba
--- /dev/null
+++ b/scripts/Makefile.compiler
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+# cc-cross-prefix
+# Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
+# Return first <prefix> where a <prefix>gcc is found in PATH.
+# If no gcc found in PATH with listed prefixes return nothing
+#
+# Note: '2>/dev/null' is here to force Make to invoke a shell. Otherwise, it
+# would try to directly execute the shell builtin 'command'. This workaround
+# should be kept for a long time since this issue was fixed only after the
+# GNU Make 4.2.1 release.
+cc-cross-prefix = $(firstword $(foreach c, $(1), \
+			$(if $(shell command -v -- $(c)gcc 2>/dev/null), $(c))))
+
+# output directory for tests below
+TMPOUT := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/)
+
+# try-run
+# Usage: option = $(call try-run, $(CC)...-o "$$TMP",option-ok,otherwise)
+# Exit code chooses option. "$$TMP" is can be used as temporary file and
+# is automatically cleaned up.
+try-run = $(shell set -e;		\
+	TMP="$(TMPOUT).$$$$.tmp";	\
+	TMPO="$(TMPOUT).$$$$.o";	\
+	if ($(1)) >/dev/null 2>&1;	\
+	then echo "$(2)";		\
+	else echo "$(3)";		\
+	fi;				\
+	rm -f "$$TMP" "$$TMPO")
+
+# as-option
+# Usage: cflags-y += $(call as-option,-Wa$(comma)-isa=foo,)
+
+as-option = $(call try-run,\
+	$(CC) $(KBUILD_CFLAGS) $(1) -c -xassembler /dev/null -o "$$TMP",$(1),$(2))
+
+# as-instr
+# Usage: cflags-y += $(call as-instr,instr,option1,option2)
+
+as-instr = $(call try-run,\
+	printf "%b\n" "$(1)" | $(CC) $(KBUILD_AFLAGS) -c -xassembler -o "$$TMP" -,$(2),$(3))
+
+# cc-option
+# Usage: cflags-y += $(call cc-option,-march=winchip-c6,-march=i586)
+
+cc-option = $(call try-run,\
+	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",$(1),$(2))
+
+# cc-option-yn
+# Usage: flag := $(call cc-option-yn,-march=winchip-c6)
+cc-option-yn = $(call try-run,\
+	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
+
+# cc-disable-warning
+# Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
+cc-disable-warning = $(call try-run,\
+	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) -W$(strip $(1)) -c -xc /dev/null -o "$$TMP",-Wno-$(strip $(1)))
+
+# cc-version
+# Usage gcc-ver := $(call cc-version)
+cc-version = $(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC))
+
+# cc-ifversion
+# Usage:  EXTRA_CFLAGS += $(call cc-ifversion, -lt, 0402, -O1)
+cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
+
+# ld-option
+# Usage: KBUILD_LDFLAGS += $(call ld-option, -X)
+ld-option = $(call try-run,\
+	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
+
+# Prefix -I with $(srctree) if it is not an absolute path.
+# skip if -I has no parameter
+addtree = $(if $(patsubst -I%,%,$(1)), \
+$(if $(filter-out -I/%,$(1)),$(patsubst -I%,-I$(srctree)/%,$(1))) $(1),$(1))
+
+# Find all -I options and call addtree
+flags = $(foreach o,$($(1)),$(if $(filter -I%,$(o)),$(call addtree,$(o)),$(o)))
-- 
2.39.5



