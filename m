Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4wy8-00041S-PG
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 17:15:06 +0000
Received: from mail401.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0E156DC17F0
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 18:25:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 18:13:54 +0100
Message-Id: <1360602834-12373-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360602834-12373-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130211171031.GZ19322@game.jcrosoft.org>
 <1360602834-12373-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] highbank: add l2x0 support
To: barebox@lists.infradead.org

not enable as on qemu this generate a undefined instruction exception

Cc: Rob Herring <rob.herring@calxeda.com
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                    |    1 +
 arch/arm/mach-highbank/Makefile     |    1 +
 arch/arm/mach-highbank/cache-l2x0.c |   45 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-highbank/core.h       |    2 ++
 arch/arm/mach-highbank/smc.S        |   27 +++++++++++++++++++++
 5 files changed, 76 insertions(+)
 create mode 100644 arch/arm/mach-highbank/cache-l2x0.c
 create mode 100644 arch/arm/mach-highbank/core.h
 create mode 100644 arch/arm/mach-highbank/smc.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c10b9da..2ff544e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -52,6 +52,7 @@ config ARCH_EP93XX
 config ARCH_HIGHBANK
 	bool "Calxeda Highbank"
 	select HAS_DEBUG_LL
+	select ARCH_HAS_L2X0
 	select CPU_V7
 	select ARM_AMBA
 	select AMBA_SP804
diff --git a/arch/arm/mach-highbank/Makefile b/arch/arm/mach-highbank/Makefile
index 3f01cbb..6a7330f 100644
--- a/arch/arm/mach-highbank/Makefile
+++ b/arch/arm/mach-highbank/Makefile
@@ -1,3 +1,4 @@
 obj-y += core.o
 obj-y += devices.o
 obj-y += reset.o
+obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o smc.o
diff --git a/arch/arm/mach-highbank/cache-l2x0.c b/arch/arm/mach-highbank/cache-l2x0.c
new file mode 100644
index 0000000..f1e39dc
--- /dev/null
+++ b/arch/arm/mach-highbank/cache-l2x0.c
@@ -0,0 +1,45 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+
+#include <asm/mmu.h>
+#include <asm/cache-l2x0.h>
+
+#include "core.h"
+
+static void highbank_l2x0_disable(void)
+{
+	/* Disable PL310 L2 Cache controller */
+	highbank_smc1(0x102, 0x0);
+}
+
+static int highbank_l2x0_init(void)
+{
+	/* Enable PL310 L2 Cache controller */
+	highbank_smc1(0x102, 0x1);
+	l2x0_init(IOMEM(0xfff12000), 0, ~0UL);
+	outer_cache.disable = highbank_l2x0_disable;
+
+	return 0;
+}
+postmmu_initcall(highbank_l2x0_init);
diff --git a/arch/arm/mach-highbank/core.h b/arch/arm/mach-highbank/core.h
new file mode 100644
index 0000000..e3f19b2
--- /dev/null
+++ b/arch/arm/mach-highbank/core.h
@@ -0,0 +1,2 @@
+
+extern void highbank_smc1(int fn, int arg);
diff --git a/arch/arm/mach-highbank/smc.S b/arch/arm/mach-highbank/smc.S
new file mode 100644
index 0000000..b2118b4
--- /dev/null
+++ b/arch/arm/mach-highbank/smc.S
@@ -0,0 +1,27 @@
+/*
+ * Copied from omap44xx-smc.S Copyright (C) 2010 Texas Instruments, Inc.
+ * Copyright 2012 Calxeda, Inc.
+ *
+ * This program is free software,you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/linkage.h>
+
+/*
+ * This is common routine to manage secure monitor API
+ * used to modify the PL310 secure registers.
+ * 'r0' contains the value to be modified and 'r12' contains
+ * the monitor API number.
+ * Function signature : void highbank_smc1(u32 fn, u32 arg)
+ */
+
+ENTRY(highbank_smc1)
+	stmfd	sp!, {r4-r11, lr}
+	mov	r12, r0
+	mov	r0, r1
+	dsb
+	smc	#0
+	ldmfd	sp!, {r4-r11, pc}
+ENDPROC(highbank_smc1)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
