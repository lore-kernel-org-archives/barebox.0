Delivery-date: Fri, 28 Nov 2025 12:00:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDZ-005lBn-2A
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 12:00:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDX-00024i-Hh
	for lore@pengutronix.de; Fri, 28 Nov 2025 12:00:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pixInL+wT0fd14ro2xcYTwgnEAQw1q3hjSAYrw4/5d4=; b=r/7Rol+hfJXW0rCZrbu/myiB8D
	BlWliqMZi4B6E+bF/lhhLBm3ih3hPa/1mZQeBurqEm9oxvwDBrTvvp6QVW8EKYl6Z91MKXDL1PHLG
	kbVhPUaK76ta8A//niLq5m2FAaKp90PjcYLgU2xJqj8cZ+54kQF0zJIj17LiBR5hNzoL1S3aq8oAk
	gUDjkLGpc5G5hqOPgdzZOKuyfKP+uULrWyfQsFO1aQo47u/ZUD2FU6YAoP8D93aisWtyAj0mcn0i2
	WbvC0B2RH0UAM1vSizodHpQGkQR0o2A1ELyoyrgp3JTxQg5SzDoEm5m3SbzrbFPpkyr8sAlI1gGGc
	bJEyTv3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCz-00000000KUG-3IgH;
	Fri, 28 Nov 2025 11:00:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCx-00000000KSQ-0BKA
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:00:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0001ia-ML
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 12:00:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-002wNw-1W
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0000000EOeF-1Vta
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:58:44 +0100
Message-ID: <20251128110005.3336591-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
References: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_030011_086473_9BB1D786 
X-CRM114-Status: GOOD (  16.25  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] treewide: drop last remnants of <config.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

With all architectures migrated away from config.h use, let's remove
generation logic and remaining includes.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .../migration-guides/migration-master.rst     |  7 +++++++
 Makefile                                      | 19 ++-----------------
 common/console.c                              |  1 -
 common/console_simple.c                       |  1 -
 common/memsize.c                              |  1 -
 drivers/usb/gadget/function/dfu.c             |  1 -
 include/.gitignore                            |  3 ---
 include/common.h                              |  1 -
 lib/image-sparse.c                            |  1 -
 9 files changed, 9 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master.rst
 delete mode 100644 include/.gitignore

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
new file mode 100644
index 000000000000..bb9a24bc06ab
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.rst
@@ -0,0 +1,7 @@
+<config.h> removal for PowerPC
+------------------------------
+
+PowerPC was the last remaining user of per-board ``<config.h>`` files.
+The alternative for out-of-tree boards is now to patch
+``arch/powerpc/include/asm/config.h`` to include the board's config.h,
+like the in-tree boards are already doing.
diff --git a/Makefile b/Makefile
index f958114480f9..4b35b9561059 100644
--- a/Makefile
+++ b/Makefile
@@ -1143,7 +1143,7 @@ scripts: scripts_basic scripts_dtc include/generated/utsrelease.h
 PHONY += prepare archprepare prepare0
 
 archprepare: outputmakefile scripts_basic include/config/kernel.release \
-	$(version_h) include/generated/utsrelease.h include/config.h \
+	$(version_h) include/generated/utsrelease.h \
 	include/generated/autoconf.h
 
 prepare0: archprepare FORCE
@@ -1161,21 +1161,6 @@ prepare: prepare0
 
 export CPPFLAGS_barebox.lds += -C -U$(SRCARCH)
 
-define symlink-config-h
-	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
-		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
-		ln -fsn $(srctree)/$(BOARD)/config.h $@;	\
-	else							\
-		[ -h $@ ] && rm -f $@;				\
-		$(kecho) '  CREATE  $@';			\
-		touch -a $@;					\
-	fi
-endef
-
-PHONY += include/config.h
-include/config.h:
-	$(Q)$(symlink-config-h)
-
 # Create $(FIRMWARE_DIR) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
 FIRMWARE_DIR := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
@@ -1400,7 +1385,7 @@ CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config usr/include include/generated Documentation/commands
 MRPROPER_FILES += .config .config.old .security_config .version .old_version \
-                  include/config.h *.sconfig.old          \
+                  *.sconfig.old          \
 		  Module.symvers tags TAGS cscope*
 
 # clean - Delete most, but leave enough to build external modules
diff --git a/common/console.c b/common/console.c
index aa2013c51522..8a55fd1a1dc6 100644
--- a/common/console.c
+++ b/common/console.c
@@ -4,7 +4,6 @@
  * Paolo Scaffardi, AIRVENT SAM s.p.a - RIMINI(ITALY), arsenio@tin.it
  */
 
-#include <config.h>
 #include <security/config.h>
 #include <common.h>
 #include <stdarg.h>
diff --git a/common/console_simple.c b/common/console_simple.c
index c5f554bbee9b..25fe6217448c 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -1,6 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <config.h>
 #include <common.h>
 #include <fs.h>
 #include <errno.h>
diff --git a/common/memsize.c b/common/memsize.c
index de4d8df18afb..f2e720798eb1 100644
--- a/common/memsize.c
+++ b/common/memsize.c
@@ -5,7 +5,6 @@
  */
 
 #include <common.h>
-#include <config.h>
 #if defined (__PPC__) && !defined (__SANDBOX__)
 /*
  * At least on G2 PowerPC cores, sequential accesses to non-existent
diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 893dcc7f7007..4d7001e48d85 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -35,7 +35,6 @@
 #include <linux/err.h>
 #include <linux/usb/ch9.h>
 #include <linux/usb/dfu.h>
-#include <config.h>
 #include <common.h>
 #include <malloc.h>
 #include <errno.h>
diff --git a/include/.gitignore b/include/.gitignore
deleted file mode 100644
index 3ac630625dc7..000000000000
--- a/include/.gitignore
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-/config.h
diff --git a/include/common.h b/include/common.h
index 16a08fe293af..96670ca3abee 100644
--- a/include/common.h
+++ b/include/common.h
@@ -10,7 +10,6 @@
 #include <stdio.h>
 #include <barebox.h>
 #include <module.h>
-#include <config.h>
 #include <clock.h>
 #include <linux/bitops.h>
 #include <linux/types.h>
diff --git a/lib/image-sparse.c b/lib/image-sparse.c
index eb5242e25ada..67f3b4b11dc3 100644
--- a/lib/image-sparse.c
+++ b/lib/image-sparse.c
@@ -35,7 +35,6 @@
  */
 #define pr_fmt(fmt)  "image-sparse: " fmt
 
-#include <config.h>
 #include <common.h>
 #include <image-sparse.h>
 #include <unistd.h>
-- 
2.47.3



