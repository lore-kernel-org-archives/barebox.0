Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21EZ-0000Yl-Hv
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:06 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8936B104EA3E
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:07 +0100
Message-Id: <1359904236-11622-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/36] ARM MXS boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

All boards use hardcoded SDRAM addresses, copied from the board init file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                 |    2 ++
 arch/arm/boards/chumby_falconwing/Makefile       |    2 ++
 arch/arm/boards/chumby_falconwing/lowlevel.c     |   11 +++++++++++
 arch/arm/boards/crystalfontz-cfa10036/Makefile   |    2 ++
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c |   11 +++++++++++
 arch/arm/boards/freescale-mx23-evk/Makefile      |    2 ++
 arch/arm/boards/freescale-mx23-evk/lowlevel.c    |   11 +++++++++++
 arch/arm/boards/freescale-mx28-evk/Makefile      |    2 ++
 arch/arm/boards/freescale-mx28-evk/lowlevel.c    |   11 +++++++++++
 arch/arm/boards/imx233-olinuxino/Makefile        |    2 ++
 arch/arm/boards/imx233-olinuxino/lowlevel.c      |   11 +++++++++++
 arch/arm/boards/karo-tx28/Makefile               |    2 ++
 arch/arm/boards/karo-tx28/lowlevel.c             |   11 +++++++++++
 13 files changed, 80 insertions(+)
 create mode 100644 arch/arm/boards/chumby_falconwing/lowlevel.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx23-evk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx28-evk/lowlevel.c
 create mode 100644 arch/arm/boards/imx233-olinuxino/lowlevel.c
 create mode 100644 arch/arm/boards/karo-tx28/lowlevel.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cac3360..627c1b5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -64,6 +64,8 @@ config ARCH_IMX
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
 	select GENERIC_GPIO
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_NETX
 	bool "Hilscher NetX based"
diff --git a/arch/arm/boards/chumby_falconwing/Makefile b/arch/arm/boards/chumby_falconwing/Makefile
index 0bc79d9..360b55c 100644
--- a/arch/arm/boards/chumby_falconwing/Makefile
+++ b/arch/arm/boards/chumby_falconwing/Makefile
@@ -1 +1,3 @@
 obj-y = falconwing.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
new file mode 100644
index 0000000..df28ad4
--- /dev/null
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx23-regs.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, 0);
+}
diff --git a/arch/arm/boards/crystalfontz-cfa10036/Makefile b/arch/arm/boards/crystalfontz-cfa10036/Makefile
index 7e8d5e2..0b701ed 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/Makefile
+++ b/arch/arm/boards/crystalfontz-cfa10036/Makefile
@@ -1 +1,3 @@
 obj-y += cfa10036.o hwdetect.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
new file mode 100644
index 0000000..467194f
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx28-regs.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/freescale-mx23-evk/Makefile b/arch/arm/boards/freescale-mx23-evk/Makefile
index cffb561..9386603 100644
--- a/arch/arm/boards/freescale-mx23-evk/Makefile
+++ b/arch/arm/boards/freescale-mx23-evk/Makefile
@@ -1,2 +1,4 @@
 #
 obj-y := mx23-evk.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
new file mode 100644
index 0000000..0c7e665
--- /dev/null
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx23-regs.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, 0);
+}
diff --git a/arch/arm/boards/freescale-mx28-evk/Makefile b/arch/arm/boards/freescale-mx28-evk/Makefile
index 3e1f53b..2039610 100644
--- a/arch/arm/boards/freescale-mx28-evk/Makefile
+++ b/arch/arm/boards/freescale-mx28-evk/Makefile
@@ -1 +1,3 @@
 obj-y += mx28-evk.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
new file mode 100644
index 0000000..467194f
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx28-regs.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/imx233-olinuxino/Makefile b/arch/arm/boards/imx233-olinuxino/Makefile
index 6d71450..b8d9223 100644
--- a/arch/arm/boards/imx233-olinuxino/Makefile
+++ b/arch/arm/boards/imx233-olinuxino/Makefile
@@ -1 +1,3 @@
 obj-y = imx23-olinuxino.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
new file mode 100644
index 0000000..df28ad4
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx23-regs.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, 0);
+}
diff --git a/arch/arm/boards/karo-tx28/Makefile b/arch/arm/boards/karo-tx28/Makefile
index d80ba17..c90bf36 100644
--- a/arch/arm/boards/karo-tx28/Makefile
+++ b/arch/arm/boards/karo-tx28/Makefile
@@ -1,2 +1,4 @@
 obj-y += tx28.o
 obj-$(CONFIG_MACH_TX28STK5) += tx28-stk5.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
new file mode 100644
index 0000000..467194f
--- /dev/null
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx28-regs.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
