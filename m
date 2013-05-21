Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeiDy-0003jw-He
 for barebox@lists.infradead.org; Tue, 21 May 2013 08:47:15 +0000
Received: from isonoe.hi.pengutronix.de ([10.1.0.76])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UeiDc-0003mB-Kh
 for barebox@lists.infradead.org; Tue, 21 May 2013 10:46:52 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 21 May 2013 10:44:12 +0200
References: <201305171018.39539.jbe@pengutronix.de>
 <20130521065718.GK32299@pengutronix.de>
In-Reply-To: <20130521065718.GK32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201305211044.12956.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] MXS/i.MX23: add boot source detection
To: barebox@lists.infradead.org

The boot source for the i.MX23 is configured via a few GPIOs, which are later
be used for different purposes (like LCD data for example). The SoC internal
ROM reads these GPIOs and uses the selected boot source.

For various reasons the boot source is also of interest when Barebox is running.
This detection approach reads again the GPIOs. It switches temporarily the pins
to act as GPIOs and input, reads their settings, and switches back to their
previous functions.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/arm/mach-mxs/imx.c |   44 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

Index: barebox-2013.05.0/arch/arm/mach-mxs/imx.c
===================================================================
--- barebox-2013.05.0.orig/arch/arm/mach-mxs/imx.c
+++ barebox-2013.05.0/arch/arm/mach-mxs/imx.c
@@ -112,6 +112,48 @@ static void mxs_silicon_revision(void)
 	silicon_revision_set(product, revision);
 }
 
+#define HW_PINCTRL_MUXSEL2 0x120
+#define HW_PINCTRL_MUXSEL3 0x130
+#define HW_PINCTRL_DOE1 0x710
+#define HW_PINCTRL_DIN1 0x610
+
+/*
+ * we are interested in the setting of:
+ * - GPIO BANK1/19: 1 = the ROM has used the following pins for boot source selection
+ * - GPIO BANK1/5: ETM enable
+ * - GPIO BANK1/3: BM3
+ * - GPIO BANK1/2: BM2
+ * - GPIO BANK1/1: BM1
+ * - GPIO BANK1/0: BM0
+ */
+static uint32_t mx23_detect_bootsource(void)
+{
+	uint32_t mux2, mux3, dir, mode;
+
+	mux3 = readl(IMX_IOMUXC_BASE + HW_PINCTRL_MUXSEL3);
+	mux2 = readl(IMX_IOMUXC_BASE + HW_PINCTRL_MUXSEL2);
+	dir = readl(IMX_IOMUXC_BASE + HW_PINCTRL_DOE1);
+
+	/* force the GPIO lines of interest to input */
+	writel(0x0008002f, IMX_IOMUXC_BASE + HW_PINCTRL_DOE1 + 8);
+	/* force the GPIO lines of interest to act as GPIO */
+	writel(0x00000cff, IMX_IOMUXC_BASE + HW_PINCTRL_MUXSEL2 + 4);
+	writel(0x000000c0, IMX_IOMUXC_BASE + HW_PINCTRL_MUXSEL3 + 4);
+
+	/* read the bootstrapping */
+	mode = readl(IMX_IOMUXC_BASE + HW_PINCTRL_DIN1) & 0x8002f;
+
+	/* restore previous settings */
+	writel(mux3, IMX_IOMUXC_BASE + HW_PINCTRL_MUXSEL3);
+	writel(mux2, IMX_IOMUXC_BASE + HW_PINCTRL_MUXSEL2);
+	writel(dir, IMX_IOMUXC_BASE + HW_PINCTRL_DOE1);
+
+	if (!(mode & (1 << 19)))
+		return 0xff; /* invalid marker */
+
+	return (mode & 0xf) | ((mode & 0x20) >> 1);
+}
+
 #define MX28_REV_1_0_MODE	(0x0001a7f0)
 #define MX28_REV_1_2_MODE	(0x00019bf0)
 
@@ -122,7 +164,7 @@ static void mxs_boot_save_loc(void)
 	uint32_t mode = 0xff;
 
 	if (cpu_is_mx23()) {
-		/* not implemented yet */
+		mode = mx23_detect_bootsource();
 	} else if (cpu_is_mx28()) {
 		enum silicon_revision rev = silicon_revision_get();
 
-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
