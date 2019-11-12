Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLB-0006gb-BZ
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:54 +0100
Message-Id: <20191112091956.26628-8-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 08/10] ARM: stm32mp: add basic DDR controller driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The STM32MP DDR Controller has a very flexible way of mapping address
bits to columns/rows/banks. This is so far configured by the ARM TF-A
as part of the SDRAM setup, so we don't need to do this in barebox.

Nevertheless reading it out in barebox, allows us to determine unused
address bits and thus the total size of SDRAM configured.

Add a simple driver that parses the ddrctrl node and adds an appropriate
memory bank. This can later be used to remove explicit calls to
arm_add_mem_device in board code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/ddrctrl.c | 34 +++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 90fb5e8956d0..b959441455d5 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -4,6 +4,7 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <mach/stm32.h>
 #include <mach/ddr_regs.h>
 #include <mach/entry.h>
@@ -119,3 +120,36 @@ void __noreturn stm32mp1_barebox_entry(void *boarddata)
 {
 	barebox_arm_entry(STM32_DDR_BASE, stm32mp1_ddrctrl_ramsize(), boarddata);
 }
+
+
+static int stm32_ddrctrl_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	arm_add_mem_device("ram0", STM32_DDR_BASE, ddrctrl_ramsize(base));
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id stm32_ddrctrl_dt_ids[] = {
+	{ .compatible = "st,stm32-ddrctrl" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d stm32_ddrctrl_driver = {
+	.name   = "stm32-ddrctrl",
+	.probe  = stm32_ddrctrl_probe,
+	.of_compatible = DRV_OF_COMPAT(stm32_ddrctrl_dt_ids),
+};
+
+static int stm32_ddrctrl_init(void)
+{
+	return platform_driver_register(&stm32_ddrctrl_driver);
+}
+mem_initcall(stm32_ddrctrl_init);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
