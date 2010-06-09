Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLt-0001f2-2U
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:29 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:05:03 +0300
Message-Id: <b6fba9ab7986aecf20f31329916ebd9d89c046ce.1276065824.git.baruch@tkos.co.il>
In-Reply-To: <cover.1276065824.git.baruch@tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 4/8] mx25: add support for i2c
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx25.h |    4 ++--
 arch/arm/mach-imx/speed-imx25.c             |    5 +++++
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 8052125..e91e7b6 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -46,6 +46,7 @@
 #define IMX_M3IF_BASE		0xB8003000
 #define IMX_NFC_BASE		0xBB000000
 #define IMX_FEC_BASE		0x50038000
+#define IMX_I2C1_BASE		0x43F80000
 
 /*
  * Clock Controller Module (CCM)
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx25.h b/arch/arm/mach-imx/include/mach/iomux-mx25.h
index 379bfcb..a290a33 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx25.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx25.h
@@ -417,10 +417,10 @@
 #define MX25_PAD_HSYNC__GPIO22                             IOMUX_PAD(0x300, 0x108, 5,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_HSYNC__USBH2_DATA4                        IOMUX_PAD(0x300, 0x108, 6,     0, 0, 0xe5)
 #define MX25_PAD_HSYNC__BT_UART_SRC1                       IOMUX_PAD(0x300, 0x108, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_I2C1_CLK__SCL                             IOMUX_PAD(0x348, 0x150, 0,     0, 0, NO_PAD_CTRL)
+#define MX25_PAD_I2C1_CLK__SCL                             IOMUX_PAD(0x348, 0x150, 0,     0, 0, (HYS | PKE | PUE | PUS_100K_UP))
 #define MX25_PAD_I2C1_CLK__GPIO12                          IOMUX_PAD(0x348, 0x150, 5,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_I2C1_CLK__SLCDC_DATA6                     IOMUX_PAD(0x348, 0x150, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_I2C1_DAT__SDA                             IOMUX_PAD(0x34c, 0x154, 0,     0, 0, NO_PAD_CTRL)
+#define MX25_PAD_I2C1_DAT__SDA                             IOMUX_PAD(0x34c, 0x154, 0,     0, 0, (HYS | PKE | PUE | PUS_100K_UP))
 #define MX25_PAD_I2C1_DAT__GPIO13                          IOMUX_PAD(0x34c, 0x154, 5,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_I2C1_DAT__SLCDC_DATA7                     IOMUX_PAD(0x34c, 0x154, 6,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_KPP_COL0__COL0                            IOMUX_PAD(0x3b0, 0x1b8, 0,     0, 0, NO_PAD_CTRL)
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index a615017..9605674 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -77,6 +77,11 @@ unsigned long imx_get_lcdclk(void)
 	return imx_get_perclk(7);
 }
 
+unsigned long imx_get_i2cclk(void)
+{
+	return imx_get_perclk(6);
+}
+
 int imx_dump_clocks(void)
 {
 	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
