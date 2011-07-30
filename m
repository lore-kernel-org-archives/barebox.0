Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn0KG-0001jB-FI
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 03:34:57 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id CBC44FF9FB9
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 05:35:45 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 05:17:03 +0200
Message-Id: <1311995831-25350-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 15/23] edb93xx: switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/edb93xx/edb93xx.c |   25 +++++++------------------
 1 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index b169db6..7f9e647 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -34,15 +34,6 @@
 
 #define DEVCFG_U1EN (1 << 18)
 
-/*
- * Up to 32MiB NOR type flash, connected to
- * CS line 6, data width is 16 bit
- */
-static struct device_d eth_dev = {
-	.id	  = -1,
-	.name     = "ep93xx_eth",
-};
-
 static int ep93xx_devices_init(void)
 {
 	struct device_d *sdram_dev;
@@ -81,7 +72,11 @@ static int ep93xx_devices_init(void)
 	armlinux_add_dram(sdram_dev);
 #endif
 
-	register_device(&eth_dev);
+	/*
+	 * Up to 32MiB NOR type flash, connected to
+	 * CS line 6, data width is 16 bit
+	 */
+	add_generic_device("ep93xx_eth", -1, NULL, 0, 0, IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)CONFIG_EP93XX_SDRAM_BANK0_BASE + 0x100);
 
@@ -92,13 +87,6 @@ static int ep93xx_devices_init(void)
 
 device_initcall(ep93xx_devices_init);
 
-static struct device_d edb93xx_serial_device = {
-	.id	  = -1,
-	.name     = "pl010_serial",
-	.map_base = UART1_BASE,
-	.size     = 4096,
-};
-
 static int edb93xx_console_init(void)
 {
 	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
@@ -117,7 +105,8 @@ static int edb93xx_console_init(void)
 	writel(0xAA, &syscon->sysswlock);
 	writel(value, &syscon->devicecfg);
 
-	register_device(&edb93xx_serial_device);
+	add_generic_device("pl010_serial", -1, NULL, UART1_BASE, 4096,
+			   IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
