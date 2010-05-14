Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCkHr-000118-3T
	for barebox@lists.infradead.org; Fri, 14 May 2010 02:06:03 +0000
Received: by mail-pw0-f49.google.com with SMTP id 6so1094115pwj.36
	for <barebox@lists.infradead.org>; Thu, 13 May 2010 19:06:02 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 14 May 2010 12:15:19 +1000
Message-Id: <1273803319-24561-6-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273803319-24561-5-git-send-email-marc@cpdesign.com.au>
References: <1273803319-24561-1-git-send-email-marc@cpdesign.com.au>
	<1273803319-24561-2-git-send-email-marc@cpdesign.com.au>
	<1273803319-24561-3-git-send-email-marc@cpdesign.com.au>
	<1273803319-24561-4-git-send-email-marc@cpdesign.com.au>
	<1273803319-24561-5-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 5/5] imx35pdk: Detect and set silicon and board revision for
	boot params.
To: barebox@lists.infradead.org

The kernel for the imx35 pdk doesn't do any detection for board and chip revision. This patch passes the info to the kernel so that v2 boards/chips boot properly.

imx35pdk: make COMPARE pad a GPIO1_5 output

This pad is an interrupt source, active low for one of the external ICs.

fix up/remove unnecessary white space.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 board/freescale-mx35-3-stack/3stack.c |   52 +++++++++++++++++++++++++++++---
 1 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index d09de65..9a66976 100644
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
 
@@ -246,6 +280,8 @@ static struct pad_desc f3s_pads[] = {
 	MX35_PAD_I2C1_DAT__I2C1_SDA,
 
 	MX35_PAD_WDOG_RST__GPIO1_6,
+	MX35_PAD_COMPARE__GPIO1_5,
+
 	/* Display */
 	MX35_PAD_LD0__IPU_DISPB_DAT_0,
 	MX35_PAD_LD1__IPU_DISPB_DAT_1,
@@ -272,7 +308,6 @@ static struct pad_desc f3s_pads[] = {
 	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
 	MX35_PAD_D3_REV__IPU_DISPB_D3_REV,
 	MX35_PAD_D3_CLS__IPU_DISPB_D3_CLS,
-	
 };
 
 static int f3s_console_init(void)
@@ -373,13 +408,16 @@ static int f3s_get_rev(struct mc13892 *mc13892)
 	if (rev == 0x00ffffff)
 		return -ENODEV;
 
-	return ((rev >> 6) & 0x7) ? 20 : 10;
+	return ((rev >> 6) & 0x7) ? MX35PDK_BOARD_REV_2 : MX35PDK_BOARD_REV_1;
 }
 
 static int f3s_pmic_init_v2(struct mc13892 *mc13892)
 {
 	int err = 0;
 
+	/* COMPARE pin (GPIO1_5) as output and set high */
+	gpio_direction_output( 32*0 + 5 , 1);
+
 	err |= mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x03, 0x03);
 	err |= mc13892_set_bits(mc13892, MC13892_REG_MODE_0, 0x01, 0x01);
 	if (err)
@@ -420,16 +458,18 @@ static int f3s_pmic_init(void)
 
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
@@ -439,6 +479,8 @@ static int f3s_pmic_init(void)
 
 	f3s_pmic_init_all(mc9sdz60);
 
+	armlinux_set_revision(imx35_3ds_system_rev);
+
 	return 0;
 }
 
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
