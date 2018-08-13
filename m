Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpCWl-0000K1-Cp
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 13:05:02 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon, 13 Aug 2018 15:02:52 +0200
Message-Id: <20180813130300.32497-7-r.hieber@pengutronix.de>
In-Reply-To: <20180813130300.32497-1-r.hieber@pengutronix.de>
References: <20180813130300.32497-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v3 06/14] ARM: i.MX23: Add memory size detection
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

No need for the boards to manually add memory, we can do this
automatically by reading back the memory size from the SDRAM
controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 .../arm/boards/chumby_falconwing/falconwing.c |  8 -----
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |  8 -----
 .../boards/imx233-olinuxino/imx23-olinuxino.c |  8 -----
 arch/arm/mach-mxs/include/mach/imx23.h        | 29 +++++++++++++++++++
 arch/arm/mach-mxs/soc-imx23.c                 |  4 +++
 5 files changed, 33 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/imx23.h

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index c866043e8b..5554b78d6d 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -258,14 +258,6 @@ static const uint32_t pad_setup[] = {
 	GPMI_RDY3_GPIO | GPIO_IN | PULLUP(1),
 };
 
-static int falconwing_mem_init(void)
-{
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(falconwing_mem_init);
-
 #define GPIO_USB_HUB_RESET	29
 #define GPIO_USB_HUB_POWER	26
 
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index dd8048851b..a3587db063 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -53,14 +53,6 @@ static struct fsl_usb2_platform_data usb_pdata = {
 };
 #endif
 
-static int mx23_evk_mem_init(void)
-{
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 32 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(mx23_evk_mem_init);
-
 /**
  * Try to register an environment storage on the attached MCI card
  * @return 0 on success
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index b87a6764f3..c06779ddf6 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -40,14 +40,6 @@ static struct mxs_mci_platform_data mci_pdata = {
 	.f_min = 400000,
 };
 
-static int imx23_olinuxino_mem_init(void)
-{
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(imx23_olinuxino_mem_init);
-
 static void olinuxino_init_usb(void)
 {
 	imx23_usb_phy_enable();
diff --git a/arch/arm/mach-mxs/include/mach/imx23.h b/arch/arm/mach-mxs/include/mach/imx23.h
new file mode 100644
index 0000000000..56e76d5f50
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/imx23.h
@@ -0,0 +1,29 @@
+#ifndef __MACH_IMX23_H
+#define __MACH_IMX23_H
+
+#include <linux/bitfield.h>
+#include <io.h>
+
+#define DRAM_CTL14_CS0_EN	BIT(0)
+#define DRAM_CTL14_CS1_EN	BIT(1)
+#define DRAM_CTL11_COLUMNS_DIFF	GENMASK(10, 8)
+#define DRAM_CTL10_ROWS_DIFF	GENMASK(18, 16)
+
+#define DRAM_CTL(n)	(IMX_SDRAMC_BASE + 4 * (n))
+
+static inline u32 imx23_get_memsize(void)
+{
+	u32 ctl10 = readl(DRAM_CTL(10));
+	u32 ctl11 = readl(DRAM_CTL(11));
+	u32 ctl14 = readl(DRAM_CTL(14));
+	int rows, columns, banks = 4, cs0, cs1;
+
+	columns = 12 - FIELD_GET(DRAM_CTL11_COLUMNS_DIFF, ctl11);
+	rows = 13 - FIELD_GET(DRAM_CTL10_ROWS_DIFF, ctl10);
+	cs0 = FIELD_GET(DRAM_CTL14_CS0_EN, ctl14);
+	cs1 = FIELD_GET(DRAM_CTL14_CS1_EN, ctl14);
+
+	return (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
+}
+
+#endif /* __MACH_IMX23_H */
\ No newline at end of file
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index d471c8eb5c..f25fff18c3 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -19,6 +19,8 @@
 #include <restart.h>
 #include <mach/imx23-regs.h>
 #include <io.h>
+#include <asm/memory.h>
+#include <mach/imx23.h>
 
 #define HW_CLKCTRL_RESET 0x120
 # define HW_CLKCTRL_RESET_CHIP (1 << 1)
@@ -37,6 +39,8 @@ static void __noreturn imx23_restart_soc(struct restart_handler *rst)
 
 static int imx23_devices_init(void)
 {
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, imx23_get_memsize());
+
 	if (of_get_root_node())
 		return 0;
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
