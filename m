Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nUm-0002Hk-Ly
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:19:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 14:18:50 +0100
Message-Id: <20190304131853.30864-3-s.hauer@pengutronix.de>
In-Reply-To: <20190304131853.30864-1-s.hauer@pengutronix.de>
References: <20190304131853.30864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 2/5] esdhc-xload: move some register defines to header file
To: Barebox List <barebox@lists.infradead.org>

To make them usable for the PBL driver aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 1 -
 drivers/mci/imx-esdhc.c     | 9 ---------
 drivers/mci/imx-esdhc.h     | 8 ++++++++
 3 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index fb40ecf654..bcb47afcef 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -29,7 +29,6 @@
 
 #define esdhc_read32(a)                    readl(a)
 #define esdhc_write32(a, v)                writel(v,a)
-#define IMX_SDHCI_MIXCTRL  0x48
 
 struct esdhc {
 	void __iomem *regs;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index a9c5440758..cedfb3db42 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -83,15 +83,6 @@
 /* The IP supports HS400 mode */
 #define ESDHC_FLAG_HS400		BIT(9)
 
-
-#define IMX_SDHCI_WML		0x44
-#define IMX_SDHCI_MIXCTRL	0x48
-#define IMX_SDHCI_DLL_CTRL	0x60
-#define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	(BIT(25))
-
-#define ESDHC_DMA_SYSCTL	0x40c /* Layerscape specific */
-#define ESDHC_SYSCTL_DMA_SNOOP  BIT(6)
-
 struct esdhc_soc_data {
 	u32 flags;
 	const char *clkidx;
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 9003843abb..9b79346f90 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -58,6 +58,14 @@
 
 #define PIO_TIMEOUT		100000
 
+#define IMX_SDHCI_WML		0x44
+#define IMX_SDHCI_MIXCTRL	0x48
+#define IMX_SDHCI_DLL_CTRL	0x60
+#define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	BIT(25)
+
+#define ESDHC_DMA_SYSCTL	0x40c /* Layerscape specific */
+#define ESDHC_SYSCTL_DMA_SNOOP 	BIT(6)
+
 struct fsl_esdhc_cfg {
 	u32	esdhc_base;
 	u32	no_snoop;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
