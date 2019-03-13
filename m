Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h41Ys-0006QP-Po
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 10:56:42 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 Mar 2019 11:56:33 +0100
Message-Id: <20190313105635.22055-4-l.stach@pengutronix.de>
In-Reply-To: <20190313105635.22055-1-l.stach@pengutronix.de>
References: <20190313105635.22055-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: zii-common: fetch network config from SP
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

On both RDU1 and RDU2 the seat notwork configuration is stored in
a configuration EEPROM accessible via the RAVE SP. Add an initcall
to fetch this configuration and add it to the kernel command line.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-common/Makefile |  2 +-
 arch/arm/boards/zii-common/board.c  | 44 +++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zii-common/board.c

diff --git a/arch/arm/boards/zii-common/Makefile b/arch/arm/boards/zii-common/Makefile
index 057f2a89c647..fcc5cdf97dd5 100644
--- a/arch/arm/boards/zii-common/Makefile
+++ b/arch/arm/boards/zii-common/Makefile
@@ -1 +1 @@
-obj-y += switch-cmd.o pn-fixup.o
+obj-y += board.o switch-cmd.o pn-fixup.o
diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
new file mode 100644
index 000000000000..254b09a7a768
--- /dev/null
+++ b/arch/arm/boards/zii-common/board.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2019 Zodiac Inflight Innovation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <globalvar.h>
+#include <init.h>
+
+static int rdu_networkconfig(void)
+{
+	static char *rdu_netconfig;
+	struct device_d *sp_dev;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx51-rdu1"))
+		return 0;
+
+	sp_dev = get_device_by_name("sp");
+	if (!sp_dev) {
+		pr_warn("no sp device found, network config not available!\n");
+		return -ENODEV;
+	}
+
+	rdu_netconfig = basprintf("ip=%s:::%s::eth0:",
+				  dev_get_param(sp_dev, "ipaddr"),
+				  dev_get_param(sp_dev, "netmask"));
+
+	globalvar_add_simple_string("linux.bootargs.rdu_network",
+				    &rdu_netconfig);
+
+	return 0;
+}
+late_initcall(rdu_networkconfig);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
