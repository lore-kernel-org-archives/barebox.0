Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIQLm-00007h-48
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 20:10:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 22:10:21 +0200
Message-Id: <1334261421-4194-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
References: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM i.MX53 iomux: sync to kernel
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/iomux-mx53.h |    8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx53.h b/arch/arm/mach-imx/include/mach/iomux-mx53.h
index ac94deb..527f8fe 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx53.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx53.h
@@ -30,9 +30,7 @@
 #define MX53_SDHC_PAD_CTRL 	(PAD_CTL_HYS | PAD_CTL_PKE | PAD_CTL_PUE | \
 				PAD_CTL_PUS_47K_UP | PAD_CTL_DSE_HIGH | \
 				PAD_CTL_SRE_FAST)
-#define MX53_I2C_PAD_CTRL 	(PAD_CTL_HYS | PAD_CTL_PKE | PAD_CTL_PUE | \
-				PAD_CTL_PUS_22K_UP | PAD_CTL_DSE_HIGH | \
-				PAD_CTL_SRE_FAST)
+
 
 #define MX53_PAD_GPIO_19__KPP_COL_5			IOMUX_PAD(0x348, 0x020, 0, 0x840, 0, NO_PAD_CTRL)
 #define MX53_PAD_GPIO_19__GPIO4_5			IOMUX_PAD(0x348, 0x020, 1, __NA_, 0, NO_PAD_CTRL)
@@ -379,7 +377,7 @@
 #define MX53_PAD_CSI0_DAT8__KPP_COL_7			IOMUX_PAD(0x40C, 0x0E0, 2, 0x848, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT8__ECSPI2_SCLK			IOMUX_PAD(0x40C, 0x0E0, 3, 0x7B8, 1, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT8__USBOH3_USBH3_OC		IOMUX_PAD(0x40C, 0x0E0, 4, __NA_, 0, NO_PAD_CTRL)
-#define MX53_PAD_CSI0_DAT8__I2C1_SDA			IOMUX_PAD(0x40C, 0x0E0, 5 | IOMUX_CONFIG_SION, 0x818, 0, MX53_I2C_PAD_CTRL)
+#define MX53_PAD_CSI0_DAT8__I2C1_SDA			IOMUX_PAD(0x40C, 0x0E0, 5 | IOMUX_CONFIG_SION, 0x818, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT8__EMI_EMI_DEBUG_37		IOMUX_PAD(0x40C, 0x0E0, 6, __NA_, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT8__TPIU_TRACE_5		IOMUX_PAD(0x40C, 0x0E0, 7, __NA_, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT9__IPU_CSI0_D_9		IOMUX_PAD(0x410, 0x0E4, 0, __NA_, 0, NO_PAD_CTRL)
@@ -387,7 +385,7 @@
 #define MX53_PAD_CSI0_DAT9__KPP_ROW_7			IOMUX_PAD(0x410, 0x0E4, 2, 0x854, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT9__ECSPI2_MOSI			IOMUX_PAD(0x410, 0x0E4, 3, 0x7C0, 1, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT9__USBOH3_USBH3_PWR		IOMUX_PAD(0x410, 0x0E4, 4, __NA_, 0, NO_PAD_CTRL)
-#define MX53_PAD_CSI0_DAT9__I2C1_SCL			IOMUX_PAD(0x410, 0x0E4, 5 | IOMUX_CONFIG_SION, 0x814, 0, MX53_I2C_PAD_CTRL)
+#define MX53_PAD_CSI0_DAT9__I2C1_SCL			IOMUX_PAD(0x410, 0x0E4, 5 | IOMUX_CONFIG_SION, 0x814, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT9__EMI_EMI_DEBUG_38		IOMUX_PAD(0x410, 0x0E4, 6, __NA_, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT9__TPIU_TRACE_6		IOMUX_PAD(0x410, 0x0E4, 7, __NA_, 0, NO_PAD_CTRL)
 #define MX53_PAD_CSI0_DAT10__IPU_CSI0_D_10		IOMUX_PAD(0x414, 0x0E8, 0, __NA_, 0, NO_PAD_CTRL)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
