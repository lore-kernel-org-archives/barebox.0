Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21EZ-0000Z2-Vw
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:02 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D4E27104EA5A
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:10 +0100
Message-Id: <1359904236-11622-10-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/36] ARM PXA boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

All boards use hardcoded base addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                       |    2 ++
 arch/arm/boards/mioa701/Makefile       |    2 ++
 arch/arm/boards/mioa701/lowlevel.c     |   10 ++++++++++
 arch/arm/boards/pcm027/lowlevel_init.S |    7 +++++--
 4 files changed, 19 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/lowlevel.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1e509a4..dd8f01e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -88,6 +88,8 @@ config ARCH_OMAP
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	select GENERIC_GPIO
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2440"
diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
index dcfc293..88c223a 100644
--- a/arch/arm/boards/mioa701/Makefile
+++ b/arch/arm/boards/mioa701/Makefile
@@ -1 +1,3 @@
 obj-y += board.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/mioa701/lowlevel.c b/arch/arm/boards/mioa701/lowlevel.c
new file mode 100644
index 0000000..6d48c97
--- /dev/null
+++ b/arch/arm/boards/mioa701/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(0xa0000000, SZ_64M, 0);
+}
diff --git a/arch/arm/boards/pcm027/lowlevel_init.S b/arch/arm/boards/pcm027/lowlevel_init.S
index cf5fcd9..b90682c 100644
--- a/arch/arm/boards/pcm027/lowlevel_init.S
+++ b/arch/arm/boards/pcm027/lowlevel_init.S
@@ -24,6 +24,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/pxa-regs.h>
 #include <mach/regs-ost.h>
 #include <mach/regs-intc.h>
@@ -452,5 +453,7 @@ initclks:
 	/* -------------------------------------------------------------------- */
 
 endlowlevel_init:
-	b board_init_lowlevel_return
-
+	mov	r0, #0xa0000000
+	mov	r1, #SZ_64M
+	mov	r2, #0
+	b	barebox_arm_entry
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
