Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMQg6-0002dZ-7T
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 21:52:27 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so1262431wgb.18
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 14:52:25 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Thu, 11 Oct 2012 23:52:07 +0200
Message-Id: <1349992331-22987-2-git-send-email-carlo.caione@gmail.com>
In-Reply-To: <1349992331-22987-1-git-send-email-carlo.caione@gmail.com>
References: <1349992331-22987-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 1/5] BCM2835: clocksource driver
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 drivers/clocksource/Kconfig   |  4 ++
 drivers/clocksource/Makefile  |  1 +
 drivers/clocksource/bcm2835.c | 92 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 97 insertions(+)
 create mode 100644 drivers/clocksource/bcm2835.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 9d6d293..09acdd7 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -2,6 +2,10 @@ config ARM_SMP_TWD
 	bool
 	depends on ARM && CPU_V7
 
+config CLOCKSOURCE_BCM2835
+	bool
+	depends on ARCH_BCM2835
+
 config CLOCKSOURCE_NOMADIK
 	bool
 	depends on ARM
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index bef465c..92d7c13 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
+obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
new file mode 100644
index 0000000..60085a9
--- /dev/null
+++ b/drivers/clocksource/bcm2835.c
@@ -0,0 +1,92 @@
+/*
+ * Author: Carlo Caione <carlo@carlocaione.org>
+ *
+ * Based on clocksource for nomadik
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+
+#include <common.h>
+#include <clock.h>
+#include <io.h>
+#include <init.h>
+#include <driver.h>
+#include <errno.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+static __iomem void *stc_base;
+
+static uint64_t stc_read_cycles(void)
+{
+	return readl(stc_base + 0x04);
+}
+
+static struct clocksource bcm2835_stc = {
+	.read = stc_read_cycles,
+	.mask = CLOCKSOURCE_MASK(32),
+};
+
+static int bcm2835_cs_probe(struct device_d *dev)
+{
+	static struct clk *stc_clk;
+	u32 rate;
+	int ret;
+
+	stc_clk = clk_get(dev, NULL);
+	if (IS_ERR(stc_clk)) {
+		ret = PTR_ERR(stc_clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(stc_clk);
+	if (ret) {
+		dev_err(dev, "clock failed to enable: %d\n", ret);
+		clk_put(stc_clk);
+		return ret;
+	}
+
+	rate = clk_get_rate(stc_clk);
+	stc_base = dev_request_mem_region(dev, 0);
+
+	clocks_calc_mult_shift(&bcm2835_stc.mult, &bcm2835_stc.shift, rate, NSEC_PER_SEC, 60);
+	init_clock(&bcm2835_stc);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id bcm2835_cs_dt_ids[] = {
+	{
+			.compatible = "bcm,bcm2835-cs",
+	}, {
+			/* sentinel */
+	}
+};
+
+static struct driver_d bcm2835_cs_driver = {
+	.name = "bcm2835-cs",
+	.probe = bcm2835_cs_probe,
+	.of_compatible = DRV_OF_COMPAT(bcm2835_cs_dt_ids),
+};
+
+static int bcm2835_cs_init(void)
+{
+	return platform_driver_register(&bcm2835_cs_driver);
+}
+coredevice_initcall(bcm2835_cs_init);
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
