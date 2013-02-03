Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Eb-0000ZC-GN
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:15 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2EFBC104EACA
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:14 +0100
Message-Id: <1359904236-11622-14-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 14/36] ARM versatile boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Only one board, the qemu based Versatile/PB. Uses hardcoded SDRAM settings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                     |    2 ++
 arch/arm/boards/versatile/Makefile   |    3 ++-
 arch/arm/boards/versatile/lowlevel.c |   10 ++++++++++
 3 files changed, 14 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/versatile/lowlevel.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index dcd48a9..79f797e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -123,6 +123,8 @@ config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select CPU_ARM926T
 	select GPIOLIB
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_TEGRA
 	bool "Nvidia Tegra-based boards"
diff --git a/arch/arm/boards/versatile/Makefile b/arch/arm/boards/versatile/Makefile
index a17aed3..9dc6869 100644
--- a/arch/arm/boards/versatile/Makefile
+++ b/arch/arm/boards/versatile/Makefile
@@ -1,2 +1,3 @@
-
 obj-$(CONFIG_MACH_VERSATILEPB) += versatilepb.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
new file mode 100644
index 0000000..3956347
--- /dev/null
+++ b/arch/arm/boards/versatile/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(0x0, SZ_64M, 0);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
