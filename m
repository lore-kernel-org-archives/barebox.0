Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamE-00027Q-Rx
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:17 +0200
Message-Id: <1350507817-7819-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/28] ARM i.MXs boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

All boards use hardcoded SDRAM addresses, copied from the board init file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
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
 arch/arm/boards/karo-tx28/lowlevel.c             |   11 +++++++++++
 11 files changed, 76 insertions(+)
 create mode 100644 arch/arm/boards/chumby_falconwing/lowlevel.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx23-evk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx28-evk/lowlevel.c
 create mode 100644 arch/arm/boards/imx233-olinuxino/lowlevel.c
 create mode 100644 arch/arm/boards/karo-tx28/lowlevel.c

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
index 75f0020..ec3f601 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/Makefile
+++ b/arch/arm/boards/crystalfontz-cfa10036/Makefile
@@ -1 +1,3 @@
 obj-y += cfa10036.o
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
