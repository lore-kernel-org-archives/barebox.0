Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCNw0-0003sk-RA
	for barebox@lists.infradead.org; Thu, 13 May 2010 02:14:01 +0000
Received: by mail-px0-f177.google.com with SMTP id 1so418794pxi.36
	for <barebox@lists.infradead.org>; Wed, 12 May 2010 19:14:00 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 13 May 2010 12:47:01 +1000
Message-Id: <1273718822-16800-6-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-5-git-send-email-marc@cpdesign.com.au>
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-2-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-3-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-4-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-5-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 5/6] imx35pdk: Detect and set silicon and board revision for
	boot params.
To: barebox@lists.infradead.org

The kernel for the imx35 pdk doesn't do any detection for board and chip revision. This patch passes the info to the kernel so that v2 boards/chips boot properly.
---
 board/freescale-mx35-3-stack/3stack.c |   46 ++++++++++++++++++++++++++++++---
 1 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index d09de65..4dc25e6 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -47,11 +47,17 @@
 #include <mach/iomux-v3.h>
 #include <mach/pmic.h>
 #include <mach/imx-ipu-fb.h>
+#include <mach/generic.h>
 
 #include <i2c/i2c.h>
 #include <i2c/mc13892.h>
 #include <i2c/mc9sdz60.h>
 
+
+/* Board rev for the PDK 3stack */
+#define MX35PDK_BOARD_REV_1		0
+#define MX35PDK_BOARD_REV_2		1
+
 static struct device_d cfi_dev = {
 	.name		= "cfi_flash",
 	.map_base	= IMX_CS0_BASE,
@@ -144,6 +150,32 @@ static struct device_d imxfb_dev = {
 	.platform_data	= &ipu_fb_data,
 };
 
+/*
+ * Revision to be passed to kernel. The kernel provided
+ * by freescale relies on this.
+ *
+ * C --> CPU type
+ * S --> Silicon revision
+ * B --> Board rev
+ *
+ * 31    20     16     12    8      4     0
+ *        | Cmaj | Cmin | B  | Smaj | Smin|
+ *
+ * e.g 0x00035120 --> i.MX35, Cpu silicon rev 2.0, Board rev 2
+*/
+static unsigned int imx35_3ds_system_rev = 0x00035000;
+
+static void set_silicon_rev( int rev)
+{
+	imx35_3ds_system_rev = imx35_3ds_system_rev | (rev & 0xFF);
+}
+
+static void set_board_rev(int rev)
+{
+	imx35_3ds_system_rev =  (imx35_3ds_system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
+}
+
+
 static int f3s_devices_init(void)
 {
 	uint32_t reg;
@@ -181,6 +213,8 @@ static int f3s_devices_init(void)
 		break;
 	}
 
+	set_silicon_rev(imx_silicon_revision());
+
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	register_device(&i2c_dev);
 
@@ -373,7 +407,7 @@ static int f3s_get_rev(struct mc13892 *mc13892)
 	if (rev == 0x00ffffff)
 		return -ENODEV;
 
-	return ((rev >> 6) & 0x7) ? 20 : 10;
+	return ((rev >> 6) & 0x7) ? MX35PDK_BOARD_REV_2 : MX35PDK_BOARD_REV_1;
 }
 
 static int f3s_pmic_init_v2(struct mc13892 *mc13892)
@@ -420,16 +454,18 @@ static int f3s_pmic_init(void)
 
 	rev = f3s_get_rev(mc13892);
 	switch (rev) {
-	case 10:
+	case MX35PDK_BOARD_REV_1:
 		break;
-	case 20:
+	case MX35PDK_BOARD_REV_2:
 		f3s_pmic_init_v2(mc13892);
 		break;
 	default:
 		printf("FAILED to identify board revision!\n");
 		return 0;
 	}
-	printf("i.MX35 PDK CPU board version %d.%d\n", rev / 10, rev % 10);
+	
+	set_board_rev(rev);
+	printf("i.MX35 PDK CPU board version %d.\n", rev );
 
 	mc9sdz60 = mc9sdz60_get();
 	if (!mc9sdz60) {
@@ -438,6 +474,8 @@ static int f3s_pmic_init(void)
 	}
 
 	f3s_pmic_init_all(mc9sdz60);
+	
+	armlinux_set_revision(imx35_3ds_system_rev);
 
 	return 0;
 }
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
