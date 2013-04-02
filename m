Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMuaA-000739-0w
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 06:20:35 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  2 Apr 2013 08:19:06 +0200
Message-Id: <1364883552-6563-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v3 04/10] tegra: add driver for the clock and reset module
To: barebox@lists.infradead.org

Only a basic set of clocks is supported. This is a temporary solution
and will go away as soon as the port of the Tegra common clock code from
the Linux kernel is ready to go.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                               |   2 +
 arch/arm/dts/tegra20.dtsi                      |   6 ++
 arch/arm/mach-tegra/Makefile                   |   1 +
 arch/arm/mach-tegra/include/mach/clkdev.h      |   7 ++
 arch/arm/mach-tegra/include/mach/tegra20-car.h |  22 +++++
 arch/arm/mach-tegra/tegra20-car.c              | 117 +++++++++++++++++++++++++
 6 files changed, 155 insertions(+)
 create mode 100644 arch/arm/mach-tegra/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-car.h
 create mode 100644 arch/arm/mach-tegra/tegra20-car.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8f37d12..e163e18 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -140,6 +140,8 @@ config ARCH_TEGRA
 	select CPU_V7
 	select HAS_DEBUG_LL
 	select BUILTIN_DTB
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
 	select OFTREE
 
 config ARCH_ZYNQ
diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index 9f8860b..2edfda1 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -2,4 +2,10 @@
 
 / {
 	compatible = "nvidia,tegra20";
+
+	tegra_car: clock {
+		compatible = "nvidia,tegra20-car";
+		reg = <0x60006000 0x1000>;
+		#clock-cells = <1>;
+	};
 };
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 11915e5..9aa7725 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,2 +1,3 @@
 obj-y += clock.o
 obj-y += reset.o
+obj-y += tegra20-car.o
diff --git a/arch/arm/mach-tegra/include/mach/clkdev.h b/arch/arm/mach-tegra/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
new file mode 100644
index 0000000..43ed059
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/* Register definitions */
+#define CRC_OSC_CTRL			0x050
+#define CRC_OSC_CTRL_OSC_FREQ_SHIFT	30
+#define CRC_OSC_CTRL_OSC_FREQ_MASK	(0x3 << CRC_OSC_CTRL_OSC_FREQ_SHIFT)
+#define CRC_OSC_CTRL_PLL_REF_DIV_SHIFT	28
+#define CRC_OSC_CTRL_PLL_REF_DIV_MASK	(0x3 << CRC_OSC_CTRL_PLL_REF_DIV_SHIFT)
diff --git a/arch/arm/mach-tegra/tegra20-car.c b/arch/arm/mach-tegra/tegra20-car.c
new file mode 100644
index 0000000..63c6ca5
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra20-car.c
@@ -0,0 +1,117 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/**
+ * @file
+ * @brief Device driver for the Tegra 20 clock and reset (CAR) controller
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <mach/iomap.h>
+
+#include <mach/tegra20-car.h>
+
+static void __iomem *car_base;
+
+enum tegra20_clks {
+	cpu, ac97 = 3, rtc, timer, uarta, gpio = 8, sdmmc2, i2s1 = 11, i2c1,
+	ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d = 21, usbd, isp,
+	gr3d, ide, disp2, disp1, host1x, vcp, cache2 = 31, mem, ahbdma, apbdma,
+	kbc = 36, stat_mon, pmc, fuse, kfuse, sbc1, nor, spi, sbc2, xio, sbc3,
+	dvc, dsi, mipi = 50, hdmi, csi, tvdac, i2c2, uartc, emc = 57, usb2,
+	usb3, mpe, vde, bsea, bsev, speedo, uartd, uarte, i2c3, sbc4, sdmmc3,
+	pex, owr, afi, csite, pcie_xclk, avpucq = 75, la, irama = 84, iramb,
+	iramc, iramd, cram2, audio_2x, clk_d, csus = 92, cdev1, cdev2,
+	uartb = 96, vfir, spdif_in, spdif_out, vi, vi_sensor, tvo, cve,
+	osc, clk_32k, clk_m, sclk, cclk, hclk, pclk, blink, pll_a, pll_a_out0,
+	pll_c, pll_c_out1, pll_d, pll_d_out0, pll_e, pll_m, pll_m_out1,
+	pll_p, pll_p_out1, pll_p_out2, pll_p_out3, pll_p_out4, pll_u,
+	pll_x, audio, pll_ref, twd, clk_max,
+};
+
+static struct clk *clks[clk_max];
+
+static unsigned long get_osc_frequency(void)
+{
+	u32 osc_ctrl = readl(car_base + CRC_OSC_CTRL);
+
+	switch ((osc_ctrl & CRC_OSC_CTRL_OSC_FREQ_MASK) >>
+		CRC_OSC_CTRL_OSC_FREQ_SHIFT)
+	{
+	case 0:
+		return 13000000;
+	case 1:
+		return 19200000;
+	case 2:
+		return 12000000;
+	case 3:
+		return 26000000;
+	default:
+		return 0;
+	}
+}
+
+static unsigned int get_pll_ref_div(void)
+{
+	u32 osc_ctrl = readl(car_base + CRC_OSC_CTRL);
+
+	return 1U << ((osc_ctrl & CRC_OSC_CTRL_PLL_REF_DIV_MASK) >>
+		      CRC_OSC_CTRL_PLL_REF_DIV_SHIFT);
+}
+
+static int tegra20_car_probe(struct device_d *dev)
+{
+	car_base = dev_request_mem_region(dev, 0);
+	if (!car_base)
+		return -EBUSY;
+
+	/* primary clocks */
+	clks[clk_m] = clk_fixed("clk_m", get_osc_frequency());
+	clks[clk_32k] = clk_fixed("clk_32k", 32768);
+
+	clks[pll_ref] = clk_fixed_factor("pll_ref", "clk_m", 1,
+					 get_pll_ref_div());
+
+	/* derived clocks */
+	/* timer is a gate, but as it's enabled by BOOTROM we needn't worry */
+	clks[timer] = clk_fixed_factor("timer", "clk_m", 1, 1);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id tegra20_car_dt_ids[] = {
+	{
+		.compatible = "nvidia,tegra20-car",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d tegra20_car_driver = {
+	.probe	= tegra20_car_probe,
+	.name	= "tegra20-car",
+	.of_compatible = DRV_OF_COMPAT(tegra20_car_dt_ids),
+};
+
+static int tegra20_car_init(void)
+{
+	return platform_driver_register(&tegra20_car_driver);
+}
+postcore_initcall(tegra20_car_init);
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
