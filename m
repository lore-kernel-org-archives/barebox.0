Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqG1r-0006LZ-Qs
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 09:24:39 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 21 Mar 2017 10:24:11 +0100
Message-Id: <20170321092411.8844-8-o.rempel@pengutronix.de>
In-Reply-To: <20170321092411.8844-1-o.rempel@pengutronix.de>
References: <20170321092411.8844-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 7/7] add seed command
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/Kconfig  |  6 ++++++
 commands/Makefile |  1 +
 commands/seed.c   | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 55 insertions(+)
 create mode 100644 commands/seed.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 21d921268..c983b62d0 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2115,6 +2115,12 @@ config CMD_SPD_DECODE
 	help
 	  decode spd eeprom
 
+config CMD_SEED
+	tristate
+	prompt "seed"
+	help
+	  Seed the pseudo random number generator (PRNG)
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 601f15fc3..ab5902156 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -120,3 +120,4 @@ obj-$(CONFIG_CMD_DHRYSTONE)	+= dhrystone.o
 obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
 obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
+obj-$(CONFIG_CMD_SEED)		+= seed.o
diff --git a/commands/seed.c b/commands/seed.c
new file mode 100644
index 000000000..288b48b09
--- /dev/null
+++ b/commands/seed.c
@@ -0,0 +1,48 @@
+/*
+ * (c) 2017 Oleksij Rempel <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <stdlib.h>
+#include <linux/ctype.h>
+
+static int do_seed(int argc, char *argv[])
+{
+	if (argc > 1) {
+		if (isdigit(*argv[1])) {
+			srand(simple_strtoul(argv[1], NULL, 0));
+		} else {
+			printf("numerical parameter expected\n");
+			return 1;
+		}
+	}
+
+	/* running rand() will influence prng as well, so it is part of seeding */
+	rand();
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(seed)
+BAREBOX_CMD_HELP_TEXT("Seed the pseudo random number generator")
+BAREBOX_CMD_HELP_TEXT("Without a parameter the PRNG will be reexecuted")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(seed)
+	.cmd = do_seed,
+	BAREBOX_CMD_DESC("seed the PRNG")
+	BAREBOX_CMD_OPTS("[SEED]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_seed_help)
+BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
