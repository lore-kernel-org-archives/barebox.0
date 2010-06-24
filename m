Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043K-GL
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:15 +0200
Message-Id: <1277372356-32370-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] i.MX27: Add some missing device base addresses
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx27-regs.h |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index d804a9d..8d0bcda 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -16,6 +16,7 @@
 #define IMX_UART2_BASE             (0x0b000 + IMX_IO_BASE)
 #define IMX_UART3_BASE             (0x0c000 + IMX_IO_BASE)
 #define IMX_UART4_BASE             (0x0d000 + IMX_IO_BASE)
+#define IMX_SPI1_BASE              (0x0e000 + IMX_IO_BASE)
 #define IMX_I2C1_BASE              (0x12000 + IMX_IO_BASE)
 #define IMX_GPIO_BASE              (0x15000 + IMX_IO_BASE)
 #define IMX_TIM4_BASE              (0x19000 + IMX_IO_BASE)
@@ -25,9 +26,11 @@
 #define IMX_I2C2_BASE              (0x1d000 + IMX_IO_BASE)
 #define IMX_TIM6_BASE              (0x1f000 + IMX_IO_BASE)
 #define IMX_AIPI2_BASE             (0x20000 + IMX_IO_BASE)
+#define IMX_FB_BASE                (0x21000 + IMX_IO_BASE)
 #define IMX_PLL_BASE               (0x27000 + IMX_IO_BASE)
 #define IMX_SYSTEM_CTL_BASE        (0x27800 + IMX_IO_BASE)
 #define IMX_OTG_BASE               (0x24000 + IMX_IO_BASE)
+#define IMX_FEC_BASE               (0x2b000 + IMX_IO_BASE)
 
 #define IMX_NFC_BASE               (0xd8000000)
 #define IMX_ESD_BASE               (0xd8001000)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
