Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTcPP-0003YR-0n
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 19:58:01 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 8E60526C2002
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 21:57:04 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 15 Sep 2014 22:03:10 +0200
Message-Id: <1410811390-7009-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1410811390-7009-1-git-send-email-dev@lynxeye.de>
References: <1410811390-7009-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] arm: imx6: add Gateworks Ventana board
To: barebox@lists.infradead.org

For now only the Quad 1GB variant is supported.

Tested:
- starting barebox over USB
- writing barebox to NAND with barebox_update
- starting Linux kernel over TFTP

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/gateworks-ventana/Makefile         |  2 +
 arch/arm/boards/gateworks-ventana/board.c          | 92 ++++++++++++++++++++++
 arch/arm/boards/gateworks-ventana/clocks.imxcfg    |  8 ++
 .../flash-header-ventana-quad-1gx64.imxcfg         | 11 +++
 arch/arm/boards/gateworks-ventana/gsc.c            | 66 ++++++++++++++++
 arch/arm/boards/gateworks-ventana/gsc.h            | 58 ++++++++++++++
 arch/arm/boards/gateworks-ventana/lowlevel.c       | 18 +++++
 .../boards/gateworks-ventana/quad_128x64.imxcfg    | 41 ++++++++++
 arch/arm/boards/gateworks-ventana/ram-base.imxcfg  | 56 +++++++++++++
 arch/arm/configs/imx_v7_defconfig                  |  3 +-
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/imx6q-gw54xx.dts                      | 23 ++++++
 arch/arm/dts/imx6qdl-gw54xx.dtsi                   | 38 +++++++++
 arch/arm/mach-imx/Kconfig                          |  3 +
 images/Makefile.imx                                |  5 ++
 16 files changed, 425 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/gateworks-ventana/Makefile
 create mode 100644 arch/arm/boards/gateworks-ventana/board.c
 create mode 100644 arch/arm/boards/gateworks-ventana/clocks.imxcfg
 create mode 100644 arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 create mode 100644 arch/arm/boards/gateworks-ventana/gsc.c
 create mode 100644 arch/arm/boards/gateworks-ventana/gsc.h
 create mode 100644 arch/arm/boards/gateworks-ventana/lowlevel.c
 create mode 100644 arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg
 create mode 100644 arch/arm/boards/gateworks-ventana/ram-base.imxcfg
 create mode 100644 arch/arm/dts/imx6q-gw54xx.dts
 create mode 100644 arch/arm/dts/imx6qdl-gw54xx.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 122f5cd..a703f1d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -48,6 +48,7 @@ obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
 obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
+obj-$(CONFIG_MACH_GW_VENTANA)			+= gateworks-ventana/
 obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
diff --git a/arch/arm/boards/gateworks-ventana/Makefile b/arch/arm/boards/gateworks-ventana/Makefile
new file mode 100644
index 0000000..7d195ee
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o gsc.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
new file mode 100644
index 0000000..6e9ca17
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -0,0 +1,92 @@
+/*
+ * Copyright (C) 2014 Lucas Stach, Pengutronix
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
+#include <common.h>
+#include <environment.h>
+#include <i2c/i2c.h>
+#include <init.h>
+#include <linux/marvell_phy.h>
+#include <linux/phy.h>
+#include <mach/bbu.h>
+#include <mach/imx6.h>
+#include <net.h>
+
+#include "gsc.h"
+
+static int gw54xx_devices_init(void)
+{
+	struct i2c_client client;
+	struct device_node *dnode;
+	u8 reg;
+	u8 mac[6];
+
+	if (!of_machine_is_compatible("gw,imx6q-gw54xx"))
+		return 0;
+
+	client.adapter = i2c_get_adapter(0);
+
+	/* disable the GSC boot watchdog */
+	client.addr = GSC_SC_ADDR;
+	gsc_i2c_read(&client, GSC_SC_CTRL1, &reg, 1);
+	reg |= GSC_SC_CTRL1_WDDIS;
+	gsc_i2c_write(&client, GSC_SC_CTRL1, &reg, 1);
+
+	/* read MAC adresses from EEPROM and attach to eth devices */
+	dnode = of_find_node_by_alias(of_get_root_node(), "ethernet0");
+	if (dnode) {
+		client.addr = GSC_EEPROM_ADDR;
+		gsc_i2c_read(&client, 0x00, mac, 6);
+		of_eth_register_ethaddr(dnode, mac);
+	}
+	dnode = of_find_node_by_alias(of_get_root_node(), "ethernet1");
+	if (dnode) {
+		client.addr = GSC_EEPROM_ADDR;
+		gsc_i2c_read(&client, 0x06, mac, 6);
+		of_eth_register_ethaddr(dnode, mac);
+	}
+
+	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+
+	barebox_set_hostname("gw54xx");
+
+	return 0;
+}
+device_initcall(gw54xx_devices_init);
+
+static int marvell_88e1510_phy_fixup(struct phy_device *dev)
+{
+	u32 val;
+
+	/* LED settings */
+	phy_write(dev, 22, 3);
+	val = phy_read(dev, 16);
+	val &= 0xff00;
+	val |= 0x0017;
+	phy_write(dev, 16, val);
+	phy_write(dev, 22, 0);
+
+	return 0;
+}
+
+static int gw54xx_coredevices_init(void)
+{
+	if (!of_machine_is_compatible("gw,imx6q-gw54xx"))
+		return 0;
+
+	phy_register_fixup_for_uid(MARVELL_PHY_ID_88E1510, MARVELL_PHY_ID_MASK,
+				   marvell_88e1510_phy_fixup);
+
+	return 0;
+}
+coredevice_initcall(gw54xx_coredevices_init);
diff --git a/arch/arm/boards/gateworks-ventana/clocks.imxcfg b/arch/arm/boards/gateworks-ventana/clocks.imxcfg
new file mode 100644
index 0000000..bfd5331
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/clocks.imxcfg
@@ -0,0 +1,8 @@
+wm 32 MX6_CCM_CCGR0	0x00C03F3F
+wm 32 MX6_CCM_CCGR1	0x0030FC03
+wm 32 MX6_CCM_CCGR2	0x0FFFC000
+wm 32 MX6_CCM_CCGR3	0x3FF00000
+wm 32 MX6_CCM_CCGR4	0xFFFFF300
+wm 32 MX6_CCM_CCGR5	0x0F0000C3
+wm 32 MX6_CCM_CCGR6	0x000003FF
+wm 32 MX6_CCM_CCOSR	0x000000FB
diff --git a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
new file mode 100644
index 0000000..75271e4
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
@@ -0,0 +1,11 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx6-ccm-regs.h>
+
+#include "ram-base.imxcfg"
+#include "quad_128x64.imxcfg"
+#include "clocks.imxcfg"
diff --git a/arch/arm/boards/gateworks-ventana/gsc.c b/arch/arm/boards/gateworks-ventana/gsc.c
new file mode 100644
index 0000000..9f86eaf
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/gsc.c
@@ -0,0 +1,66 @@
+/*
+ * Copyright (C) 2013 Gateworks Corporation
+ * Copyright (C) 2014 Lucas Stach, Pengutronix
+ * Author: Tim Harvey <tharvey@gateworks.com>
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
+/*
+ * The Gateworks System Controller will fail to ACK a master transaction if
+ * it is busy, which can occur during its 1HZ timer tick while reading ADC's.
+ * When this does occur, it will never be busy long enough to fail more than
+ * 2 back-to-back transfers.  Thus we wrap i2c_read and i2c_write with
+ * 3 retries.
+ */
+
+#include <common.h>
+#include <i2c/i2c.h>
+
+#include "gsc.h"
+
+int gsc_i2c_read(struct i2c_client *client, u32 addr, u8 *buf, u16 count)
+{
+	int retry = 3;
+	int n = 0;
+	int ret;
+
+	while (n++ < retry) {
+		ret = i2c_read_reg(client, addr,  buf, count);
+		if (!ret)
+			break;
+		pr_debug("GSC read failed\n");
+		if (ret != -ENODEV)
+			break;
+		mdelay(10);
+	}
+
+	return ret;
+}
+
+int gsc_i2c_write(struct i2c_client *client, u32 addr, const u8 *buf, u16 count)
+{
+	int retry = 3;
+	int n = 0;
+	int ret;
+
+	while (n++ < retry) {
+		ret = i2c_write_reg(client, addr, buf, count);
+		if (!ret)
+			break;
+		pr_debug("GSC write failed\n");
+		if (ret != -ENODEV)
+			break;
+		mdelay(10);
+	}
+
+	return ret;
+}
diff --git a/arch/arm/boards/gateworks-ventana/gsc.h b/arch/arm/boards/gateworks-ventana/gsc.h
new file mode 100644
index 0000000..033e204
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/gsc.h
@@ -0,0 +1,58 @@
+/*
+ * Copyright (C) 2013 Gateworks Corporation
+ * Copyright (C) 2014 Lucas Stach, Pengutronix
+ * Author: Tim Harvey <tharvey@gateworks.com>
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
+/* i2c slave addresses */
+#define	GSC_SC_ADDR			0x20
+#define	GSC_RTC_ADDR			0x68
+#define	GSC_HWMON_ADDR			0x29
+#define	GSC_EEPROM_ADDR			0x51
+
+/* System Controller registers */
+#define	GSC_SC_CTRL0			0x00
+#define	GSC_SC_CTRL1			0x01
+#define		GSC_SC_CTRL1_WDDIS	(1 << 7)
+#define	GSC_SC_STATUS			0x0a
+#define	GSC_SC_FWVER			0x0e
+
+/* System Controller Interrupt bits */
+#define	GSC_SC_IRQ_PB			0 /* Pushbutton switch */
+#define	GSC_SC_IRQ_SECURE		1 /* Secure Key erase operation complete */
+#define	GSC_SC_IRQ_EEPROM_WP		2 /* EEPROM write violation */
+#define	GSC_SC_IRQ_GPIO			4 /* GPIO change */
+#define	GSC_SC_IRQ_TAMPER		5 /* Tamper detect */
+#define	GSC_SC_IRQ_WATCHDOG		6 /* Watchdog trip */
+#define	GSC_SC_IRQ_PBLONG		7 /* Pushbutton long hold */
+
+/* Hardware Monitor registers */
+#define	GSC_HWMON_TEMP			0x00,
+#define	GSC_HWMON_VIN			0x02,
+#define	GSC_HWMON_VDD_3P3		0x05,
+#define	GSC_HWMON_VBATT			0x08,
+#define	GSC_HWMON_VDD_5P0		0x0b,
+#define	GSC_HWMON_VDD_CORE		0x0e,
+#define	GSC_HWMON_VDD_HIGH		0x14,
+#define	GSC_HWMON_VDD_DDR		0x17,
+#define	GSC_HWMON_VDD_SOC		0x11,
+#define	GSC_HWMON_VDD_1P8		0x1d,
+#define	GSC_HWMON_VDD_2P5		0x23,
+#define	GSC_HWMON_VDD_1P0		0x20,
+
+/*
+ * I2C transactions to the GSC are done via these functions which
+ * perform retries in the case of a busy GSC NAK'ing the transaction
+ */
+int gsc_i2c_read(struct i2c_client *client, u32 addr, u8 *buf, u16 count);
+int gsc_i2c_write(struct i2c_client *client, u32 addr, const u8 *buf, u16 count);
diff --git a/arch/arm/boards/gateworks-ventana/lowlevel.c b/arch/arm/boards/gateworks-ventana/lowlevel.c
new file mode 100644
index 0000000..10b2c4c
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/lowlevel.c
@@ -0,0 +1,18 @@
+#include <common.h>
+#include <sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_imx6q_gw54xx_start[];
+
+ENTRY_FUNCTION(start_imx6q_gw54xx_1gx64, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6q_gw54xx_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg b/arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg
new file mode 100644
index 0000000..daf01a8
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg
@@ -0,0 +1,41 @@
+wm 32 MX6_MMDC_P0_MPWLDECTRL0	0x00190017
+wm 32 MX6_MMDC_P0_MPWLDECTRL1	0x00140026
+wm 32 MX6_MMDC_P1_MPWLDECTRL0	0x0021001C
+wm 32 MX6_MMDC_P1_MPWLDECTRL1	0x0011001D
+
+wm 32 MX6_MMDC_P0_MPDGCTRL0	0x43380347
+wm 32 MX6_MMDC_P0_MPDGCTRL1	0x433C034D
+wm 32 MX6_MMDC_P1_MPDGCTRL0	0x032C0324
+wm 32 MX6_MMDC_P1_MPDGCTRL1	0x03310232
+
+wm 32 MX6_MMDC_P0_MPRDDLCTL	0x3C313539
+wm 32 MX6_MMDC_P1_MPRDDLCTL	0x37343141
+wm 32 MX6_MMDC_P0_MPWRDLCTL	0x36393C39
+wm 32 MX6_MMDC_P1_MPWRDLCTL	0x42344438
+
+wm 32 MX6_MMDC_P0_MPODTCTRL	0x00022227
+wm 32 MX6_MMDC_P1_MPODTCTRL	0x00022227
+
+wm 32 MX6_MMDC_P0_MPMUR0	0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0	0x00000800
+
+wm 32 MX6_MMDC_P0_MDSCR		0x00008000
+wm 32 MX6_MMDC_P0_MDCFG0	0x54597955
+wm 32 MX6_MMDC_P0_MDCFG1	0xFF328F64
+wm 32 MX6_MMDC_P0_MDCFG2	0x01FF00DB
+wm 32 MX6_MMDC_P0_MDOTC		0x09444040
+wm 32 MX6_MMDC_P0_MDASP		0x0000007F
+wm 32 MX6_MMDC_P0_MDMISC	0x00011740
+wm 32 MX6_MMDC_P0_MDOR		0x00591023
+wm 32 MX6_MMDC_P0_MDCTL		0x831A0000
+wm 32 MX6_MMDC_P0_MDSCR		0x02088032
+wm 32 MX6_MMDC_P0_MDSCR		0x00008033
+wm 32 MX6_MMDC_P0_MDSCR		0x00408031
+wm 32 MX6_MMDC_P0_MDSCR		0x09408030
+wm 32 MX6_MMDC_P0_MDSCR		0x04008040
+wm 32 MX6_MMDC_P0_MDPDC		0x00025576
+wm 32 MX6_MMDC_P0_MAPSR		0x00011006
+wm 32 MX6_MMDC_P0_MPZQHWCTRL	0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL	0xA1390003
+wm 32 MX6_MMDC_P0_MDREF		0x00007800
+wm 32 MX6_MMDC_P0_MDSCR		0x00000000
diff --git a/arch/arm/boards/gateworks-ventana/ram-base.imxcfg b/arch/arm/boards/gateworks-ventana/ram-base.imxcfg
new file mode 100644
index 0000000..07dc34c
--- /dev/null
+++ b/arch/arm/boards/gateworks-ventana/ram-base.imxcfg
@@ -0,0 +1,56 @@
+wm 32 MX6_IOM_DRAM_SDQS0	0x00000030
+wm 32 MX6_IOM_DRAM_SDQS1	0x00000030
+wm 32 MX6_IOM_DRAM_SDQS2	0x00000030
+wm 32 MX6_IOM_DRAM_SDQS3	0x00000030
+wm 32 MX6_IOM_DRAM_SDQS4	0x00000030
+wm 32 MX6_IOM_DRAM_SDQS5	0x00000030
+wm 32 MX6_IOM_DRAM_SDQS6	0x00000030
+wm 32 MX6_IOM_DRAM_SDQS7	0x00000030
+
+wm 32 MX6_IOM_DRAM_DQM0		0x00020030
+wm 32 MX6_IOM_DRAM_DQM1		0x00020030
+wm 32 MX6_IOM_DRAM_DQM2		0x00020030
+wm 32 MX6_IOM_DRAM_DQM3		0x00020030
+wm 32 MX6_IOM_DRAM_DQM4		0x00020030
+wm 32 MX6_IOM_DRAM_DQM5		0x00020030
+wm 32 MX6_IOM_DRAM_DQM6		0x00020030
+wm 32 MX6_IOM_DRAM_DQM7		0x00020030
+
+wm 32 MX6_IOM_GRP_B0DS		0x00000030
+wm 32 MX6_IOM_GRP_B1DS		0x00000030
+wm 32 MX6_IOM_GRP_B2DS		0x00000030
+wm 32 MX6_IOM_GRP_B3DS		0x00000030
+wm 32 MX6_IOM_GRP_B4DS		0x00000030
+wm 32 MX6_IOM_GRP_B5DS		0x00000030
+wm 32 MX6_IOM_GRP_B6DS		0x00000030
+wm 32 MX6_IOM_GRP_B7DS		0x00000030
+
+wm 32 MX6_IOM_DRAM_CAS		0x00020030
+wm 32 MX6_IOM_DRAM_RAS		0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_0	0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_1	0x00020030
+wm 32 MX6_IOM_DRAM_RESET	0x00020030
+
+wm 32 MX6_IOM_DRAM_SDCKE0	0x00003000
+wm 32 MX6_IOM_DRAM_SDCKE1	0x00003000
+
+wm 32 MX6_IOM_DRAM_SDBA2	0x00000000
+
+wm 32 MX6_IOM_DRAM_SDODT0	0x00003030
+wm 32 MX6_IOM_DRAM_SDODT1	0x00003030
+
+wm 32 MX6_IOM_GRP_DDR_TYPE	0x000C0000
+wm 32 MX6_IOM_DDRMODE_CTL	0x00020000
+wm 32 MX6_IOM_GRP_DDRPKE	0x00000000
+wm 32 MX6_IOM_GRP_ADDDS		0x00000030
+wm 32 MX6_IOM_GRP_CTLDS		0x00000030
+wm 32 MX6_IOM_GRP_DDRMODE	0x00020000
+
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL	0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL	0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL	0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY0DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY1DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY2DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY3DL	0x33333333
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index cad47fd..2c8eb85 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
+CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_MACH_TQMA53=y
@@ -16,10 +17,10 @@ CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_NITROGEN6X=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
-CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
 CONFIG_MACH_UDOO=y
 CONFIG_MACH_VARISCITE_MX6=y
+CONFIG_MACH_GW_VENTANA=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_IMX_OCOTP=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index dcf014d..2a2d292 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -17,6 +17,7 @@ pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
+pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
 pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 pbl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
diff --git a/arch/arm/dts/imx6q-gw54xx.dts b/arch/arm/dts/imx6q-gw54xx.dts
new file mode 100644
index 0000000..4b25af8
--- /dev/null
+++ b/arch/arm/dts/imx6q-gw54xx.dts
@@ -0,0 +1,23 @@
+/* 
+ * Copyright 2013 Gateworks Corporation
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx6q.dtsi"
+#include "imx6qdl-gw54xx.dtsi"
+
+/ {
+	model = "Gateworks Ventana i.MX6 Quad GW54XX";
+	compatible = "gw,imx6q-gw54xx", "gw,ventana", "fsl,imx6q";
+};
+
+&sata {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6qdl-gw54xx.dtsi b/arch/arm/dts/imx6qdl-gw54xx.dtsi
new file mode 100644
index 0000000..cfc3ee8
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-gw54xx.dtsi
@@ -0,0 +1,38 @@
+/*
+ * Copyright 2013 Gateworks Corporation
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+ 
+ #include <arm/imx6qdl-gw54xx.dtsi>
+ 
+ / {
+	chosen {
+		linux,stdout-path = &uart2;
+		
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+		};
+	};
+};
+
+&gpmi {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x400000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x400000 0x20000>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 53a44a0..d381d39 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -291,6 +291,9 @@ config MACH_VARISCITE_MX6
 	bool "Variscite i.MX6 Quad SOM"
 	select ARCH_IMX6
 
+config MACH_GW_VENTANA
+	bool "Gateworks Ventana SBC"
+	select ARCH_IMX6
 
 endif
 
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e559a75..f722136 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -194,3 +194,8 @@ pblx-$(CONFIG_MACH_PCAAXL3) += start_phytec_pbaa03_2gib
 CFG_start_phytec_pbaa03_2gib.pblx.imximg = $(board)/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
 FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblx.imximg
 image-$(CONFIG_MACH_PCAAXL3) += barebox-phytec-pbaa03-2gib.img
+
+pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
+CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
+FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblx.imximg
+image-$(CONFIG_MACH_GW_VENTANA) += barebox-gateworks-imx6q-ventana-1gx64.img
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
