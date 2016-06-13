Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCa94-0001xr-L0
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:15:47 +0000
Received: by mail-lf0-x242.google.com with SMTP id j191so3031030lfb.3
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:15:26 -0700 (PDT)
Received: from localhost.localdomain (ppp109-252-109-196.pppoe.spdop.ru.
 [109.252.109.196])
 by smtp.gmail.com with ESMTPSA id k6sm1295064lbd.49.2016.06.13.15.15.23
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 Jun 2016 15:15:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 14 Jun 2016 01:15:03 +0300
Message-Id: <1465856107-24133-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
References: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/6] MIPS: ath79: dts: sync clk stuff with linux v4.7-rc2
To: barebox@lists.infradead.org

Please see these linux kernel ath79 commits:

    commit 1e6a3492e7bb12aa8ee26050ff6829c39ebaa152
    Author: Antony Pavlov <antonynpavlov@gmail.com>
    Date:   Thu Mar 17 06:34:17 2016 +0300

        MIPS: dts: qca: introduce AR9331 devicetree

    commit 5ae5c452e3361612cd8182eb8bdfecf0ebf42288
    Author: Antony Pavlov <antonynpavlov@gmail.com>
    Date:   Thu Mar 17 06:34:18 2016 +0300

        MIPS: ath79: update devicetree clock support for AR9331

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi              | 20 +++++++++++++++-----
 arch/mips/dts/black-swift.dts          |  4 ++++
 arch/mips/dts/tplink-mr3020.dts        |  4 ++++
 drivers/clk/clk-ar933x.c               | 33 ++++++---------------------------
 include/dt-bindings/clock/ar933x-clk.h | 22 ----------------------
 5 files changed, 29 insertions(+), 54 deletions(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index efc0531..4d43087 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -1,8 +1,13 @@
-#include <dt-bindings/clock/ar933x-clk.h>
+#include <dt-bindings/clock/ath79-clk.h>
 
 #include "skeleton.dtsi"
 
 / {
+	ref: ref {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -13,7 +18,8 @@
 		serial0: serial@18020000 {
 			compatible = "qca,ar9330-uart";
 			reg = <0x18020000 0x14>;
-			clocks = <&ar9331_clk AR933X_CLK_UART>;
+			clocks = <&ref>;
+			clock-names = "uart";
 			status = "disabled";
 		};
 
@@ -27,9 +33,13 @@
 			status = "disabled";
 		};
 
-		ar9331_clk: clock {
-			compatible = "qca,ar933x-clk";
-			reg = <0x18050000 0x48>;
+		pll: pll-controller@18050000 {
+			compatible = "qca,ar9330-pll";
+			reg = <0x18050000 0x100>;
+
+			clocks = <&ref>;
+			clock-names = "ref";
+
 			#clock-cells = <1>;
 		};
 
diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index d19c381..aa0aeae 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -37,6 +37,10 @@
 	};
 };
 
+&ref {
+	clock-frequency = <25000000>;
+};
+
 &serial0 {
 	status = "okay";
 };
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index 804d290..a315713 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -44,6 +44,10 @@
 	};
 };
 
+&ref {
+	clock-frequency = <25000000>;
+};
+
 &serial0 {
 	status = "okay";
 };
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index ffbd4df..f5cfd39 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -24,9 +24,9 @@
 #include <linux/err.h>
 
 #include <mach/ath79.h>
-#include <dt-bindings/clock/ar933x-clk.h>
+#include <dt-bindings/clock/ath79-clk.h>
 
-static struct clk *clks[AR933X_CLK_END];
+static struct clk *clks[ATH79_CLK_END];
 static struct clk_onecell_data clk_data;
 
 struct clk_ar933x {
@@ -100,39 +100,19 @@ static struct clk *clk_ar933x(const char *name, const char *parent,
 	return &f->clk;
 }
 
-static void ar933x_ref_clk_init(void __iomem *base)
-{
-	u32 t;
-	unsigned long ref_rate;
-
-	t = ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP);
-	if (t & AR933X_BOOTSTRAP_REF_CLK_40)
-		ref_rate = (40 * 1000 * 1000);
-	else
-		ref_rate = (25 * 1000 * 1000);
-
-	clks[AR933X_CLK_REF] = clk_fixed("ref", ref_rate);
-}
-
 static void ar933x_pll_init(void __iomem *base)
 {
-	clks[AR933X_CLK_UART] = clk_fixed_factor("uart", "ref", 1, 1,
-			CLK_SET_RATE_PARENT);
-
-	clks[AR933X_CLK_CPU] = clk_ar933x("cpu", "ref", base,
+	clks[ATH79_CLK_CPU] = clk_ar933x("cpu", "ref", base,
 		AR933X_PLL_CLOCK_CTRL_CPU_DIV_SHIFT,
 		AR933X_PLL_CLOCK_CTRL_CPU_DIV_MASK);
 
-	clks[AR933X_CLK_DDR] = clk_ar933x("ddr", "ref", base,
+	clks[ATH79_CLK_DDR] = clk_ar933x("ddr", "ref", base,
 		AR933X_PLL_CLOCK_CTRL_DDR_DIV_SHIFT,
 		AR933X_PLL_CLOCK_CTRL_DDR_DIV_MASK);
 
-	clks[AR933X_CLK_AHB] = clk_ar933x("ahb", "ref", base,
+	clks[ATH79_CLK_AHB] = clk_ar933x("ahb", "ref", base,
 		AR933X_PLL_CLOCK_CTRL_AHB_DIV_SHIFT,
 		AR933X_PLL_CLOCK_CTRL_AHB_DIV_MASK);
-
-	clks[AR933X_CLK_WDT] = clk_fixed_factor("wdt", "ahb", 1, 1,
-			CLK_SET_RATE_PARENT);
 }
 
 static int ar933x_clk_probe(struct device_d *dev)
@@ -145,7 +125,6 @@ static int ar933x_clk_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	base = IOMEM(iores->start);
 
-	ar933x_ref_clk_init(base);
 	ar933x_pll_init(base);
 
 	clk_data.clks = clks;
@@ -158,7 +137,7 @@ static int ar933x_clk_probe(struct device_d *dev)
 
 static __maybe_unused struct of_device_id ar933x_clk_dt_ids[] = {
 	{
-		.compatible = "qca,ar933x-clk",
+		.compatible = "qca,ar9330-pll",
 	}, {
 		/* sentinel */
 	}
diff --git a/include/dt-bindings/clock/ar933x-clk.h b/include/dt-bindings/clock/ar933x-clk.h
deleted file mode 100644
index f048930..0000000
--- a/include/dt-bindings/clock/ar933x-clk.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- */
-
-#ifndef __DT_BINDINGS_AR933X_CLK_H
-#define __DT_BINDINGS_AR933X_CLK_H
-
-#define AR933X_CLK_REF		0
-#define AR933X_CLK_UART		1
-#define AR933X_CLK_CPU		2
-#define AR933X_CLK_DDR		3
-#define AR933X_CLK_AHB		4
-#define AR933X_CLK_WDT		5
-
-#define AR933X_CLK_END		6
-
-#endif /* __DT_BINDINGS_AR933X_CLK_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
