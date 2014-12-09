Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ4o-00087h-5L
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:32 +0100
Message-Id: <1418151816-24593-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/13] ARM: MXS: Add more base address defines
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/imx23-regs.h | 3 +++
 arch/arm/mach-mxs/include/mach/imx28-regs.h | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-mxs/include/mach/imx23-regs.h b/arch/arm/mach-mxs/include/mach/imx23-regs.h
index 7fb664b..3fd2f3d 100644
--- a/arch/arm/mach-mxs/include/mach/imx23-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx23-regs.h
@@ -24,9 +24,11 @@
 #define IMX_DBGUART_BASE	0x80070000
 #define IMX_TIM1_BASE		0x80068000
 #define IMX_IOMUXC_BASE		0x80018000
+#define IMX_EMI_BASE		0x80020000
 #define IMX_OCOTP_BASE		0x8002c000
 #define IMX_WDT_BASE		0x8005c000
 #define IMX_CCM_BASE		0x80040000
+#define IMX_LRADC_BASE		0x80050000
 #define IMX_I2C1_BASE		0x80058000
 #define IMX_SSP1_BASE		0x80010000
 #define IMX_FB_BASE		0x80030000
@@ -35,5 +37,6 @@
 #define IMX_USBPHY_BASE		0x8007c000
 #define IMX_DIGCTL_BASE		0x8001c000
 #define IMX_USB_BASE		0x80080000
+#define IMX_SDRAMC_BASE		0x800e0000
 
 #endif /* __ASM_ARCH_MX23_REGS_H */
diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
index 0882829..de0d882 100644
--- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
@@ -25,10 +25,12 @@
 #define IMX_SSP3_BASE		0x80016000
 #define IMX_IOMUXC_BASE		0x80018000
 #define IMX_DIGCTL_BASE		0x8001c000
+#define IMX_EMI_BASE		0x80020000
 #define IMX_OCOTP_BASE		0x8002c000
 #define IMX_FB_BASE		0x80030000
 #define IMX_CCM_BASE		0x80040000
 #define IMX_POWER_BASE		0x80044000
+#define IMX_LRADC_BASE		0x80050000
 #define IMX_WDT_BASE		0x80056000
 #define IMX_I2C0_BASE		0x80058000
 #define IMX_I2C1_BASE		0x8005a000
@@ -43,6 +45,7 @@
 #define IMX_USBPHY1_BASE	0x8007e000
 #define IMX_USB0_BASE		0x80080000
 #define IMX_USB1_BASE		0x80090000
+#define IMX_SDRAMC_BASE		0x800e0000
 #define IMX_FEC0_BASE		0x800F0000
 #define IMX_FEC1_BASE		0x800F4000
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
