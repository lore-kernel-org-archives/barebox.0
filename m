Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUD-0003Ml-Un
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:16 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1675998wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:09 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:34 +0100
Message-Id: <4d701d3d.9009d80a.2cd3.5e85@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 20/54] Add arch/nios2/boards/generic/generic.c
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/boards/generic/generic.c

---
 arch/nios2/boards/generic/generic.c |   74 +++++++++++++++++++++++++++++++++++
 1 files changed, 74 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/boards/generic/generic.c

diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
new file mode 100644
index 0000000..4865de9
--- /dev/null
+++ b/arch/nios2/boards/generic/generic.c
@@ -0,0 +1,74 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <partition.h>
+#include <fs.h>
+
+static struct device_d cfi_dev = {
+        .id	  = -1,
+	.name     = "cfi_flash",
+	.map_base = NIOS_SOPC_FLASH_BASE,
+	.size     = NIOS_SOPC_FLASH_SIZE,
+};
+
+static struct device_d mac_dev = {
+        .id	  = -1,
+	.name     = "altera_tse",
+	.map_base = NIOS_SOPC_TSE_BASE,
+	.size     = 0x00000400,
+};
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d ram_dev = {
+        .id	  = -1,
+	.name     = "mem",
+	.map_base = NIOS_SOPC_MEMORY_BASE,
+	.size     = NIOS_SOPC_MEMORY_SIZE,
+	.platform_data = &ram_pdata,
+};
+
+static struct device_d altera_serial_device = {
+        .id	  = -1,
+	.name     = "altera_serial",
+	.map_base = NIOS_SOPC_UART_BASE,
+};
+
+/*
+static struct device_d epcs_flash_device = {
+        .id	  = -1,
+	.name     = "epcs_flash",
+	.map_base = NIOS_SOPC_EPCS_BASE,
+};
+*/
+
+static int comBoard_devices_init(void) {
+        
+	register_device(&cfi_dev);
+	register_device(&ram_dev);
+	register_device(&mac_dev);
+	//register_device(&epcs_flash_device);
+
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+
+	protect_file("/dev/env0", 1);
+
+	return 0;
+}
+
+device_initcall(comBoard_devices_init);
+
+
+static int altera_console_init(void) {
+        
+	register_device(&altera_serial_device);
+
+	return 0;
+}
+
+console_initcall(altera_console_init);
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
