Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUB-0003z0-7c
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:49 +0000
Received: by wmdw130 with SMTP id w130so31970910wmd.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:21 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:35:57 +0100
Message-Id: <1448048172-10080-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 04/19] arm: pxa: Add clock for Zylonite NFC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Add a clock with clk_add_physbase for the NAND flash controller on
Zylonite board.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/zylonite/board.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
index 2caadbcecc37..2ff08b79345f 100644
--- a/arch/arm/boards/zylonite/board.c
+++ b/arch/arm/boards/zylonite/board.c
@@ -28,6 +28,8 @@
 #include <net/smc91111.h>
 #include <platform_data/mtd-nand-mrvl.h>
 #include <pwm.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
 #include <linux/sizes.h>
 
 #include <mach/devices.h>
@@ -60,11 +62,16 @@ static mfp_cfg_t pxa310_mfp_cfg[] = {
 
 static int zylonite_devices_init(void)
 {
+	struct clk *clk;
+
 	armlinux_set_architecture(MACH_TYPE_ZYLONITE);
 	pxa_add_uart((void *)0x40100000, 0);
 	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL,
 			   0x14000300, 0x100000, IORESOURCE_MEM,
 			   &smsc91x_pdata);
+	clk = clk_get_sys("nand", NULL);
+	if (!IS_ERR(clk))
+		clkdev_add_physbase(clk, 0x43100000, NULL);
 	add_generic_device("mrvl_nand", DEVICE_ID_DYNAMIC, NULL,
 			   0x43100000, 0x1000, IORESOURCE_MEM, &nand_pdata);
 	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
