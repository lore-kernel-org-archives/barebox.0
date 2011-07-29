Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmplD-0005xk-Op
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:18:06 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 1E67BFFA837
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:56 +0200
Message-Id: <1311955207-22372-19-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/23] ipe337: switch to resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/blackfin/boards/ipe337/ipe337.c |   20 ++++----------------
 1 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 4430f3b..ee642d1 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -5,13 +5,6 @@
 #include <partition.h>
 #include <fs.h>
 
-static struct device_d smc911x_dev = {
-	.id	  = -1,
-	.name     = "smc911x",
-	.map_base = 0x24000000,
-	.size     = 4096,
-};
-
 static int ipe337_devices_init(void) {
 	add_cfi_flash_device(-1, 0x20000000, 32 * 1024 * 1024, 0);
 	add_mem_device("ram0", 0x0, 128 * 1024 * 1024,
@@ -23,7 +16,8 @@ static int ipe337_devices_init(void) {
 	mdelay(100);
 	*pFIO0_FLAG_S = (1<<12);
 
-	register_device(&smc911x_dev);
+	add_generic_device("smc911x", -1, NULL, 0x24000000, 4096,
+			   IORESOURCE_MEM, NULL);
 
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x20000, 0x20000, PARTITION_FIXED, "env0");
@@ -35,16 +29,10 @@ static int ipe337_devices_init(void) {
 
 device_initcall(ipe337_devices_init);
 
-static struct device_d blackfin_serial_device = {
-	.id	  = -1,
-	.name     = "blackfin_serial",
-	.map_base = 0,
-	.size     = 4096,
-};
-
 static int blackfin_console_init(void)
 {
-	register_device(&blackfin_serial_device);
+	add_generic_device("blackfin_serial", -1, NULL, 0, 4096,
+			   IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
