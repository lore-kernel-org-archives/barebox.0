Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gktc7-0001Ns-KQ
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 16:36:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 19 Jan 2019 17:36:46 +0100
Message-Id: <20190119163647.9119-4-o.rempel@pengutronix.de>
In-Reply-To: <20190119163647.9119-1-o.rempel@pengutronix.de>
References: <20190119163647.9119-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 4/5] MIPS: ath79: add spi trap
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/mach-ath79/Makefile                  |  2 ++
 .../mips/mach-ath79/lowlevel_ar9331_spi_trap.S | 18 ++++++++++++++++++
 images/Makefile.ath79                          |  4 ++++
 3 files changed, 24 insertions(+)
 create mode 100644 arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S

diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
index b827b363cf..c12444ff47 100644
--- a/arch/mips/mach-ath79/Makefile
+++ b/arch/mips/mach-ath79/Makefile
@@ -1,3 +1,5 @@
+lwl-y += lowlevel_ar9331_spi_trap.o
+
 obj-y += reset.o
 obj-y += bbu.o
 obj-y += art.o
diff --git a/arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S b/arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S
new file mode 100644
index 0000000000..eb51f7366b
--- /dev/null
+++ b/arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
+ */
+
+#define BOARD_PBL_START start_ar9331_spi_trap
+
+#include <mach/debug_ll.h>
+#include <asm/asm.h>
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <asm/pbl_nmon.h>
+
+ENTRY_FUNCTION(BOARD_PBL_START)
+
+	/* nothing should be done here */
+
+ENTRY_FUNCTION_SRAM_END
diff --git a/images/Makefile.ath79 b/images/Makefile.ath79
index c7e97f0ac3..181f951595 100644
--- a/images/Makefile.ath79
+++ b/images/Makefile.ath79
@@ -1,3 +1,7 @@
+pblb-$(CONFIG_SOC_QCA_AR9331) += start_ar9331_spi_trap
+FILE_barebox-ar9331-spi-trap.img = start_ar9331_spi_trap.pblb
+image-$(CONFIG_SOC_QCA_AR9331) += barebox-ar9331-spi-trap.img
+
 pblb-$(CONFIG_BOARD_8DEVICES_LIMA) += start_8devices_lima
 FILE_barebox-8devices-lima.img = start_8devices_lima.pblb
 image-$(CONFIG_BOARD_8DEVICES_LIMA) += barebox-8devices-lima.img
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
