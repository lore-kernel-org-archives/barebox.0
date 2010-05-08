Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OAYvB-00082L-Gt
	for barebox@lists.infradead.org; Sat, 08 May 2010 01:33:38 +0000
Received: by mail-vw0-f49.google.com with SMTP id 4so615183vws.36
	for <barebox@lists.infradead.org>; Fri, 07 May 2010 18:33:37 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sat,  8 May 2010 12:09:22 +1000
Message-Id: <1273284563-28645-3-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273284563-28645-2-git-send-email-marc@cpdesign.com.au>
References: <1273284563-28645-1-git-send-email-marc@cpdesign.com.au>
	<1273284563-28645-2-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 2/3] Detect CPU and board revision for freescale-mx35-3-stack
	and add to boot parameters
To: barebox@lists.infradead.org
Cc: Marc Reilly <marc@susedev1.rulztime>

From: Marc Reilly <marc@susedev1.rulztime>

---
 arch/arm/mach-imx/include/mach/generic.h    |    5 ++
 arch/arm/mach-imx/include/mach/imx35-regs.h |   18 +++++++
 board/freescale-mx35-3-stack/3stack.c       |   71 +++++++++++++++++++++++++--
 3 files changed, 90 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 99a53a4..926e553 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -3,6 +3,11 @@ int imx_silicon_revision(void);
 #define IMX27_CHIP_REVISION_1_0   0
 #define IMX27_CHIP_REVISION_2_0   1
 
+#define IMX35_CHIP_REVISION_1_0		0x10
+#define IMX35_CHIP_REVISION_2_0		0x20
+
+
+
 #ifdef CONFIG_ARCH_IMX1
 #define cpu_is_mx1()	(1)
 #else
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index c394a2a..899e57b 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -76,6 +76,24 @@
 #define PDR0_AUTO_CON		(1 << 0)
 #define PDR0_PER_SEL		(1 << 26)
 
+
+#define IIM_STAT	0x0000
+#define IIM_STATM	0x0004
+#define IIM_ERR		0x0008
+#define IIM_EMASK	0x000C
+#define IIM_FCTL	0x0010
+#define IIM_UA		0x0014
+#define IIM_LA		0x0018
+#define IIM_SDAT	0x001C
+#define IIM_PREV	0x0020
+#define IIM_SREV	0x0024
+#define IIM_PREG_P	0x0028
+#define IIM_SCS0	0x002C
+#define IIM_SCS1	0x0030
+#define IIM_SCS2	0x0034
+#define IIM_SCS3	0x0038
+
+
 /*
  * Adresses and ranges of the external chip select lines
  */
diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index fcb87cf..cee0e75 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -47,6 +47,7 @@
 #include <mach/iomux-v3.h>
 #include <mach/pmic.h>
 #include <mach/imx-ipu-fb.h>
+#include <mach/generic.h>
 
 #include <i2c/i2c.h>
 #include <i2c/mc13892.h>
@@ -144,6 +145,58 @@ static struct device_d imxfb_dev = {
 	.platform_data	= &ipu_fb_data,
 };
 
+
+/* Board rev for the PDK 3stack */
+#define MX35PDK_BOARD_REV_1	0
+#define MX35PDK_BOARD_REV_2	1
+
+
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
+static unsigned int system_rev;
+
+unsigned int get_board_rev(void)
+{
+	return system_rev;
+}
+
+/*
+ * Setup system_rev with the MX35 cpu and the silicon revision
+ * Doesn't set up the board.
+ *
+ * TODO: look up the rompatch
+ */
+static inline void setup_soc_rev(void)
+{
+	uint32_t reg;
+	reg = readl(IMX_IIM_BASE + IIM_SREV);
+	reg += IMX35_CHIP_REVISION_1_0;
+	
+	system_rev = 0x35000 + (reg & 0xFF);
+}
+
+static inline void set_board_rev(int rev)
+{
+	system_rev =  (system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
+}
+
+int is_soc_rev(int rev)
+{
+	return (system_rev & 0xFF) - rev;
+}
+
+
 static int f3s_devices_init(void)
 {
 	uint32_t reg;
@@ -181,6 +234,8 @@ static int f3s_devices_init(void)
 		break;
 	}
 
+	setup_soc_rev();
+
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	register_device(&i2c_dev);
 
@@ -374,13 +429,16 @@ static int f3s_get_rev(struct mc13892 *mc13892)
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
@@ -421,16 +479,18 @@ static int f3s_pmic_init(void)
 
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
+	set_board_rev( rev );
+	printf("i.MX35 PDK CPU board version %d.\n", rev );
 
 	mc9sdz60 = mc9sdz60_get();
 	if (!mc9sdz60) {
@@ -439,6 +499,9 @@ static int f3s_pmic_init(void)
 	}
 
 	f3s_pmic_init_all(mc9sdz60);
+	
+	printf("system_rev is 0x%08x.\n", system_rev );
+	armlinux_set_revision( system_rev );
 
 	return 0;
 }
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
