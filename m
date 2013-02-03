Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Ea-0000ZM-3e
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:06 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 637F8104EC32
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:17 +0100
Message-Id: <1359904236-11622-17-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 17/36] ARM raspberrypi: switch to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                        |    2 ++
 arch/arm/boards/raspberry-pi/Makefile   |    2 ++
 arch/arm/boards/raspberry-pi/lowlevel.c |   11 +++++++++++
 3 files changed, 15 insertions(+)
 create mode 100644 arch/arm/boards/raspberry-pi/lowlevel.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6ed9bf0..c7daebe 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -39,6 +39,8 @@ config ARCH_BCM2835
 	select COMMON_CLK
 	select CLOCKSOURCE_BCM2835
 	select ARM_AMBA
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
index 6ce5ede..825b30b 100644
--- a/arch/arm/boards/raspberry-pi/Makefile
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -1 +1,3 @@
 obj-$(CONFIG_MACH_RPI) += rpi.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
new file mode 100644
index 0000000..7a09eed
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/platform.h>
+
+void __naked reset(void)
+{
+        common_reset();
+        barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_128M, 0);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
