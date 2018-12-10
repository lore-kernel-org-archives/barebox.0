Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWLlR-0003zt-Pd
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 13:38:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gWLlG-00058i-96
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 14:38:14 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Dec 2018 14:38:14 +0100
Message-Id: <20181210133814.29219-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: rdu2: add command to reset network switch
To: barebox@lists.infradead.org

This command allows to reset the network switch on the DEB,
clearing any DSA configuration, which may still be present from
a prior boot.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/Makefile     |  2 +-
 arch/arm/boards/zii-imx6q-rdu2/switch-cmd.c | 49 +++++++++++++++++++++
 2 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/switch-cmd.c

diff --git a/arch/arm/boards/zii-imx6q-rdu2/Makefile b/arch/arm/boards/zii-imx6q-rdu2/Makefile
index c6285362f2ee..10dfba3a3cf3 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/Makefile
+++ b/arch/arm/boards/zii-imx6q-rdu2/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o
+obj-y += board.o switch-cmd.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-rdu2
diff --git a/arch/arm/boards/zii-imx6q-rdu2/switch-cmd.c b/arch/arm/boards/zii-imx6q-rdu2/switch-cmd.c
new file mode 100644
index 000000000000..bdba46fb3615
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/switch-cmd.c
@@ -0,0 +1,49 @@
+/*
+ * Copyright (C) 2018 Zodiac Inflight Innovation
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
+#include <common.h>
+#include <command.h>
+#include <i2c/i2c.h>
+
+static int do_rave_switch_reset(int argc, char *argv[])
+{
+	struct i2c_client client;
+	u8 reg;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return -ENODEV;
+
+	client.adapter = i2c_get_adapter(1);
+	if (!client.adapter)
+		return -ENODEV;
+
+	/* address of the switch watchdog microcontroller */
+	client.addr = 0x38;
+	reg = 0x78;
+	/* set switch reset time to 100ms */
+	i2c_write_reg(&client, 0x0a, &reg, 1);
+	/* reset the switch */
+	reg = 0x01;
+	i2c_write_reg(&client, 0x0d, &reg, 1);
+	/* issue dummy command to work around firmware bug */
+	i2c_read_reg(&client, 0x01, &reg, 1);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(rave_reset_switch)
+	.cmd		= do_rave_switch_reset,
+	BAREBOX_CMD_DESC("reset ethernet switch on RDU2")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+BAREBOX_CMD_END
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
