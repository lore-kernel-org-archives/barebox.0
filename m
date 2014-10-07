Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbVf3-00068I-N6
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003P9-7i
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004E3-6F
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:17 +0200
Message-Id: <1412691738-11145-19-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 18/19] MPC5125/WDG: add a watchdog driver
To: barebox@lists.infradead.org

This watchdog is always enabled after reset and can be configured only once.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/watchdog/Kconfig   |   6 ++
 drivers/watchdog/Makefile  |   1 +
 drivers/watchdog/mpc5125.c | 148 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 155 insertions(+)
 create mode 100644 drivers/watchdog/mpc5125.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 7f7b02e..4c57111 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -28,4 +28,10 @@ config WATCHDOG_JZ4740
 	help
 	  Hardware driver for the built-in watchdog timer on Ingenic jz4740 SoCs.
 
+config WATCHDOG_MPC5125
+	bool "MPC5125 SoC hardware watchdog"
+	depends on SOC_MPC5125
+	help
+	  Hardware driver for the built-in watchdog timer on MPC5125 SoCs.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 865fc47..b7aa549 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
 obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
 obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
+obj-$(CONFIG_WATCHDOG_MPC5125) += mpc5125.o
diff --git a/drivers/watchdog/mpc5125.c b/drivers/watchdog/mpc5125.c
new file mode 100644
index 0000000..7fefa21
--- /dev/null
+++ b/drivers/watchdog/mpc5125.c
@@ -0,0 +1,148 @@
+/*
+ * (c) 2014 Juergen Borleis <kernel@pengutronix.de>
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
+ *
+ * Note: this driver works for the MPC5125. It might work for the
+ * MPC512X SoCs as well, but is not tested yet.
+ */
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <errno.h>
+#include <malloc.h>
+#include <watchdog.h>
+#include <mach/clocks.h>
+
+/* WD register description */
+struct wdt {
+	u32 res0;
+	u32 swcrr; /* note: read often, write once */
+	u32 swcnr;
+	u16 res1;
+	u16 swsrr;
+};
+
+struct mpc5125_wd {
+	struct watchdog wd;
+	struct wdt *regs;
+	bool re_configured;
+};
+
+#define WDT_SWCRR_GET_SWTC(x) ((x) >> 16)
+#define WDT_SWCRR_SET_SWTC(x) ((x) << 16)
+#define WDT_SWCRR_SWEN (1 << 2)
+#define WDT_SWCRR_SWRI (1 << 1)
+#define WDT_SWCRR_SWPR (1 << 0)
+
+#define MPC5125_WDT_RESET1_MAGIC 0x556c
+#define MPC5125_WDT_RESET2_MAGIC 0xaa39
+
+#define MPC5125_WDT_PRESCALE 0x10000
+
+#define to_mpc5125_wd(h) container_of(h, struct mpc5125_wd, wd)
+
+static void mpc5125_wd_retrigger(struct mpc5125_wd *wd)
+{
+	out_be16(&wd->regs->swsrr, 0x556c);
+	out_be16(&wd->regs->swsrr, 0xaa39);
+}
+
+/* note: setting a new timeout is an irreversible step! */
+static int mpc5125_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct mpc5125_wd *pwd = (struct mpc5125_wd *)to_mpc5125_wd(wd);
+	unsigned cnt_val, time;
+	uint64_t new_cnt_val;
+	u32 swcrr;
+
+	/*
+	 * what does the user wants us to do?
+	 * - just retrigger?
+	 * - or re-programming to a different timout value?
+	 *
+	 * Due to the fact we can program the SWCRR register only once we
+	 * must detect a difference between the given timeout and the time
+	 * which is currently in use to have the latter case.
+	 * If the given timeout is "nealy" the same then currently used, just
+	 * a re-trigger should occure (first case).
+	 */
+	swcrr = in_be32(&pwd->regs->swcrr);
+	cnt_val = WDT_SWCRR_GET_SWTC(swcrr);
+
+	if (swcrr & WDT_SWCRR_SWPR)
+		time = (cnt_val * MPC5125_WDT_PRESCALE) / get_timebase_clock();
+	else
+		time = cnt_val / get_timebase_clock();
+
+	if (time != timeout) {
+		/* it seems the user wants a new timout value */
+		if (pwd->re_configured) {
+			pr_err("Cannot configure the watchdog twice. "
+					"Still sticked to %u seconds.\n", time);
+			return -EINVAL;
+		}
+		/*
+		 * we always need the prescaler enabled, because without it
+		 * the timeout is far below a second...
+		 */
+		new_cnt_val = timeout * get_timebase_clock();
+		if (new_cnt_val >= 0xffff0000) {
+			time = 0xffff0000 / get_timebase_clock();
+			pr_err("Invalid timout value. Max value is "
+							"%u seconds.\n", time);
+			return -EINVAL;
+		}
+		new_cnt_val /= MPC5125_WDT_PRESCALE;
+		out_be32(&pwd->regs->swcrr, WDT_SWCRR_SET_SWTC(new_cnt_val) |
+			WDT_SWCRR_SWPR | WDT_SWCRR_SWEN | WDT_SWCRR_SWRI);
+		pwd->re_configured = true;
+	}
+
+	mpc5125_wd_retrigger(pwd);
+
+	return 0;
+}
+
+static int mpc5125_wd_probe(struct device_d *dev)
+{
+	struct mpc5125_wd *priv;
+	int rc;
+
+	priv = xzalloc(sizeof(struct mpc5125_wd));
+	priv->regs = dev_request_mem_region(dev, 0);
+	priv->wd.set_timeout = mpc5125_watchdog_set_timeout;
+
+	rc = watchdog_register(&priv->wd);
+	if (rc != 0)
+		goto on_error;
+
+	dev->priv = priv;
+	return 0;
+
+on_error:
+	free(priv);
+	return rc;
+}
+
+static void mpc5125_wd_remove(struct device_d *dev)
+{
+	struct mpc5125_wd *priv= dev->priv;
+	watchdog_deregister(&priv->wd);
+	free(priv);
+}
+
+static struct driver_d mpc5125_wd_driver = {
+	.name   = "mpc5125wd",
+	.probe  = mpc5125_wd_probe,
+	.remove = mpc5125_wd_remove,
+};
+device_platform_driver(mpc5125_wd_driver);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
