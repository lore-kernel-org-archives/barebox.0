Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XtfU5-0008P1-PQ
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 16:30:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Nov 2014 17:29:53 +0100
Message-Id: <1417019394-23683-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] ARM: i.MX: Add i.MX6sx sabresdb support
To: barebox@lists.infradead.org

This adds support for the Freescale i.MX6sx sabresdb board.

Tested are:

- UART
- The three SD card slots
- USB host
- USB otg (host and device mode)
- FEC (both)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/freescale-mx6sx-sabresdb/Makefile  |   3 +
 arch/arm/boards/freescale-mx6sx-sabresdb/board.c   | 249 +++++++++++++++++++++
 .../flash-header-mx6sx-sabresdb.imxcfg             |  75 +++++++
 .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |  68 ++++++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6sx-sdb.dts                        |  92 ++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 images/Makefile.imx                                |   5 +
 9 files changed, 498 insertions(+)
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/board.c
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
 create mode 100644 arch/arm/dts/imx6sx-sdb.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index fb257fb..9961ca8 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -93,6 +93,7 @@ obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
 obj-$(CONFIG_MACH_RPI)				+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
+obj-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB)	+= freescale-mx6sx-sabresdb/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile b/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
new file mode 100644
index 0000000..cc4078f
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header-mx6sx-sabresdb.dcd.o
+extra-y += flash-header-mx6sx-sabresdb.dcd.S flash-header-mx6sx-sabresdb.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
new file mode 100644
index 0000000..c21b43d
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -0,0 +1,249 @@
+/*
+ * Copyright (C) 2014 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#define pr_fmt(fmt) "imx6sx-sdb: " fmt
+
+#include <environment.h>
+#include <partition.h>
+#include <common.h>
+#include <sizes.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include <generated/mach-types.h>
+#include <linux/clk.h>
+#include <i2c/i2c.h>
+
+#include <asm/armlinux.h>
+
+#include <mach/devices-imx6.h>
+#include <mach/imx6-regs.h>
+#include <mach/iomux-mx6.h>
+#include <mach/generic.h>
+#include <mach/imx6.h>
+#include <mach/bbu.h>
+
+#define PFUZE100_DEVICEID	0x0
+#define PFUZE100_REVID		0x3
+#define PFUZE100_FABID		0x4
+
+#define PFUZE100_SW1ABVOL	0x20
+#define PFUZE100_SW1ABSTBY	0x21
+#define PFUZE100_SW1ABCONF	0x24
+#define PFUZE100_SW1CVOL	0x2e
+#define PFUZE100_SW1CSTBY	0x2f
+#define PFUZE100_SW1CCONF	0x32
+#define PFUZE100_SW1ABC_SETP(x)	((x - 3000) / 250)
+#define PFUZE100_VGEN5CTL	0x70
+
+/* set all switches APS in normal and PFM mode in standby */
+static int imx6sx_sdb_setup_pmic_mode(struct i2c_client *client, int chip)
+{
+	unsigned char offset, i, switch_num, value;
+
+	if (!chip) {
+		/* pfuze100 */
+		switch_num = 6;
+		offset = 0x31;
+	} else {
+		/* pfuze200 */
+		switch_num = 4;
+		offset = 0x38;
+	}
+
+	value = 0xc;
+	if (i2c_write_reg(client, 0x23, &value, 1) < 0)
+		return -EIO;
+
+	for (i = 0; i < switch_num - 1; i++)
+		if (i2c_write_reg(client, offset + i * 7, &value, 1) < 0)
+			return -EIO;
+
+	return 0;
+}
+
+static int imx6sx_sdb_setup_pmic_voltages(void)
+{
+	unsigned char value, rev_id = 0;
+	struct i2c_adapter *adapter = NULL;
+	struct i2c_client client;
+	int addr = -1, bus = 0;
+
+	if (!of_machine_is_compatible("fsl,imx6sx-sdb"))
+		return 0;
+
+	/* I2C2 bus (2-1 = 1 in barebox numbering) */
+	bus = 0;
+
+	/* PFUZE100 device address is 0x08 */
+	addr = 0x08;
+
+	adapter = i2c_get_adapter(bus);
+	if (!adapter)
+		return -ENODEV;
+
+	client.adapter = adapter;
+	client.addr = addr;
+
+	if (i2c_read_reg(&client, PFUZE100_DEVICEID, &value, 1) < 0)
+		goto err_out;
+	if (i2c_read_reg(&client, PFUZE100_REVID, &rev_id, 1) < 0)
+		goto err_out;
+
+	pr_info("Found PFUZE100! deviceid 0x%x, revid 0x%x\n", value, rev_id);
+
+	if (imx6sx_sdb_setup_pmic_mode(&client, value & 0xf))
+		goto err_out;
+
+	/* set SW1AB standby volatage 0.975V */
+	if (i2c_read_reg(&client, PFUZE100_SW1ABSTBY, &value, 1) < 0)
+		goto err_out;
+
+	value &= ~0x3f;
+	value |= PFUZE100_SW1ABC_SETP(9750);
+	if (i2c_write_reg(&client, PFUZE100_SW1ABSTBY, &value, 1) < 0)
+		goto err_out;
+
+	/* set SW1AB/VDDARM step ramp up time from 16us to 4us/25mV */
+	if (i2c_read_reg(&client, PFUZE100_SW1ABCONF, &value, 1) < 0)
+		goto err_out;
+
+	value &= ~0xc0;
+	value |= 0x40;
+	if (i2c_write_reg(&client, PFUZE100_SW1ABCONF, &value, 1) < 0)
+		goto err_out;
+
+
+	/* set SW1C standby volatage 0.975V */
+	if (i2c_read_reg(&client, PFUZE100_SW1CSTBY, &value, 1) < 0)
+		goto err_out;
+
+	value &= ~0x3f;
+	value |= PFUZE100_SW1ABC_SETP(9750);
+	if (i2c_write_reg(&client, PFUZE100_SW1CSTBY, &value, 1) < 0)
+		goto err_out;
+
+
+	/* set SW1C/VDDSOC step ramp up time to from 16us to 4us/25mV */
+	if (i2c_read_reg(&client, PFUZE100_SW1CCONF, &value, 1) < 0)
+		goto err_out;
+
+	value &= ~0xc0;
+	value |= 0x40;
+	if (i2c_write_reg(&client, PFUZE100_SW1CCONF, &value, 1) < 0)
+		goto err_out;
+
+	/* Enable power of VGEN5 3V3, needed for SD3 */
+	if (i2c_read_reg(&client, PFUZE100_VGEN5CTL, &value, 1) < 0)
+		goto err_out;
+
+	value &= ~0x1F;
+	value |= 0x1F;
+	if (i2c_write_reg(&client, PFUZE100_VGEN5CTL, &value, 1) < 0)
+		goto err_out;
+
+	return 0;
+
+err_out:
+	pr_err("Setting up PMIC failed\n");
+
+	return -EIO;
+}
+fs_initcall(imx6sx_sdb_setup_pmic_voltages);
+
+int ar8031_phy_fixup(struct phy_device *phydev)
+{
+	/*
+	 * Enable 1.8V(SEL_1P5_1P8_POS_REG) on
+	 * Phy control debug reg 0
+	 */
+	phy_write(phydev, 0x1d, 0x1f);
+	phy_write(phydev, 0x1e, 0x8);
+
+	/* rgmii tx clock delay enable */
+	phy_write(phydev, 0x1d, 0x05);
+	phy_write(phydev, 0x1e, 0x100);
+
+	return 0;
+}
+
+#define PHY_ID_AR8031	0x004dd074
+#define AR_PHY_ID_MASK	0xffffffff
+
+static int imx6sx_sdb_setup_fec(void)
+{
+	void __iomem *gprbase = (void *)MX6_IOMUXC_BASE_ADDR + 0x4000;
+	uint32_t val;
+	struct clk *clk;
+
+	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
+			ar8031_phy_fixup);
+
+	/* Active high for ncp692 */
+	gpio_direction_output(IMX_GPIO_NR(4, 16), 1);
+
+	clk = clk_lookup("enet_ptp_25m");
+	if (IS_ERR(clk))
+		goto err;
+
+	clk_enable(clk);
+
+	clk = clk_lookup("enet_ref");
+	if (IS_ERR(clk))
+		goto err;
+	clk_enable(clk);
+
+	clk = clk_lookup("enet2_ref_125m");
+	if (IS_ERR(clk))
+		goto err;
+
+	clk_enable(clk);
+
+	val = readl(gprbase + IOMUXC_GPR1);
+	/* Use 125M anatop loopback REF_CLK1 for ENET1, clear gpr1[13], gpr1[17]*/
+	val &= ~(1 << 13);
+	val &= ~(1 << 17);
+	/* Use 125M anatop loopback REF_CLK1 for ENET2, clear gpr1[14], gpr1[18]*/
+	val &= ~(1 << 14);
+	val &= ~(1 << 18);
+	writel(val, gprbase + IOMUXC_GPR1);
+
+	/* Enable the ENET power, active low */
+	gpio_direction_output(IMX_GPIO_NR(2, 6), 0);
+
+	/* Reset AR8031 PHY */
+	gpio_direction_output(IMX_GPIO_NR(2, 7), 0);
+	udelay(500);
+	gpio_set_value(IMX_GPIO_NR(2, 7), 1);
+
+	return 0;
+err:
+	pr_err("Setting up DFEC\n");
+
+	return -EIO;
+}
+
+static int imx6sx_sdb_coredevices_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx6sx-sdb"))
+		return 0;
+
+	imx6sx_sdb_setup_fec();
+
+	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc3",
+			BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+console_initcall(imx6sx_sdb_coredevices_init);
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg b/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
new file mode 100644
index 0000000..a96b3e7
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
@@ -0,0 +1,75 @@
+loadaddr 0x80000000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+wm 32 0x020c4084 0xffffffff
+
+wm 32 0x020e0618 0x000c0000
+wm 32 0x020e05fc 0x00000000
+wm 32 0x020e032c 0x00000030
+
+wm 32 0x020e0300 0x00000030
+wm 32 0x020e02fc 0x00000030
+wm 32 0x020e05f4 0x00000030
+wm 32 0x020e0340 0x00000030
+
+wm 32 0x020e0320 0x00000000
+wm 32 0x020e0310 0x00000030
+wm 32 0x020e0314 0x00000030
+wm 32 0x020e0614 0x00000030
+wm 32 0x020e05f8 0x00020000
+wm 32 0x020e0330 0x00000030
+wm 32 0x020e0334 0x00000030
+wm 32 0x020e0338 0x00000030
+wm 32 0x020e033c 0x00000030
+wm 32 0x020e0608 0x00020000
+wm 32 0x020e060c 0x00000030
+wm 32 0x020e0610 0x00000030
+wm 32 0x020e061c 0x00000030
+wm 32 0x020e0620 0x00000030
+wm 32 0x020e02ec 0x00000030
+wm 32 0x020e02f0 0x00000030
+wm 32 0x020e02f4 0x00000030
+wm 32 0x020e02f8 0x00000030
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b080c 0x00270025
+wm 32 0x021b0810 0x001b001e
+wm 32 0x021b083c 0x4144013c
+wm 32 0x021b0840 0x01300128
+wm 32 0x021b0848 0x4044464a
+wm 32 0x021b0850 0x3a383c34
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b0004 0x0002002d
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b000c 0x676b52f3
+wm 32 0x021b0010 0xb66d8b63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00011740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x006b1023
+wm 32 0x021b0040 0x0000005f
+wm 32 0x021b0000 0x84190000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00068031
+wm 32 0x021b001c 0x05208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00000800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b083c 0x41400138
+wm 32 0x021b0840 0x012c011c
+wm 32 0x021b0848 0x3c3c4044
+wm 32 0x021b0850 0x34343638
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
new file mode 100644
index 0000000..33f3700
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
@@ -0,0 +1,68 @@
+/*
+ * Copyright (C) 2014 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <debug_ll.h>
+#include <common.h>
+#include <sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
+	void __iomem *uartbase = (void *)MX6_UART1_BASE_ADDR;
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	writel(0xffffffff, ccmbase + 0x68);
+	writel(0xffffffff, ccmbase + 0x6c);
+	writel(0xffffffff, ccmbase + 0x70);
+	writel(0xffffffff, ccmbase + 0x74);
+	writel(0xffffffff, ccmbase + 0x78);
+	writel(0xffffffff, ccmbase + 0x7c);
+	writel(0xffffffff, ccmbase + 0x80);
+
+	writel(0x0, iomuxbase + 0x24);
+	writel(0x1b0b1, iomuxbase + 0x036C);
+	writel(0x0, iomuxbase + 0x28);
+	writel(0x1b0b1, iomuxbase + 0x0370);
+
+	writel(0x00000000, uartbase + 0x80);
+	writel(0x00004027, uartbase + 0x84);
+	writel(0x00000784, uartbase + 0x88);
+	writel(0x00000a81, uartbase + 0x90);
+	writel(0x0000002b, uartbase + 0x9c);
+	writel(0x0001b0b0, uartbase + 0xb0);
+	writel(0x0000047f, uartbase + 0xa4);
+	writel(0x0000c34f, uartbase + 0xa8);
+	writel(0x00000001, uartbase + 0x80);
+
+	putc_ll('>');
+}
+
+extern char __dtb_imx6sx_sdb_start[];
+
+ENTRY_FUNCTION(start_imx6sx_sabresdb, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_imx6sx_sdb_start - get_runtime_offset();
+
+	barebox_arm_entry(0x80000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 9404474..9981073 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -35,6 +35,7 @@ pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
+pbl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
new file mode 100644
index 0000000..fbf098b
--- /dev/null
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -0,0 +1,92 @@
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <arm/imx6sx-sdb.dts>
+#include "imx6sx.dtsi"
+
+/ {
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &usdhc4, "partname:barebox-environment";
+		};
+	};
+};
+
+&fec1 {
+	phy-handle = <&phy1>;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy1: phy@1 {
+			reg = <1>;
+		};
+
+		phy2: phy@2 {
+			reg = <2>;
+		};
+	};
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>;
+	phy-mode = "rgmii";
+	status = "okay";
+	phy-handle = <&phy2>;
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
+};
+
+&usdhc4 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox-environment";
+		reg = <0x80000 0x20000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6x-sdb {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6SX_PAD_QSPI1A_DATA0__GPIO4_IO_16	0x17059 /* PERI_3V3 */
+				MX6SX_PAD_ENET2_COL__GPIO2_IO_6		0x17059 /* ENET PHY Power */
+				MX6SX_PAD_ENET2_CRS__GPIO2_IO_7		0x17059 /* AR8031 PHY Reset. */
+				MX6SX_PAD_ENET2_RX_CLK__ENET2_REF_CLK_25M	0x17059 /* Phy 25M Clock */
+			>;
+		};
+
+		pinctrl_enet2: enet2grp {
+			fsl,pins = <
+				MX6SX_PAD_RGMII2_TXC__ENET2_RGMII_TXC	0xa0b1
+				MX6SX_PAD_RGMII2_TD0__ENET2_TX_DATA_0	0xa0b1
+				MX6SX_PAD_RGMII2_TD1__ENET2_TX_DATA_1	0xa0b1
+				MX6SX_PAD_RGMII2_TD2__ENET2_TX_DATA_2	0xa0b1
+				MX6SX_PAD_RGMII2_TD3__ENET2_TX_DATA_3	0xa0b1
+				MX6SX_PAD_RGMII2_TX_CTL__ENET2_TX_EN	0xa0b1
+				MX6SX_PAD_RGMII2_RXC__ENET2_RX_CLK	0x3081
+				MX6SX_PAD_RGMII2_RD0__ENET2_RX_DATA_0	0x3081
+				MX6SX_PAD_RGMII2_RD1__ENET2_RX_DATA_1	0x3081
+				MX6SX_PAD_RGMII2_RD2__ENET2_RX_DATA_2	0x3081
+				MX6SX_PAD_RGMII2_RD3__ENET2_RX_DATA_3	0x3081
+				MX6SX_PAD_RGMII2_RX_CTL__ENET2_RX_EN	0x3081
+			>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dadbdeb..1ba448f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -301,6 +301,10 @@ config MACH_SABRESD
 	bool "Freescale i.MX6 SabreSD"
 	select ARCH_IMX6
 
+config MACH_FREESCALE_IMX6SX_SABRESDB
+	bool "Freescale i.MX6sx SabreSDB"
+	select ARCH_IMX6SX
+
 config MACH_NITROGEN6X
 	bool "BoundaryDevices Nitrogen6x"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 2b85560..fd7f725 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -155,6 +155,11 @@ CFG_start_imx6q_sabresd.pblx.imximg = $(board)/freescale-mx6-sabresd/flash-heade
 FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblx.imximg
 image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
 
+pblx-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += start_imx6sx_sabresdb
+CFG_start_imx6sx_sabresdb.pblx.imximg = $(board)/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
+FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblx.imximg
+image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
+
 pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_imx6dl_hummingboard
 CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
 FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.imximg
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
