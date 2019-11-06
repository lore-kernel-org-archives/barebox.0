Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFTy-000263-6T
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:11:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:11:46 +0100
Message-Id: <20191106071155.26389-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/10] commands: regulator: move implementation to regulator
 core
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de

In preparation for teaching the regulator command how to enable and
disable regulators, move the regulator command implementation to the
regulator core, so the internal interfaces for iterating through the
list of available regulators can be more easily used.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Makefile        |  1 -
 commands/regulator.c     | 34 ----------------------------------
 drivers/regulator/core.c | 21 +++++++++++++++++----
 3 files changed, 17 insertions(+), 39 deletions(-)
 delete mode 100644 commands/regulator.c

diff --git a/commands/Makefile b/commands/Makefile
index 2f0980185c2b..ffe4ec05832b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -106,7 +106,6 @@ obj-$(CONFIG_CMD_DRVINFO)	+= drvinfo.o
 obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
-obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
 obj-$(CONFIG_CMD_IMD)		+= imd.o
 obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
diff --git a/commands/regulator.c b/commands/regulator.c
deleted file mode 100644
index e0b704f88a24..000000000000
--- a/commands/regulator.c
+++ /dev/null
@@ -1,34 +0,0 @@
-/*
- * regulator command
- *
- * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <command.h>
-#include <regulator.h>
-
-static int do_regulator(int argc, char *argv[])
-{
-	regulators_print();
-
-	return 0;
-}
-
-BAREBOX_CMD_START(regulator)
-	.cmd		= do_regulator,
-	BAREBOX_CMD_DESC("list regulators")
-	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-BAREBOX_CMD_END
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 4ca035ae9476..591e44c15407 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -383,14 +383,27 @@ static void regulator_print_one(struct regulator_internal *ri)
 	}
 }
 
-/*
- * regulators_print - print informations about all regulators
- */
-void regulators_print(void)
+#ifdef CONFIG_CMD_REGULATOR
+
+#include <common.h>
+#include <command.h>
+#include <regulator.h>
+
+static int do_regulator(int argc, char *argv[])
 {
 	struct regulator_internal *ri;
 
 	printf("%-20s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
 	list_for_each_entry(ri, &regulator_list, list)
 		regulator_print_one(ri);
+
+	return 0;
 }
+
+BAREBOX_CMD_START(regulator)
+	.cmd		= do_regulator,
+	BAREBOX_CMD_DESC("list regulators")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+BAREBOX_CMD_END
+
+#endif
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
