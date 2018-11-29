Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003iv-OB
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:07 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0001x3-Id
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000AS-3K
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:38 +0100
Message-Id: <20181129113048.31857-6-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/15] debug: Add CONFIG_DEBUG_READABLE_ASM
To: Barebox List <barebox@lists.infradead.org>

Based on linux v3.3 patch: 1873e870fd63ee4b87dbe0125ca373e420fb4987

    debug: Add CONFIG_READABLE_ASM

    Add a config option to disable various gcc compiler optimizations that
    make assembler listings much harder to read. This is everything that reorders
    code significantly or creates partial functions.

    This is mainly to keep kernel hackers sane.

    Signed-off-by: Andi Kleen <ak@linux.intel.com>
    Link: http://lkml.kernel.org/r/1332960678-11879-2-git-send-email-andi@firstfloor.org
    Signed-off-by: H. Peter Anvin <hpa@zytor.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile       | 11 +++++++++++
 common/Kconfig |  8 ++++++++
 2 files changed, 19 insertions(+)

diff --git a/Makefile b/Makefile
index cddff1267972..ee6c8fc82d5a 100644
--- a/Makefile
+++ b/Makefile
@@ -478,6 +478,17 @@ CFLAGS += $(call cc-option,-Wdeclaration-after-statement,)
 # disable pointer signed / unsigned warnings in gcc 4.0
 CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 
+ifdef CONFIG_DEBUG_READABLE_ASM
+# Disable optimizations that make assembler listings hard to read.
+# reorder blocks reorders the control in the function
+# ipa clone creates specialized cloned functions
+# partial inlining inlines only parts of functions
+CFLAGS += $(call cc-option,-fno-reorder-blocks,) \
+          $(call cc-option,-fno-ipa-cp-clone,) \
+          $(call cc-option,-fno-partial-inlining)
+endif
+
+
 # KBUILD_IMAGE: Default barebox image to build
 # Depending on the architecture, this can be either compressed or not.
 # It will also include any necessary headers to be bootable.
diff --git a/common/Kconfig b/common/Kconfig
index 2ad92158c145..c97beea81513 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1228,6 +1228,14 @@ config DEBUG_INITCALLS
 	help
 	  If enabled this will print initcall traces.
 
+config DEBUG_READABLE_ASM
+        bool "Generate readable assembler code"
+        help
+          Disable some compiler optimizations that tend to generate human unreadable
+          assembler output. This may make the kernel slightly slower, but it helps
+          to keep kernel developers who have to stare a lot at assembler listings
+          sane.
+
 endmenu
 
 config HAS_DEBUG_LL
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
