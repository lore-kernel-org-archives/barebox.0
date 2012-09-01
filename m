Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7mvy-0006G5-Hk
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:36:19 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9CF66DC704B
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:41:28 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 14:36:29 +0200
Message-Id: <1346502990-21603-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346502990-21603-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901102248.GJ18708@game.jcrosoft.org>
 <1346502990-21603-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] amba-pl011: switch to amba bus
To: barebox@lists.infradead.org

switch as the same time the nomadik and versatile arch that use the driver.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-nomadik/8815.c   |    9 +++++----
 arch/arm/mach-versatile/core.c |    7 +++++--
 drivers/serial/amba-pl011.c    |   34 ++++++++++++++++++++++++----------
 3 files changed, 34 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index e385598..aecd9e0 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -25,6 +25,7 @@
 #include <mach/hardware.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <linux/amba/bus.h>
 
 #include "clock.h"
 
@@ -32,12 +33,15 @@ static struct clk st8815_clk_48 = {
        .rate = 48 * 1000 * 1000,
 };
 
+static struct clk st8815_dummy;
+
 void st8815_add_device_sdram(u32 size)
 {
 	arm_add_mem_device("ram0", 0x00000000, size);
 }
 
 static struct clk_lookup clocks_lookups[] = {
+	CLKDEV_CON_ID("apb_pclk", &st8815_dummy),
 	CLKDEV_DEV_ID("uart-pl0110", &st8815_clk_48),
 	CLKDEV_DEV_ID("uart-pl0111", &st8815_clk_48),
 };
@@ -53,7 +57,6 @@ postcore_initcall(st8815_clkdev_init);
 void st8815_register_uart(unsigned id)
 {
 	resource_size_t start;
-	struct device_d *dev;
 
 	switch (id) {
 	case 0:
@@ -63,7 +66,5 @@ void st8815_register_uart(unsigned id)
 		start = NOMADIK_UART1_BASE;
 		break;
 	}
-	dev = add_generic_device("uart-pl011", id, NULL, start, 4096,
-			   IORESOURCE_MEM, NULL);
-	nmdk_clk_create(&st8815_clk_48, dev_name(dev));
+	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
 }
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index bdf48f9..86cc755 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -34,6 +34,7 @@
 #include <linux/clkdev.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/amba/bus.h>
 
 #include <io.h>
 #include <asm/hardware/arm_timer.h>
@@ -51,6 +52,8 @@ struct clk {
 	unsigned long rate;
 };
 
+static struct clk ref_clk_dummy;
+
 static struct clk ref_clk_24 = {
 	.rate = 24000000,
 };
@@ -145,6 +148,7 @@ static int vpb_clocksource_init(void)
 core_initcall(vpb_clocksource_init);
 
 static struct clk_lookup clocks_lookups[] = {
+	CLKDEV_CON_ID("apb_pclk", &ref_clk_dummy),
 	CLKDEV_DEV_ID("uart-pl0110", &ref_clk_24),
 	CLKDEV_DEV_ID("uart-pl0111", &ref_clk_24),
 	CLKDEV_DEV_ID("uart-pl0112", &ref_clk_24),
@@ -179,8 +183,7 @@ void versatile_register_uart(unsigned id)
 	default:
 		return;
 	}
-	add_generic_device("uart-pl011", id, NULL, start, 4096,
-			   IORESOURCE_MEM, NULL);
+	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
 }
 
 void __noreturn reset_cpu (unsigned long ignored)
diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index f8c55c4..77f8c8a 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -35,6 +35,7 @@
 #include <linux/amba/serial.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/amba/bus.h>
 
 /*
  * We wrap our port structure around the generic console_device.
@@ -118,11 +119,8 @@ static int pl011_tstc(struct console_device *cdev)
 
 int pl011_init_port (struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
-	uart->base = dev_request_mem_region(dev, 0);
-
 	/*
 	 ** First, disable everything.
 	 */
@@ -154,19 +152,20 @@ int pl011_init_port (struct console_device *cdev)
 	return 0;
 }
 
-static int pl011_probe(struct device_d *dev)
+static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 {
 	struct amba_uart_port *uart;
 	struct console_device *cdev;
 
 	uart = xzalloc(sizeof(struct amba_uart_port));
-	uart->clk = clk_get(dev, NULL);
+	uart->clk = clk_get(&dev->dev, NULL);
+	uart->base = amba_get_mem_region(dev);
 
 	if (IS_ERR(uart->clk))
 		return PTR_ERR(uart->clk);
 
 	cdev = &uart->uart;
-	cdev->dev = dev;
+	cdev->dev = &dev->dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = pl011_tstc;
 	cdev->putc = pl011_putc;
@@ -182,14 +181,29 @@ static int pl011_probe(struct device_d *dev)
 	return 0;
 }
 
-static struct driver_d pl011_driver = {
-	.name = "uart-pl011",
-	.probe = pl011_probe,
+static struct amba_id pl011_ids[] = {
+	{
+		.id	= 0x00041011,
+		.mask	= 0x000fffff,
+	},
+	{
+		.id	= 0x00380802,
+		.mask	= 0x00ffffff,
+	},
+	{ 0, 0 },
+};
+
+struct amba_driver pl011_driver = {
+	.drv = {
+		.name = "uart-pl011",
+	},
+	.probe		= pl011_probe,
+	.id_table	= pl011_ids,
 };
 
 static int pl011_init(void)
 {
-	register_driver(&pl011_driver);
+	amba_driver_register(&pl011_driver);
 	return 0;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
