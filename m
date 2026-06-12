Delivery-date: Fri, 12 Jun 2026 08:02:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuy2-004xvh-08
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 08:02:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuy0-0006GM-Pg
	for lore@pengutronix.de; Fri, 12 Jun 2026 08:02:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vaShKQFON5/NUzih7imdPE+Q2vAj+tJyMh2et39TgB4=; b=Ken0TlWsiiw5NhpMUdBsUfmB3o
	R+Hd/uLnOeXI96OX4XylVvpk9utbL0NPneYLF2oLYMdnHVVl3A5yrJTjWjJRu3so98m0Sc1Bmq64R
	CPl1UtZ9JPbfHG9hvhLy6pMNvtOACy4GoxQ8WhThZRHK0Ks+FUZHUtWO/jywTdvu+iP9GyHg/gs+i
	mI3TFeitwM2ygRS87JvQsHbccVki+3TkSkHYc5JdJzHk1ROckRHSPNxzLDdz8i8DCIXfTPWKof18y
	RVbqwhkYduSlZNhlUYOPzHdxNLYMv7bXW/EKbYn4hLYUgcj4CiIBvF7C1GfWnOp4qdHiHYB+tJEpL
	IFOtlhPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvg-0000000AOVA-31BF;
	Fri, 12 Jun 2026 05:59:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvZ-0000000AOPf-1v0a
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 05:59:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-0004nI-9J; Fri, 12 Jun 2026 07:59:34 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-002Kf5-0d;
	Fri, 12 Jun 2026 07:59:34 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-00000002fQR-0K0L;
	Fri, 12 Jun 2026 07:59:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 12 Jun 2026 07:59:26 +0200
Message-ID: <20260612055930.635833-10-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612055930.635833-1-o.rempel@pengutronix.de>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225937_679760_D40A6A35 
X-CRM114-Status: GOOD (  19.34  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 10/10] ARM: add Microchip LAN9696 (LAN969X) SoC and EV23X71A board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce the Microchip LAN9696 SoC (lan969x family) and the EV23X71A
evaluation board, booted as BL33 from TF-A.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/Kconfig                              | 11 +++
 arch/arm/boards/Makefile                      |  1 +
 .../microchip-lan9696-ev23x71a/Makefile       |  4 ++
 .../boards/microchip-lan9696-ev23x71a/board.c | 33 +++++++++
 .../microchip-lan9696-ev23x71a/lowlevel.c     | 34 ++++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/lan9691-bb.dtsi                  | 68 +++++++++++++++++++
 arch/arm/dts/lan9696-ev23x71a.dts             | 65 ++++++++++++++++++
 images/Makefile                               |  1 +
 images/Makefile.microchip                     |  9 +++
 10 files changed, 227 insertions(+)
 create mode 100644 arch/arm/boards/microchip-lan9696-ev23x71a/Makefile
 create mode 100644 arch/arm/boards/microchip-lan9696-ev23x71a/board.c
 create mode 100644 arch/arm/boards/microchip-lan9696-ev23x71a/lowlevel.c
 create mode 100644 arch/arm/dts/lan9691-bb.dtsi
 create mode 100644 arch/arm/dts/lan9696-ev23x71a.dts
 create mode 100644 images/Makefile.microchip

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5fdec7159827..26f0d040ca68 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -301,6 +301,17 @@ source "arch/arm/mach-tegra/Kconfig"
 source "arch/arm/mach-zynq/Kconfig"
 source "arch/arm/mach-zynqmp/Kconfig"
 
+if ARCH_MICROCHIP
+
+config MACH_MICROCHIP_LAN9696_EV23X71A
+	bool "Microchip LAN9696 EV23X71A Evaluation Board"
+	help
+	  Support for Microchip LAN9696 EV23X71A Evaluation Board.
+	  This is a 28-port Ethernet switch SoC with ARM64 CPU and
+	  AT91/SAMA5 compatible peripherals.
+
+endif # ARCH_MICROCHIP
+
 config BOARD_ARM_VIRT
 	bool
 	select BOARD_GENERIC_DT
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f08983f4d23f..4a15cb8e5909 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -116,6 +116,7 @@ obj-$(CONFIG_MACH_SAMA5D27_GIANTBOARD)		+= sama5d27-giantboard/
 obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
+obj-$(CONFIG_MACH_MICROCHIP_LAN9696_EV23X71A)	+= microchip-lan9696-ev23x71a/
 obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS)	+= microchip-sama5d3-eds/
 obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
 obj-$(CONFIG_MACH_SAMA5D4_WIFX)			+= sama5d4_wifx/
diff --git a/arch/arm/boards/microchip-lan9696-ev23x71a/Makefile b/arch/arm/boards/microchip-lan9696-ev23x71a/Makefile
new file mode 100644
index 000000000000..5678718188b9
--- /dev/null
+++ b/arch/arm/boards/microchip-lan9696-ev23x71a/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/microchip-lan9696-ev23x71a/board.c b/arch/arm/boards/microchip-lan9696-ev23x71a/board.c
new file mode 100644
index 000000000000..2707a425659d
--- /dev/null
+++ b/arch/arm/boards/microchip-lan9696-ev23x71a/board.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2026 Oleksij Rempel <o.rempel@pengutronix.de>
+ */
+
+#include <bbu.h>
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+
+static int lan9696_probe(struct device *dev)
+{
+	bbu_register_std_file_update("nor", BBU_HANDLER_FLAG_DEFAULT,
+				     "/dev/m25p0", filetype_fip);
+	return 0;
+}
+
+static const struct of_device_id lan9696_of_match[] = {
+	{
+		.compatible = "microchip,ev23x71a",
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver lan9696_board_driver = {
+	.name = "board-lan9696-ev23x71a",
+	.probe = lan9696_probe,
+	.of_compatible = lan9696_of_match,
+};
+coredevice_platform_driver(lan9696_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(lan9696_of_match);
diff --git a/arch/arm/boards/microchip-lan9696-ev23x71a/lowlevel.c b/arch/arm/boards/microchip-lan9696-ev23x71a/lowlevel.c
new file mode 100644
index 000000000000..c95bbd4cccc0
--- /dev/null
+++ b/arch/arm/boards/microchip-lan9696-ev23x71a/lowlevel.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2026 Oleksij Rempel <o.rempel@pengutronix.de>
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_z_lan9696_ev23x71a_start[];
+
+/*
+ * EV23x71a memory map.
+ *
+ * The board has 896 MiB of DDR mapped at 0x60000000. TF-A's BL31
+ * (EL3 runtime) lives in the top 2 MiB of that region, so the
+ * usable area for barebox + payload ends at LAN9696_DRAM_USABLE_END.
+ */
+#define LAN9696_DRAM_BASE		UL(0x60000000)
+#define LAN9696_DRAM_SIZE		(896 * SZ_1M)
+#define LAN9696_BL31_RESERVE		SZ_2M
+#define LAN9696_DRAM_USABLE		(LAN9696_DRAM_SIZE - LAN9696_BL31_RESERVE)
+#define LAN9696_DRAM_USABLE_END		(LAN9696_DRAM_BASE + LAN9696_DRAM_USABLE)
+
+ENTRY_FUNCTION_WITHSTACK(start_lan9696_ev23x71a,
+			 LAN9696_DRAM_USABLE_END, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+
+	barebox_arm_entry(LAN9696_DRAM_BASE, LAN9696_DRAM_USABLE,
+			  runtime_address(__dtb_z_lan9696_ev23x71a_start));
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 55149d9c3675..f993da7ebb65 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -256,6 +256,7 @@ lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-ls1046a-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-arkona-at300.dtb.o
 lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
+lwl-$(CONFIG_MACH_MICROCHIP_LAN9696_EV23X71A) += lan9696-ev23x71a.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
 lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcustomboard.dtb.o
diff --git a/arch/arm/dts/lan9691-bb.dtsi b/arch/arm/dts/lan9691-bb.dtsi
new file mode 100644
index 000000000000..72e1b870f68c
--- /dev/null
+++ b/arch/arm/dts/lan9691-bb.dtsi
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Barebox-only overlay for the LAN9691 SoC. Adds nodes that exist in the
+ * upstream Linux DTSI but are not yet present in the snapshot under
+ * barebox/dts/src/ (which is auto-synced from Linux and must not be patched
+ * locally).
+ *
+ * Nodes here are copied verbatim from
+ *   linux/arch/arm64/boot/dts/microchip/lan9691.dtsi
+ * so that when the upstream snapshot catches up, this file can be deleted
+ * (or trimmed) without touching anything else.
+ */
+
+#include <arm64/microchip/clk-lan9691.h>
+
+&axi {
+	sdmmc0: mmc@e0830000 {
+		compatible = "microchip,lan9691-sdhci";
+		reg = <0xe0830000 0x00000300>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clks GCK_ID_SDMMC0>, <&clks GCK_ID_SDMMC0>;
+		clock-names = "hclock", "multclk";
+		assigned-clocks = <&clks GCK_ID_SDMMC0>;
+		assigned-clock-rates = <100000000>;
+		status = "disabled";
+	};
+
+	sdmmc1: mmc@e0838000 {
+		compatible = "microchip,lan9691-sdhci";
+		reg = <0xe0838000 0x00000300>;
+		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clks GCK_ID_SDMMC1>, <&clks GCK_ID_SDMMC1>;
+		clock-names = "hclock", "multclk";
+		assigned-clocks = <&clks GCK_ID_SDMMC1>;
+		assigned-clock-rates = <45000000>;
+		status = "disabled";
+	};
+
+	qspi0: spi@e0804000 {
+		compatible = "microchip,lan9691-qspi", "microchip,lan966x-qspi";
+		reg = <0xe0804000 0x00000100>,
+		      <0x20000000 0x08000000>;
+		reg-names = "qspi_base", "qspi_mmap";
+		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&fabric_clk>, <&clks GCK_ID_QSPI0>;
+		clock-names = "pclk", "gclk";
+		assigned-clocks = <&clks GCK_ID_QSPI0>;
+		assigned-clock-rates = <100000000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	qspi2: spi@e0834000 {
+		compatible = "microchip,lan9691-qspi", "microchip,lan966x-qspi";
+		reg = <0xe0834000 0x00000100>,
+		      <0x30000000 0x04000000>;
+		reg-names = "qspi_base", "qspi_mmap";
+		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&fabric_clk>, <&clks GCK_ID_QSPI2>;
+		clock-names = "pclk", "gclk";
+		assigned-clocks = <&clks GCK_ID_QSPI2>;
+		assigned-clock-rates = <100000000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm/dts/lan9696-ev23x71a.dts b/arch/arm/dts/lan9696-ev23x71a.dts
new file mode 100644
index 000000000000..e72abca6ed39
--- /dev/null
+++ b/arch/arm/dts/lan9696-ev23x71a.dts
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2025 Microchip Technology Inc.
+ */
+
+/dts-v1/;
+
+/* Include upstream device tree from Linux */
+#include <arm64/microchip/lan9696-ev23x71a.dts>
+
+#include "lan9691-bb.dtsi"
+
+/* Ensure serial console is enabled */
+&usart0 {
+	status = "okay";
+};
+
+&sdmmc0 {
+	pinctrl-0 = <&emmc_sd_pins>;
+	pinctrl-names = "default";
+	max-frequency = <100000000>;
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	non-removable;
+	disable-wp;
+	status = "okay";
+};
+
+&{/leds/led-status} {
+	barebox,default-trigger = "heartbeat";
+};
+
+&{/leds/led-sfp1-green} {
+	barebox,default-trigger = "heartbeat";
+};
+
+&sgpio {
+	pinctrl-0 = <&sgpio_pins>;
+	pinctrl-names = "default";
+	microchip,sgpio-port-ranges = <0 1>, <6 9>;
+	status = "okay";
+
+	gpio@0 {
+		ngpios = <128>;
+	};
+	gpio@1 {
+		ngpios = <128>;
+	};
+};
+
+&qspi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <4>;
+		m25p,fast-read;
+	};
+};
diff --git a/images/Makefile b/images/Makefile
index 91425dd3a068..644b7ee0bf93 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -193,6 +193,7 @@ include $(srctree)/images/Makefile.versatile
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
 include $(srctree)/images/Makefile.at91
+include $(srctree)/images/Makefile.microchip
 include $(srctree)/images/Makefile.zynq
 include $(srctree)/images/Makefile.zynqmp
 include $(srctree)/images/Makefile.layerscape
diff --git a/images/Makefile.microchip b/images/Makefile.microchip
new file mode 100644
index 000000000000..161396c73542
--- /dev/null
+++ b/images/Makefile.microchip
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox image generation Makefile for Microchip ARM64 SoCs
+#
+
+# Microchip LAN9696 EV23X71A Evaluation Board
+pblb-$(CONFIG_MACH_MICROCHIP_LAN9696_EV23X71A) += start_lan9696_ev23x71a
+FILE_barebox-microchip-lan9696-ev23x71a.img = start_lan9696_ev23x71a.pblb
+image-$(CONFIG_MACH_MICROCHIP_LAN9696_EV23X71A) += barebox-microchip-lan9696-ev23x71a.img
-- 
2.47.3



