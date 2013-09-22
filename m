Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNbxH-0003sp-0o
 for barebox@lists.infradead.org; Sun, 22 Sep 2013 05:11:36 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0BD1A1004A71
 for <barebox@lists.infradead.org>; Sun, 22 Sep 2013 07:11:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 22 Sep 2013 07:12:24 +0200
Message-Id: <1379826744-7499-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379826744-7499-1-git-send-email-plagnioj@jcrosoft.com>
References: <1379826744-7499-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2 v3] versatilepb: enable qemu fixup
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/versatile/versatilepb.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index ebf3695..3df59ba 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -28,6 +28,7 @@
 #include <environment.h>
 #include <partition.h>
 #include <sizes.h>
+#include <net/smc91111.h>
 
 static int vpb_console_init(void)
 {
@@ -47,6 +48,10 @@ static int vpb_mem_init(void)
 }
 mem_initcall(vpb_mem_init);
 
+static struct smc91c111_pdata net_pdata = {
+	.qemu_fixup = 1,
+};
+
 static int vpb_devices_init(void)
 {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
@@ -55,7 +60,7 @@ static int vpb_devices_init(void)
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
-			64 * 1024, IORESOURCE_MEM, NULL);
+			64 * 1024, IORESOURCE_MEM, &net_pdata);
 
 	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
 	armlinux_set_bootparams((void *)(0x00000100));
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
