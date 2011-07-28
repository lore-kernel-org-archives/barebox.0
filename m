Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVV-0007jT-3d
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:40 +0200
Message-Id: <1311839985-11285-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] ARM i.MX25 IIM: switch IIM support to use resources
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx25.c |   39 +++++----------------------------------
 1 files changed, 5 insertions(+), 34 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 37eafaf..75ec8c7 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -20,6 +20,7 @@
 #include <mach/imx-regs.h>
 #include <mach/iim.h>
 #include <asm/io.h>
+#include <sizes.h>
 
 #include "gpio.h"
 
@@ -53,41 +54,11 @@ static struct imx_iim_platform_data imx25_iim_pdata = {
 	.mac_addr_base	= IIM_MAC_ADDR,
 };
 
-static struct device_d imx25_iim_dev = {
-	.id		= -1,
-	.name		= "imx_iim",
-	.map_base	= IMX_IIM_BASE,
-	.platform_data	= &imx25_iim_pdata,
-};
-
-static struct device_d imx25_iim_bank0_dev = {
-	.name		= "imx_iim_bank",
-	.id		= 0,
-	.map_base	= IIM_BANK0_BASE,
-	.size		= IIM_BANK_SIZE,
-};
-
-static struct device_d imx25_iim_bank1_dev = {
-	.name		= "imx_iim_bank",
-	.id		= 1,
-	.map_base	= IIM_BANK1_BASE,
-	.size		= IIM_BANK_SIZE,
-};
-
-static struct device_d imx25_iim_bank2_dev = {
-	.name		= "imx_iim_bank",
-	.id		= 2,
-	.map_base	= IIM_BANK2_BASE,
-	.size		= IIM_BANK_SIZE,
-};
-
-static int imx25_iim_init(void)
+static int imx25_init(void)
 {
-	register_device(&imx25_iim_dev);
-	register_device(&imx25_iim_bank0_dev);
-	register_device(&imx25_iim_bank1_dev);
-	register_device(&imx25_iim_bank2_dev);
+	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
+			IORESOURCE_MEM, &imx25_iim_pdata);
 
 	return 0;
 }
-coredevice_initcall(imx25_iim_init);
+coredevice_initcall(imx25_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
