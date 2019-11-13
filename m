Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoxI-0001Sy-5u
 for barebox@lists.infradead.org; Wed, 13 Nov 2019 09:28:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Nov 2019 10:28:48 +0100
Message-Id: <20191113092848.9207-1-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-8-a.fatoum@pengutronix.de>
References: <20191112091956.26628-8-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: stm32mp: add basic DDR controller driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While Linux doesn't have a device node for the DDR controller,
U-Boot and ARM TF-A do and they both use the st,stm32mp1-ddr compatible,
which encompasses both DDRCTRL and DDRPHY. Follow suit.
---
 arch/arm/mach-stm32mp/ddrctrl.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index b959441455d5..962d4c0d52f6 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -122,7 +122,7 @@ void __noreturn stm32mp1_barebox_entry(void *boarddata)
 }
 
 
-static int stm32_ddrctrl_probe(struct device_d *dev)
+static int stm32mp1_ddr_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
@@ -137,19 +137,19 @@ static int stm32_ddrctrl_probe(struct device_d *dev)
 	return 0;
 }
 
-static __maybe_unused struct of_device_id stm32_ddrctrl_dt_ids[] = {
-	{ .compatible = "st,stm32-ddrctrl" },
+static __maybe_unused struct of_device_id stm32mp1_ddr_dt_ids[] = {
+	{ .compatible = "st,stm32mp1-ddr" },
 	{ /* sentinel */ }
 };
 
-static struct driver_d stm32_ddrctrl_driver = {
-	.name   = "stm32-ddrctrl",
-	.probe  = stm32_ddrctrl_probe,
-	.of_compatible = DRV_OF_COMPAT(stm32_ddrctrl_dt_ids),
+static struct driver_d stm32mp1_ddr_driver = {
+	.name   = "stm32mp1-ddr",
+	.probe  = stm32mp1_ddr_probe,
+	.of_compatible = DRV_OF_COMPAT(stm32mp1_ddr_dt_ids),
 };
 
-static int stm32_ddrctrl_init(void)
+static int stm32mp1_ddr_init(void)
 {
-	return platform_driver_register(&stm32_ddrctrl_driver);
+	return platform_driver_register(&stm32mp1_ddr_driver);
 }
-mem_initcall(stm32_ddrctrl_init);
+mem_initcall(stm32mp1_ddr_init);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
