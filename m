Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYlMt-0003U3-5J
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 22:23:36 +0000
Received: by mail-wi0-f171.google.com with SMTP id c10so2644536wiw.0
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2012 14:23:32 -0800 (PST)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 14 Nov 2012 23:23:32 +0100
Message-Id: <1352931813-2817-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/2] nios2: use barebox_add_memory_bank in generic.c
To: barebox@lists.infradead.org

In the nios2 generic board generic.c file, use the
new barebox_add_memory_bank to init ram memory.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/boards/generic/generic.c |   11 +++++++++--
 1 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 66eb856..499d93b 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -3,6 +3,7 @@
 #include <driver.h>
 #include <partition.h>
 #include <fs.h>
+#include <memory.h>
 
 static int phy_address = 1;
 
@@ -32,11 +33,17 @@ static struct device_d mac_dev = {
 	.platform_data = &phy_address,
 };
 
+static int mem_init(void)
+{
+	barebox_add_memory_bank("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE);
+
+	return 0;
+}
+mem_initcall(mem_init);
+
 static int generic_devices_init(void)
 {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
-	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
-		       IORESOURCE_MEM_WRITEABLE);
 	platform_device_register(&mac_dev);
 	/*register_device(&epcs_flash_device);*/
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
