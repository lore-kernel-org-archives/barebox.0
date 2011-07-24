Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GB-0002v5-PA
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:34 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 3B884FFA307
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:49:05 +0200
Message-Id: <1311518949-6990-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110724144441.GA10295@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 08/12] nomadik: switch to add_generic_device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/setup.c |   18 +--------------
 arch/arm/mach-nomadik/8815.c    |   42 +++++++-------------------------------
 2 files changed, 10 insertions(+), 50 deletions(-)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index b7fa50a..da6be93 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -33,21 +33,6 @@
 #include <mach/nand.h>
 #include <mach/fsmc.h>
 
-static struct resource nhk8815_network_resources[] = {
-	[0] = {
-		.start	= 0x34000300,
-		.size	= 16,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d nhk8815_network_dev = {
-	.id = -1,
-	.name = "smc91c111",
-	.num_resources	= ARRAY_SIZE(nhk8815_network_resources),
-	.resource	= nhk8815_network_resources,
-};
-
 static int nhk8815_nand_init(void)
 {
 	/* FSMC setup for nand chip select (8-bit nand in 8815NHK) */
@@ -104,7 +89,8 @@ static int nhk8815_devices_init(void)
 	writel(0x0000305b, FSMC_BCR(1));
 	writel(0x00033f33, FSMC_BTR(1));
 
-	register_device(&nhk8815_network_dev);
+	add_generic_device("smc91c111", -1, NULL, 0x34000300, 16,
+			   IORESOURCE_MEM, NULL);
 
 	register_device(&nhk8815_nand_device);
 
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 9df32a3..f2b8fd0 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -40,46 +40,20 @@ void st8815_add_device_sdram(u32 size)
 	armlinux_add_dram(sdram_dev);
 }
 
-static struct resource uart0_serial_resources[] = {
-	[0] = {
-		.start	= NOMADIK_UART0_BASE,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart0_serial_device = {
-	.id = 0,
-	.name = "uart-pl011",
-	.num_resources	= ARRAY_SIZE(uart0_serial_resources),
-	.resource	= uart0_serial_resources,
-};
-
-static struct resource uart1_serial_resources[] = {
-	[0] = {
-		.start	= NOMADIK_UART1_BASE,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart1_serial_device = {
-	.id = 1,
-	.name = "uart-pl011",
-	.num_resources	= ARRAY_SIZE(uart1_serial_resources),
-	.resource	= uart1_serial_resources,
-};
-
 void st8815_register_uart(unsigned id)
 {
+	resource_size_t start;
+	struct device_d *dev;
+
 	switch (id) {
 	case 0:
-		nmdk_clk_create(&st8815_clk_48, dev_name(&uart0_serial_device));
-		register_device(&uart0_serial_device);
+		start = NOMADIK_UART1_BASE;
 		break;
 	case 1:
-		nmdk_clk_create(&st8815_clk_48, dev_name(&uart1_serial_device));
-		register_device(&uart1_serial_device);
+		start = NOMADIK_UART1_BASE;
 		break;
 	}
+	dev = add_generic_device("uart-pl011", id, NULL, start, 4096,
+			   IORESOURCE_MEM, NULL);
+	nmdk_clk_create(&st8815_clk_48, dev_name(dev));
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
