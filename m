Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9uqE-0007Kg-IY
 for barebox@lists.infradead.org; Tue, 20 Mar 2012 08:54:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 20 Mar 2012 12:54:24 +0400
Message-Id: <1332233666-5422-1-git-send-email-shc_work@mail.ru>
In-Reply-To: <20120318151242.GP3852@pengutronix.de>
References: <20120318151242.GP3852@pengutronix.de>
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
Subject: [PATCH 1/3] i.MX27: Define base address for SDHC1,2,3
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/imx27-regs.h |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 3a4325e..b7bebae 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -19,12 +19,15 @@
 #define IMX_SPI1_BASE              (0x0e000 + IMX_IO_BASE)
 #define IMX_SPI2_BASE              (0x0f000 + IMX_IO_BASE)
 #define IMX_I2C1_BASE              (0x12000 + IMX_IO_BASE)
+#define IMX_SDHC1_BASE             (0x13000 + IMX_IO_BASE)
+#define IMX_SDHC2_BASE             (0x14000 + IMX_IO_BASE)
 #define IMX_GPIO_BASE              (0x15000 + IMX_IO_BASE)
 #define IMX_TIM4_BASE              (0x19000 + IMX_IO_BASE)
 #define IMX_TIM5_BASE              (0x1a000 + IMX_IO_BASE)
 #define IMX_UART5_BASE             (0x1b000 + IMX_IO_BASE)
 #define IMX_UART6_BASE             (0x1c000 + IMX_IO_BASE)
 #define IMX_I2C2_BASE              (0x1d000 + IMX_IO_BASE)
+#define IMX_SDHC3_BASE             (0x1e000 + IMX_IO_BASE)
 #define IMX_TIM6_BASE              (0x1f000 + IMX_IO_BASE)
 #define IMX_AIPI2_BASE             (0x20000 + IMX_IO_BASE)
 #define IMX_FB_BASE                (0x21000 + IMX_IO_BASE)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
