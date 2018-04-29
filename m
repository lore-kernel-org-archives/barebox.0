Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fCm54-0008W1-6u
 for barebox@lists.infradead.org; Sun, 29 Apr 2018 13:09:33 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 29 Apr 2018 15:09:05 +0200
Message-Id: <20180429130907.20506-6-linux@rempel-privat.de>
In-Reply-To: <20180429130907.20506-1-linux@rempel-privat.de>
References: <20180429130907.20506-1-linux@rempel-privat.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 5/7] MIPS: ath79: add kexec support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Kconfig             |  1 +
 arch/mips/mach-ath79/Makefile |  1 +
 arch/mips/mach-ath79/reboot.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 44 insertions(+)
 create mode 100644 arch/mips/mach-ath79/reboot.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index c2c555dc3..2b549373a 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -73,6 +73,7 @@ config MACH_MIPS_ATH79
 	select CLKDEV_LOOKUP
 	select OFTREE
 	select GPIOLIB
+	select HAS_KEXEC
 
 config MACH_MIPS_BCM47XX
 	bool "Broadcom BCM47xx-based boards"
diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
index 3772daeba..9b8218dd6 100644
--- a/arch/mips/mach-ath79/Makefile
+++ b/arch/mips/mach-ath79/Makefile
@@ -1,2 +1,3 @@
 obj-y += reset.o
 obj-y += bbu.o
+obj-$(CONFIG_KEXEC) += reboot.o
diff --git a/arch/mips/mach-ath79/reboot.c b/arch/mips/mach-ath79/reboot.c
new file mode 100644
index 000000000..c207c58d3
--- /dev/null
+++ b/arch/mips/mach-ath79/reboot.c
@@ -0,0 +1,42 @@
+/*
+ * Copyright (C) 2018 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+#include <boot.h>
+#include <linux/reboot.h>
+#include <bootm.h>
+#include "../../../lib/kexec/kexec.h"
+#include <asm/io.h>
+
+int reboot(int cmd, void *opaque)
+{
+	if (cmd == LINUX_REBOOT_CMD_KEXEC) {
+		extern unsigned long reboot_code_buffer;
+		void (*kexec_code_buffer)(void);
+
+		shutdown_barebox();
+
+		kexec_code_buffer = phys_to_virt(reboot_code_buffer);
+
+		kexec_code_buffer();
+	}
+
+	return -1;
+}
+EXPORT_SYMBOL(reboot);
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
