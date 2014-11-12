Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoSFT-0008Uk-Rz
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 07:21:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Nov 2014 08:21:20 +0100
Message-Id: <1415776883-28870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: i.MX51: Setup MIPI
To: barebox@lists.infradead.org

Setting up the MIPI unit is necessary for proper IPU support,
so set this up here. This is only needed for graphics in barebox,
the Kernel repeats this setup during booting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index a0b627f..cef302b 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -41,11 +41,26 @@ static int imx51_silicon_revision(void)
 	return 0;
 }
 
+static void imx51_ipu_mipi_setup(void)
+{
+	void __iomem *hsc_addr = (void __iomem *)MX51_MIPI_HSC_BASE_ADDR;
+	u32 val;
+
+	/* setup MIPI module to legacy mode */
+	writel(0xf00, hsc_addr);
+
+	/* CSI mode: reserved; DI control mode: legacy (from Freescale BSP) */
+	val = readl(hsc_addr + 0x800);
+	val |= 0x30ff;
+	writel(val, hsc_addr + 0x800);
+}
+
 int imx51_init(void)
 {
 	imx_set_silicon_revision("i.MX51", imx51_silicon_revision());
 	imx51_boot_save_loc((void *)MX51_SRC_BASE_ADDR);
 	add_generic_device("imx51-esdctl", 0, NULL, MX51_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	imx51_ipu_mipi_setup();
 
 	return 0;
 }
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
