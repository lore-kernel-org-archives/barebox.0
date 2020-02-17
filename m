Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fn9-0007r6-Et
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:45 +0100
Message-Id: <20200217124623.14520-5-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/42] ARM: i.MX: Drop iomux argument from mx7_setup_pad()
To: Barebox List <barebox@lists.infradead.org>

The name mx7_setup_pad already implies the SoC where it runs on, so we
do not have to pass the iomux base address but can hardcode it in the
function. While at it rename it to imx7_setup_pad() which is more
consistent to other i.MX specific functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c | 3 +--
 arch/arm/boards/zii-imx7d-dev/lowlevel.c         | 3 +--
 arch/arm/mach-imx/include/mach/iomux-mx7.h       | 4 +++-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index f718ea73b3..edd965e4ec 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -15,7 +15,6 @@ extern char __dtb_imx7d_sdb_start[];
 
 static inline void setup_uart(void)
 {
-	void __iomem *iomux = IOMEM(MX7_IOMUXC_BASE_ADDR);
 	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
 
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
@@ -25,7 +24,7 @@ static inline void setup_uart(void)
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
 	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
 
-	mx7_setup_pad(iomux, MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
+	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
 
 	imx7_uart_setup_ll();
 
diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 3bacfd0c7d..83d01446b9 100644
--- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -23,7 +23,6 @@ extern char __dtb_z_imx7d_zii_rmu2_start[];
 
 static inline void setup_uart(void)
 {
-	void __iomem *iomux = IOMEM(MX7_IOMUXC_BASE_ADDR);
 	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
 
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
@@ -33,7 +32,7 @@ static inline void setup_uart(void)
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
 	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART2));
 
-	mx7_setup_pad(iomux, MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
+	imx7_setup_pad(MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
 
 	imx7_uart_setup_ll();
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx7.h b/arch/arm/mach-imx/include/mach/iomux-mx7.h
index 2667dc3eb3..def9cf4d44 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx7.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx7.h
@@ -8,6 +8,7 @@
 #define __MACH_IOMUX_IMX7D_H__
 
 #include <mach/iomux-v3.h>
+#include <mach/imx7-regs.h>
 
 enum {
 	MX7D_PAD_GPIO1_IO00__GPIO1_IO0                           = IOMUX_PAD(0x0030, 0x0000, IOMUX_CONFIG_LPSR | 0, 0x0000, 0, 0),
@@ -1306,8 +1307,9 @@ enum {
 	MX7D_PAD_ENET1_COL__CSU_INT_DEB                          = IOMUX_PAD(0x04D8, 0x0268, 7, 0x0000, 0, 0),
 };
 
-static inline void mx7_setup_pad(void __iomem *iomux, iomux_v3_cfg_t pad)
+static inline void imx7_setup_pad(iomux_v3_cfg_t pad)
 {
+	void __iomem *iomux = IOMEM(MX7_IOMUXC_BASE_ADDR);
 	unsigned int flags = 0;
 	uint32_t mode = IOMUX_MODE(pad);
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
