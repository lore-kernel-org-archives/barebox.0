Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1b9T-0001Xi-15
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:29:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0007n9-Mo
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0000wg-Dp
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:29:17 +0100
Message-Id: <20210118202922.3581-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: boards: kontron-samx6i: fix memory detection helper
To: barebox@lists.infradead.org

According the vendor u-boot version [1] the version pin is not involved
in the memory size detection algorithm. So drop the usage here.

Also fix the id0 gpio request. Instead of requesting GPIO6_6 we need to
request GPIO6_7.

Last we need to fix the size for the solo/duallite modules. Those
modules are populated with at least 256M of RAM according [1].

I fixed also the alignment while on it.

[1] https://github.com/kontron/u-boot-smarc-samx7/blob/master/board/kontron/amx6/amx6.c

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/kontron-samx6i/mem.c | 24 ++++++------------------
 1 file changed, 6 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/kontron-samx6i/mem.c b/arch/arm/boards/kontron-samx6i/mem.c
index 3b9fbd464a..8132624e3b 100644
--- a/arch/arm/boards/kontron-samx6i/mem.c
+++ b/arch/arm/boards/kontron-samx6i/mem.c
@@ -17,7 +17,6 @@
 
 #include "mem.h"
 
-#define PCBVERSION_PIN IMX_GPIO_NR(2, 2)
 #define PCBID0_PIN IMX_GPIO_NR(6, 7)
 #define PCBID1_PIN IMX_GPIO_NR(6, 9)
 
@@ -25,43 +24,34 @@
 	IOMUX_PAD(0x0658, 0x0270, 5, 0x0000, 0, 0)
 #define MX6S_PAD_NANDF_WP_B__GPIO_6_9 \
 	IOMUX_PAD(0x0690, 0x02A8, 5, 0x0000, 0, 0)
-#define MX6S_PAD_NANDF_D2__GPIO_2_2 \
-	IOMUX_PAD(0x028c, 0x0674, 5, 0x0000, 0, 0)
 
 resource_size_t samx6i_get_size(void)
 {
 	resource_size_t size = 0;
-	int ver, id0, id1;
+	int id0, id1;
 	int cpu_type = __imx6_cpu_type();
 	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
 	void __iomem *gpio6 = IOMEM(MX6_GPIO6_BASE_ADDR);
-	void __iomem *gpio2 = IOMEM(MX6_GPIO2_BASE_ADDR);
 
 	if (cpu_type == IMX6_CPUTYPE_IMX6D ||
-			cpu_type == IMX6_CPUTYPE_IMX6Q) {
+	    cpu_type == IMX6_CPUTYPE_IMX6Q) {
 		imx_setup_pad(iomuxbase, MX6Q_PAD_NANDF_CLE__GPIO_6_7);
 		imx_setup_pad(iomuxbase, MX6Q_PAD_NANDF_WP_B__GPIO_6_9);
-		imx_setup_pad(iomuxbase, MX6Q_PAD_NANDF_D2__GPIO_2_2);
 	} else if (cpu_type == IMX6_CPUTYPE_IMX6S ||
-			cpu_type == IMX6_CPUTYPE_IMX6DL) {
+		   cpu_type == IMX6_CPUTYPE_IMX6DL) {
 		imx_setup_pad(iomuxbase, MX6S_PAD_NANDF_CLE__GPIO_6_7);
 		imx_setup_pad(iomuxbase, MX6S_PAD_NANDF_WP_B__GPIO_6_9);
-		imx_setup_pad(iomuxbase, MX6S_PAD_NANDF_D2__GPIO_2_2);
 	};
 
-	imx6_gpio_direction_input(gpio6, 6);
+	imx6_gpio_direction_input(gpio6, 7);
 	imx6_gpio_direction_input(gpio6, 9);
-	imx6_gpio_direction_input(gpio2, 2);
 
-	ver = imx6_gpio_val(gpio2, 2);
 	id0 = imx6_gpio_val(gpio6, 7);
 	id1 = imx6_gpio_val(gpio6, 9);
 
 	if (cpu_type == IMX6_CPUTYPE_IMX6D ||
 			cpu_type == IMX6_CPUTYPE_IMX6Q) {
-		if (ver)
-			size = SZ_1G;
-		else if (id0 && id1)
+		if (id0 && id1)
 			size = SZ_2G;
 		else if (id0)
 			size = SZ_2G;
@@ -71,8 +61,6 @@ resource_size_t samx6i_get_size(void)
 			size = SZ_512M;
 	} else if (cpu_type == IMX6_CPUTYPE_IMX6S ||
 			cpu_type == IMX6_CPUTYPE_IMX6DL) {
-		if (ver)
-			size = SZ_512M;
 		if (id0 && id1)
 			size = SZ_2G;
 		else if (id0)
@@ -80,7 +68,7 @@ resource_size_t samx6i_get_size(void)
 		else if (id1)
 			size = SZ_512M;
 		else
-			size = SZ_128M;
+			size = SZ_256M;
 	}
 
 	return size;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
