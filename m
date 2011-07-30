Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn0KG-0001jC-FT
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 03:34:59 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 0D5E0FF9FC0
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 05:35:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 05:17:04 +0200
Message-Id: <1311995831-25350-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 16/23] netx: switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/netx/netx.c |   26 ++++----------------------
 1 files changed, 4 insertions(+), 22 deletions(-)

diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index f3be348..65681aa 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -34,22 +34,10 @@ struct netx_eth_platform_data eth0_data = {
 	.xcno = 0,
 };
 
-static struct device_d netx_eth_dev0 = {
-	.id		= -1,
-	.name		= "netx-eth",
-	.platform_data	= &eth0_data,
-};
-
 struct netx_eth_platform_data eth1_data = {
 	.xcno = 1,
 };
 
-static struct device_d netx_eth_dev1 = {
-	.id		= -1,
-	.name		= "netx-eth",
-	.platform_data	= &eth1_data,
-};
-
 static int netx_devices_init(void) {
 	struct device_d *sdram_dev;
 
@@ -58,8 +46,8 @@ static int netx_devices_init(void) {
 	sdram_dev = add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
-	register_device(&netx_eth_dev0);
-	register_device(&netx_eth_dev1);
+	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth0_data);
+	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth1_data);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 
@@ -76,13 +64,6 @@ static int netx_devices_init(void) {
 
 device_initcall(netx_devices_init);
 
-static struct device_d netx_serial_device = {
-	.id	  = -1,
-	.name     = "netx_serial",
-	.map_base = NETX_PA_UART0,
-	.size     = 0x40,
-};
-
 static int netx_console_init(void)
 {
 	/* configure gpio for serial */
@@ -91,7 +72,8 @@ static int netx_console_init(void)
 	*(volatile unsigned long *)(0x00100808) = 2;
 	*(volatile unsigned long *)(0x0010080c) = 2;
 
-	register_device(&netx_serial_device);
+	add_generic_device("netx_serial", -1, NULL, NETX_PA_UART0, 0x40,
+			   IORESOURCE_MEM, NULL);
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
