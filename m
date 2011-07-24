Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GB-0002vJ-Oy
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:31 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 0FD37FFA2FD
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:49:04 +0200
Message-Id: <1311518949-6990-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/12] versatile: switch to add_generic_device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/versatile/versatilepb.c |   10 +-----
 arch/arm/mach-versatile/core.c          |   48 ++++++++-----------------------
 2 files changed, 14 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 830be93..fdd77e5 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -40,13 +40,6 @@ static int vpb_console_init(void)
 }
 console_initcall(vpb_console_init);
 
-static struct device_d smc911x_dev = {
-	.id		= -1,
-	.name		= "smc91c111",
-	.map_base	= VERSATILE_ETH_BASE,
-	.size		= 64 * 1024,
-};
-
 static int vpb_devices_init(void)
 {
 	versatile_add_sdram(64 * 1024 *1024);
@@ -55,7 +48,8 @@ static int vpb_devices_init(void)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
 
-	register_device(&smc911x_dev);
+	add_generic_device("smc91c111", -1, NULL, VERSATILE_ETH_BASE, 64 * 1024,
+			   IORESOURCE_MEM, NULL);
 
 	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
 	armlinux_set_bootparams((void *)(0x00000100));
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 63cf4a5..249d97a 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -51,34 +51,6 @@ void versatile_add_sdram(u32 size)
 	armlinux_add_dram(sdram_dev);
 }
 
-static struct device_d uart0_serial_device = {
-	.id = 0,
-	.name = "uart-pl011",
-	.map_base = VERSATILE_UART0_BASE,
-	.size = 4096,
-};
-
-static struct device_d uart1_serial_device = {
-	.id = 1,
-	.name = "uart-pl011",
-	.map_base = VERSATILE_UART1_BASE,
-	.size = 4096,
-};
-
-static struct device_d uart2_serial_device = {
-	.id = 2,
-	.name = "uart-pl011",
-	.map_base = VERSATILE_UART2_BASE,
-	.size = 4096,
-};
-
-static struct device_d uart3_serial_device = {
-	.id = 3,
-	.name = "uart-pl011",
-	.map_base = VERSATILE_UART3_BASE,
-	.size = 4096,
-};
-
 struct clk {
 	unsigned long rate;
 };
@@ -178,24 +150,28 @@ core_initcall(vpb_clocksource_init);
 
 void versatile_register_uart(unsigned id)
 {
+	resource_size_t start;
+	struct device_d *dev;
+
 	switch (id) {
 	case 0:
-		vpb_clk_create(&ref_clk_24, dev_name(&uart0_serial_device));
-		register_device(&uart0_serial_device);
+		start = VERSATILE_UART0_BASE;
 		break;
 	case 1:
-		vpb_clk_create(&ref_clk_24, dev_name(&uart1_serial_device));
-		register_device(&uart1_serial_device);
+		start = VERSATILE_UART1_BASE;
 		break;
 	case 2:
-		vpb_clk_create(&ref_clk_24, dev_name(&uart2_serial_device));
-		register_device(&uart2_serial_device);
+		start = VERSATILE_UART2_BASE;
 		break;
 	case 3:
-		vpb_clk_create(&ref_clk_24, dev_name(&uart3_serial_device));
-		register_device(&uart3_serial_device);
+		start = VERSATILE_UART3_BASE;
 		break;
+	default:
+		return;
 	}
+	dev = add_generic_device("uart-pl011", id, NULL, start, 4096,
+			   IORESOURCE_MEM, NULL);
+	vpb_clk_create(&ref_clk_24, dev_name(dev));
 }
 
 void __noreturn reset_cpu (unsigned long ignored)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
