Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dejCI-0003rr-Ej
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 14:40:07 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Mon,  7 Aug 2017 16:39:26 +0200
Message-Id: <20170807143927.1641-12-linux@rempel-privat.de>
In-Reply-To: <20170807143927.1641-1-linux@rempel-privat.de>
References: <20170807143927.1641-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 12/13] MIPS: ath79: add barebox update handler
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Most of ar93xx SoCs seem to work only with spi.
spifash handler should be enough for now.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/mach-ath79/Makefile |  1 +
 arch/mips/mach-ath79/bbu.c    | 28 ++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 arch/mips/mach-ath79/bbu.c

diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
index f3cc6684b..3772daeba 100644
--- a/arch/mips/mach-ath79/Makefile
+++ b/arch/mips/mach-ath79/Makefile
@@ -1 +1,2 @@
 obj-y += reset.o
+obj-y += bbu.o
diff --git a/arch/mips/mach-ath79/bbu.c b/arch/mips/mach-ath79/bbu.c
new file mode 100644
index 000000000..701b5752e
--- /dev/null
+++ b/arch/mips/mach-ath79/bbu.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (c) 2017 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <bbu.h>
+#include <init.h>
+
+static int ath79_init_bbu(void)
+{
+	bbu_register_std_file_update("barebox", BBU_HANDLER_FLAG_DEFAULT,
+				     "/dev/spiflash.barebox",
+				     filetype_mips_barebox);
+
+	return 0;
+}
+postcore_initcall(ath79_init_bbu);
+
+
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
