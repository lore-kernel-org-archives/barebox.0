Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7N01-0001Z4-3l
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 08:54:47 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 31 Aug 2012 10:54:27 +0200
Message-Id: <1346403272-24446-6-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346403272-24446-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346403272-24446-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 05/10] ARM i.MX53: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 7c679bb..4071dce 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -88,6 +88,13 @@ static int imx53_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx-gpio", 0, NULL, MX53_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, MX53_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, MX53_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, MX53_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 4, NULL, MX53_GPIO5_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 5, NULL, MX53_GPIO6_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 6, NULL, MX53_GPIO7_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(imx53_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
