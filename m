Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S99Zo-0005kq-2b
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 06:26:49 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 18 Mar 2012 10:29:27 +0400
Message-Id: <1332052167-2674-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] i.MX27: Define SDHC base address
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/imx27-regs.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 3a4325e..75305f7 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -19,6 +19,8 @@
 #define IMX_SPI1_BASE              (0x0e000 + IMX_IO_BASE)
 #define IMX_SPI2_BASE              (0x0f000 + IMX_IO_BASE)
 #define IMX_I2C1_BASE              (0x12000 + IMX_IO_BASE)
+#define IMX_SDHC1_BASE             (0x13000 + IMX_IO_BASE)
+#define IMX_SDHC2_BASE             (0x14000 + IMX_IO_BASE)
 #define IMX_GPIO_BASE              (0x15000 + IMX_IO_BASE)
 #define IMX_TIM4_BASE              (0x19000 + IMX_IO_BASE)
 #define IMX_TIM5_BASE              (0x1a000 + IMX_IO_BASE)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
