Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlRAY-0003u6-Jg
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 19:50:27 +0000
Received: by wyf23 with SMTP id 23so4015763wyf.36
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 12:50:23 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 25 Jul 2011 21:50:17 +0200
Message-Id: <1311623420-30234-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/4] nios2/generic.c: use add_generic_device helper
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/boards/generic/generic.c |   20 ++++----------------
 1 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 089715b..f424be5 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -6,20 +6,6 @@
 
 static int phy_address = 1;
 
-static struct device_d mac_dev = {
-	.id            = -1,
-	.name          = "altera_tse",
-	.map_base      = NIOS_SOPC_TSE_BASE,
-	.size          = 0x00000400,
-	.platform_data = &phy_address,
-};
-
-static struct device_d altera_serial_device = {
-	.id       = -1,
-	.name     = "altera_serial",
-	.map_base = NIOS_SOPC_UART_BASE,
-};
-
 /*
 static struct device_d epcs_flash_device = {
 	.id       = -1,
@@ -33,7 +19,8 @@ static int generic_devices_init(void)
 	add_cfi_flash_device(-1, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
 	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
 		       IORESOURCE_MEM_WRITEABLE);
-	register_device(&mac_dev);
+	add_generic_device("altera_tse", -1, NULL, NIOS_SOPC_TSE_BASE, 0x400,
+			   IORESOURCE_MEM, &phy_address);
 	/*register_device(&epcs_flash_device);*/
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
@@ -49,7 +36,8 @@ device_initcall(generic_devices_init);
 
 static int altera_console_init(void)
 {
-	register_device(&altera_serial_device);
+	add_generic_device("altera_serial", -1, NULL, NIOS_SOPC_UART_BASE, 0x20,
+			   IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
