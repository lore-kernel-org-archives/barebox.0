Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVV-0007jR-3j
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:45 +0200
Message-Id: <1311839985-11285-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM i.MX27: Add IIM support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx27.c                   |   10 ++++++++++
 arch/arm/mach-imx/include/mach/imx27-regs.h |    1 +
 2 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 04bdd5f..86039c4 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -17,6 +17,8 @@
 
 #include <common.h>
 #include <mach/imx-regs.h>
+#include <sizes.h>
+#include <init.h>
 
 #include "gpio.h"
 
@@ -36,3 +38,11 @@ void *imx_gpio_base[] = {
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
 
+static int imx27_init(void)
+{
+	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
+			IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(imx27_init);
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index e87d5bf..570b430 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -29,6 +29,7 @@
 #define IMX_FB_BASE                (0x21000 + IMX_IO_BASE)
 #define IMX_PLL_BASE               (0x27000 + IMX_IO_BASE)
 #define IMX_SYSTEM_CTL_BASE        (0x27800 + IMX_IO_BASE)
+#define IMX_IIM_BASE               (0x28000 + IMX_IO_BASE)
 #define IMX_OTG_BASE               (0x24000 + IMX_IO_BASE)
 #define IMX_FEC_BASE               (0x2b000 + IMX_IO_BASE)
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
