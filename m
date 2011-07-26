Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f170.google.com ([209.85.215.170])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlnv9-0003GE-Cn
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 20:08:04 +0000
Received: by eyd10 with SMTP id 10so1591113eyd.29
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 13:08:01 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Tue, 26 Jul 2011 22:07:54 +0200
Message-Id: <1311710877-13004-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1311710877-13004-1-git-send-email-franck.jullien@gmail.com>
References: <1311710877-13004-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/4] nios2/generic.c: Add resources for altera TSE
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

This patch adds resources for the Altera TSE driver as
this driver has been moved to resources usage.

The serial device also uses resources declared with the helps
of add_generic_device.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/boards/generic/generic.c |   31 ++++++++++++++++++++++---------
 1 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 089715b..49c1d7c 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -6,20 +6,32 @@
 
 static int phy_address = 1;
 
+static struct resource mac_resources[] = {
+	[0] = {
+		.start	= NIOS_SOPC_TSE_BASE,
+		.size	= 0x400,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= NIOS_SOPC_SGDMA_RX_BASE,
+		.size	= 0x40,
+		.flags	= IORESOURCE_MEM,
+	},
+	[2] = {
+		.start	= NIOS_SOPC_SGDMA_TX_BASE,
+		.size	= 0x40,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
 static struct device_d mac_dev = {
 	.id            = -1,
 	.name          = "altera_tse",
-	.map_base      = NIOS_SOPC_TSE_BASE,
-	.size          = 0x00000400,
+	.num_resources = ARRAY_SIZE(mac_resources),
+	.resource      = mac_resources,
 	.platform_data = &phy_address,
 };
 
-static struct device_d altera_serial_device = {
-	.id       = -1,
-	.name     = "altera_serial",
-	.map_base = NIOS_SOPC_UART_BASE,
-};
-
 /*
 static struct device_d epcs_flash_device = {
 	.id       = -1,
@@ -49,7 +61,8 @@ device_initcall(generic_devices_init);
 
 static int altera_console_init(void)
 {
-	register_device(&altera_serial_device);
+	add_generic_device("altera_serial", -1, NULL, NIOS_SOPC_UART_BASE, 0x20,
+			   IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
