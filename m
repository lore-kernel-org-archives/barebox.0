Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fv0N8-0005Eq-1U
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 13:18:59 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 29 Aug 2018 15:18:34 +0200
Message-Id: <20180829131834.12563-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2] ARM: i.MX: Reset OTG controller during startup
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

When booting from USB it's sometimes observed that the USB stack on
the remote host gets confused. This happens when we adjust the PLLs
the USB controller is hanging on. The ROM just leaves the USB controller
enabled when it passes control to the bootloader, so in case the usb
clks are enabled make sure we reset the otg  before doing any critical
clock operations.

This is currently done for i.MX50, i.MX51, i.MX53 and i.MX6, but a
similar thing can happen on other i.MXes aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: - resetting the otg instead of disable
	  - checking for ccm gates before toggling otg bits
          - added case for imx50

 arch/arm/mach-imx/imx50.c            |  4 ++++
 arch/arm/mach-imx/imx51.c            |  4 ++++
 arch/arm/mach-imx/imx53.c            |  4 ++++
 arch/arm/mach-imx/imx6.c             |  5 +++++
 arch/arm/mach-imx/include/mach/usb.h | 23 +++++++++++++++++++++++
 5 files changed, 40 insertions(+)

diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
index f7cbc9d4ba..4fd5481670 100644
--- a/arch/arm/mach-imx/imx50.c
+++ b/arch/arm/mach-imx/imx50.c
@@ -22,6 +22,7 @@
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
 #include <mach/reset-reason.h>
+#include <mach/usb.h>
 
 #define SI_REV 0x48
 
@@ -90,6 +91,9 @@ void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
 	void __iomem *ccm = IOMEM(MX50_CCM_BASE_ADDR);
 	u32 r;
 
+	if ((readl(ccm + MX5_CCM_CCGR2) & MX5_CCM_CCGRx_CG13_MASK))
+		imx_reset_otg_controller(IOMEM(MX50_OTG_BASE_ADDR));
+
 	imx5_init_lowlevel();
 
 	/*
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index ec8cdd868b..7404254bee 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -22,6 +22,7 @@
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
 #include <mach/reset-reason.h>
+#include <mach/usb.h>
 
 #define IIM_SREV 0x24
 
@@ -140,6 +141,9 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 	u32 r;
 	int rev = imx51_silicon_revision();
 
+	if ((readl(ccm + MX5_CCM_CCGR2) & MX5_CCM_CCGRx_CG13_MASK))
+		imx_reset_otg_controller(IOMEM(MX51_OTG_BASE_ADDR));
+
 	imx5_init_lowlevel();
 
 	/* disable write combine for TO 2 and lower revs */
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index b22929f749..f8e34a39da 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -22,6 +22,7 @@
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
 #include <mach/reset-reason.h>
+#include <mach/usb.h>
 
 #define SI_REV 0x48
 
@@ -88,6 +89,9 @@ void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 	void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
 	u32 r, cbcdr, cbcmr;
 
+	if ((readl(ccm + MX5_CCM_CCGR2) & MX5_CCM_CCGRx_CG13_MASK))
+		imx_reset_otg_controller(IOMEM(MX53_OTG_BASE_ADDR));
+
 	imx5_init_lowlevel();
 
 	/*
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 3d95c9e374..cc368c5820 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -24,11 +24,13 @@
 #include <mach/imx6-anadig.h>
 #include <mach/imx6-regs.h>
 #include <mach/generic.h>
+#include <mach/usb.h>
 #include <asm/mmu.h>
 #include <asm/cache-l2x0.h>
 
 #include <poweroff.h>
 #include <mach/imx6-regs.h>
+#include <mach/clock-imx6.h>
 #include <io.h>
 
 #define CLPCR				0x54
@@ -52,6 +54,9 @@ static void imx6_init_lowlevel(void)
 	uint32_t periph_sel_2;
 	uint32_t reg;
 
+	if ((readl(MXC_CCM_CCGR6) & 0x3))
+		imx_reset_otg_controller(IOMEM(MX6_OTG_BASE_ADDR));
+
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
 	 * not forced to user-mode.
diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
index 85528d77e6..ab827e9fab 100644
--- a/arch/arm/mach-imx/include/mach/usb.h
+++ b/arch/arm/mach-imx/include/mach/usb.h
@@ -14,4 +14,27 @@
 int imx6_usb_phy2_disable_oc(void);
 int imx6_usb_phy2_enable(void);
 
+#define USBCMD	0x140
+#define USB_CMD_RESET	0x00000002
+
+/*
+ * imx_disable_otg_controller - disable the USB OTG controller
+ * @base: The base address of the controller
+ *
+ * When booting from USB the ROM just leaves the controller enabled. This can
+ * have bad side effects when for example we change PLL frequencies. In this
+ * case it is seen that the hub the board is connected to gets confused and USB
+ * is no longer working properly on the remote host. This function disables the
+ * OTG controller. It should be called before the clocks the controller hangs on
+ * is fiddled with.
+ */
+static inline void imx_reset_otg_controller(void __iomem *base)
+{
+	u32 r;
+
+	r = readl(base + USBCMD);
+	r |= USB_CMD_RESET;
+	writel(r, base + USBCMD);
+}
+
 #endif /* __MACH_USB_H_*/
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
