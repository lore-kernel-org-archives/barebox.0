Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDaw-0006hk-PO
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:22:03 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B5EA5FFA680
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 09:23:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 09:02:15 +0200
Message-Id: <1335164539-2188-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120423065650.GM20601@game.jcrosoft.org>
References: <20120423065650.GM20601@game.jcrosoft.org>
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
Subject: [PATCH 06/10] ixp4xx: add generic board lowlevel_init
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-ixp4xx/Kconfig               |    3 +
 arch/arm/mach-ixp4xx/Makefile              |    2 +
 arch/arm/mach-ixp4xx/board_lowlevel_init.c |   56 ++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-ixp4xx/board_lowlevel_init.c

diff --git a/arch/arm/mach-ixp4xx/Kconfig b/arch/arm/mach-ixp4xx/Kconfig
index d92832c..f9388bf 100644
--- a/arch/arm/mach-ixp4xx/Kconfig
+++ b/arch/arm/mach-ixp4xx/Kconfig
@@ -1,5 +1,8 @@
 if ARCH_IXP4XX
 
+config IXP4XX_GENERIC_LOWLEVEL_INIT
+	bool
+
 choice
 	prompt "IXP4xx Board Type"
 
diff --git a/arch/arm/mach-ixp4xx/Makefile b/arch/arm/mach-ixp4xx/Makefile
index 9bb2e99..958de5e 100644
--- a/arch/arm/mach-ixp4xx/Makefile
+++ b/arch/arm/mach-ixp4xx/Makefile
@@ -4,3 +4,5 @@ obj-y += timer.o
 obj-y += reset.o
 obj-$(CONFIG_IXP4XX_QMGR) += qmgr.o
 obj-$(CONFIG_IXP4XX_NPE) += npe.o
+arch_board_lowlevel_init-$(CONFIG_IXP4XX_GENERIC_LOWLEVEL_INIT) = board_lowlevel_init.o
+obj-$(CONFIG_MACH_HAS_LOWLEVEL_INIT) += $(arch_board_lowlevel_init-y)
diff --git a/arch/arm/mach-ixp4xx/board_lowlevel_init.c b/arch/arm/mach-ixp4xx/board_lowlevel_init.c
new file mode 100644
index 0000000..061246d
--- /dev/null
+++ b/arch/arm/mach-ixp4xx/board_lowlevel_init.c
@@ -0,0 +1,56 @@
+/*
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/barebox-arm.h>
+#include <asm/io.h>
+#include <asm/system.h>
+#include <mach/ixp4xx-regs.h>
+
+static void inline delay(int x)
+{
+	while (x-- > 0)
+		barrier();
+}
+
+void __naked __bare_init board_init_lowlevel(void)
+{
+	int i;
+
+	IXP4XX_SDRAM_CONFIG = CONFIG_SDRAM_CONFIG;
+
+	/* disable refresh cycles */
+	IXP4XX_SDRAM_REFRESH = 0x0;
+
+	/* send NOP command */
+	IXP4XX_SDRAM_IR = 0x3;
+	delay(0x4000);
+
+	/* set SDRAM internal refresh */
+	IXP4XX_SDRAM_REFRESH = CONFIG_SDRAM_REFRESH;
+	delay(0x4000);
+
+	/* send precharge-all command to close all open banks */
+	IXP4XX_SDRAM_IR = 0x2;
+	delay(0x4000);
+
+	/* provide 8 auto-refresh cycles */
+	for (i = 0; i < 8; i++) {
+		IXP4XX_SDRAM_IR = 0x4;
+		delay(0x100);
+	}
+
+	/* set mode register in SDRAM */
+	IXP4XX_SDRAM_IR = CONFIG_SDRAM_MODE;
+	delay(0x4000);
+
+	/* send normal operation command */
+	IXP4XX_SDRAM_IR = 0x6;
+	delay(0x4000);
+
+	board_init_lowlevel_return();
+}
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
