Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qinbb-0005yF-1P
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:11:36 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id F3AC5FFA78D
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 15:11:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 18 Jul 2011 14:54:36 +0200
Message-Id: <1310993678-7563-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/10] nomadik: switch to all resource declaration to "struct
	resource"
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/setup.c |   11 +++++++++--
 arch/arm/mach-nomadik/8815.c    |   33 +++++++++++++++++++++++++++------
 2 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 9cb0fd0..3d08516 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -33,11 +33,18 @@
 #include <mach/nand.h>
 #include <mach/fsmc.h>
 
+static struct resource nhk8815_network_resources[] = {
+	[0] = {
+		.start	= 0x34000300,
+		.size	= 16,
+	},
+};
+
 static struct device_d nhk8815_network_dev = {
 	.id = -1,
 	.name = "smc91c111",
-	.map_base = 0x34000300,
-	.size = 16,
+	.num_resources	= ARRAY_SIZE(nhk8815_network_resources),
+	.resource	= nhk8815_network_resources,
 };
 
 static int nhk8815_nand_init(void)
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 5844c68..3969193 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -36,32 +36,53 @@ static struct memory_platform_data ram_pdata = {
 	.flags = DEVFS_RDWR,
 };
 
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.start	= 0x00000000,
+	},
+};
+
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = 0x00000000,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 	.platform_data = &ram_pdata,
 };
 
 void st8815_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	sdram_dev_resources[0].size = size;
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
+static struct resource uart0_serial_resources[] = {
+	[0] = {
+		.start	= NOMADIK_UART0_BASE,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id = 0,
 	.name = "uart-pl011",
-	.map_base = NOMADIK_UART0_BASE,
-	.size = 4096,
+	.num_resources	= ARRAY_SIZE(uart0_serial_resources),
+	.resource	= uart0_serial_resources,
+};
+
+static struct resource uart1_serial_resources[] = {
+	[0] = {
+		.start	= NOMADIK_UART1_BASE,
+		.size	= 4096,
+	},
 };
 
 static struct device_d uart1_serial_device = {
 	.id = 1,
 	.name = "uart-pl011",
-	.map_base = NOMADIK_UART1_BASE,
-	.size = 4096,
+	.num_resources	= ARRAY_SIZE(uart1_serial_resources),
+	.resource	= uart1_serial_resources,
 };
 
 void st8815_register_uart(unsigned id)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
