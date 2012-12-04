Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfrDe-0004ex-TC
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 12:03:24 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  4 Dec 2012 13:02:48 +0100
Message-Id: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: added Kconfig option for -mno-unaligned compiler flag
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

With recent gcc, unaligned access is enabled by default on ARMv6+
CPUs.  This can cause problems when bootloader is located e.g. in SRAM
where such an access is not supported.

Patch adds a Kconfig option were the default behavior can be overridden.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/Kconfig  | 8 ++++++++
 arch/arm/Makefile | 4 ++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3afd885..53c36d1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -200,6 +200,14 @@ config ARM_UNWIND
 	  the performance is not affected. Currently, this feature
 	  only works with EABI compilers. If unsure say Y.
 
+config ARM_NOUNALIGNED
+	bool "disable unaligned access"
+        help
+          With recent gcc, unaligned access is enabled by default on ARMv6+
+          CPUs.  This can cause problems when bootloader is located e.g. in
+          SRAM were such an access is not supported. Selection this option
+          sets the '-mno-unaligned-access' compiler flag.
+
 endmenu
 
 source common/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8cef771..9544cca 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -39,6 +39,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_ARM_NOUNALIGNED),y)
+CFLAGS_ABI	+=$(call cc-option,-mno-unaligned-access)
+endif
+
 ifeq ($(CONFIG_THUMB2_BAREBOX),y)
 AFLAGS_AUTOIT	:=$(call as-option,-Wa$(comma)-mimplicit-it=always,-Wa$(comma)-mauto-it)
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
-- 
1.7.11.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
