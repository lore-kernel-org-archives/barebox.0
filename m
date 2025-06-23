Delivery-date: Mon, 23 Jun 2025 19:06:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcv-00AKf3-1X
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 19:06:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcs-00047P-Ax
	for lore@pengutronix.de; Mon, 23 Jun 2025 19:06:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NqshOOJv0IQKgnq/vGKh4IwdBFAS4p8PoqHruoJrKxs=; b=w5QWefpCO0EFhccyySk+GVFCwg
	3M8nyl4nvhysHgWGYF6lXTL0Clb/qyAbXc6+fzZt5toxpz6eiMJCekI7LAnwfDrTJdtUE6m901Bo4
	fjYMvXJISl/PA1VbQmv7wquNllUuyiyLIHZyDRqJ0mz7kWuU9JvQk78zZESIXt6ChiT1n2ZIwV2la
	26IpcCrB5v11oljxRuFROKP7bk2imkl5i7fTjHnRkP8JuVgWq8dfu7+WbcOYsY32/QrwNwUvABMtU
	8XppcgGVqBnqGDv3+9MhKpR0OYTAtkl8DLQlfdOqnnWOuo1KlmN4oOoj/s1l0LaOpbuvZCAUX+pUc
	3IXO+uIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTkc8-00000003Vil-1law;
	Mon, 23 Jun 2025 17:05:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgS-00000002xMo-21eo
	for barebox@bombadil.infradead.org;
	Mon, 23 Jun 2025 13:58:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=NqshOOJv0IQKgnq/vGKh4IwdBFAS4p8PoqHruoJrKxs=; b=h5TBDECn6d3np4jFQduuTcxPvJ
	Ef/6O6Ugko4UKomwQrLt/venx1iP2RLgy4bXHIG/Sp0kT22CHga6ChMSPkH4D6StbLMaCJrA2bhts
	jQo6m+qJH9iH0M1rsBD5mWiy7WV7nfcxQncAREqMLt8A28tomS1R64FmjlfAqvzMMqaFApWROTMCM
	aLDTy/ldiUVRbtUP30SpyWd1Yi3BpzxRmFd4sX/ipKDQcZ5mv59HmrganoMJVnj5iePsWj2Pb0UlV
	k0vEdKB+4Ij86tAwmsvRlnwhkyaHBatr1Iyfb/L94ba7ovVbUZ0MrD46YB+a4zx12mzSwifAi6UT+
	DKFkN/Xw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgO-00000005EPS-20fw
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 13:58:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uThgN-0000r6-Ed; Mon, 23 Jun 2025 15:57:59 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 23 Jun 2025 15:57:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-10-e9de9e31b2c1@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_145801_003949_9376093D 
X-CRM114-Status: GOOD (  18.73  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/10] ARM: socfpga: add Arrow AXE5 Agilex5 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the Agilex5-based Arrow AXE5-Eagle board.
It consists among other things of:
  - Agilex5 SoCFPGA
  - 1 GB LPDDR4 SDRAM for HPS
  - 1 GB LPDDR4 SDRAM for FPGA
  - 1 Gb QSPI for configuration via SDM
  - microSD
  - 4-port USB hub
  - 2x 1Gb Ethernet
  - HDMI output

Sadly, the Agilex5 is (again, like other SoCFPGA) heavily
size-constrained with the barebox image. The multi_v8 defconfig will
result in an image that can't be flashed via JTAG. The quartus tools
will just fail with a not-so-helpful error message. Therefore provide an
agilex5_defconfig that fits.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/Makefile                    |  1 +
 arch/arm/boards/arrow-axe5-eagle/Makefile   |  3 +
 arch/arm/boards/arrow-axe5-eagle/board.c    | 24 ++++++++
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 78 ++++++++++++++++++++++++
 arch/arm/configs/socfpga-agilex5_defconfig  | 81 +++++++++++++++++++++++++
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/dts/socfpga_agilex5_axe5_eagle.dts | 92 +++++++++++++++++++++++++++++
 images/Makefile.socfpga                     |  9 +++
 8 files changed, 289 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 908497cd8b0509bdca01c9ccfbb1501654051bda..22a9359ed57ab6303654b8b9516059b4b8df74a9 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -115,6 +115,7 @@ obj-$(CONFIG_MACH_SAMA5D4_WIFX)			+= sama5d4_wifx/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
 obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
+obj-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE)	+= arrow-axe5-eagle/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1)	+= enclustra-aa1/
 obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
diff --git a/arch/arm/boards/arrow-axe5-eagle/Makefile b/arch/arm/boards/arrow-axe5-eagle/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..1d052d28c9fc6a82dbf806eedac60fac8a56d4f9
--- /dev/null
+++ b/arch/arm/boards/arrow-axe5-eagle/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/arrow-axe5-eagle/board.c b/arch/arm/boards/arrow-axe5-eagle/board.c
new file mode 100644
index 0000000000000000000000000000000000000000..b0c4b2034a774d2b3aabba9c9afa61661c2ad317
--- /dev/null
+++ b/arch/arm/boards/arrow-axe5-eagle/board.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <bbu.h>
+#include <mach/socfpga/soc64-regs.h>
+
+static int axe5_probe(struct device *dev)
+{
+	return 0;
+}
+
+static const struct of_device_id axe5_of_match[] = {
+	{ .compatible = "arrow,axe5-eagle" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(axe5_of_match);
+
+static struct driver axe5_board_driver = {
+	.name = "board-arrow-axe5-eagle",
+	.probe = axe5_probe,
+	.of_compatible = axe5_of_match,
+};
+device_platform_driver(axe5_board_driver);
diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
new file mode 100644
index 0000000000000000000000000000000000000000..8078f0d7974c0612f3da6190b9a61d84c6b222cf
--- /dev/null
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <io.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <pbl.h>
+#include <mach/socfpga/debug_ll.h>
+#include <mach/socfpga/init.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/mailbox_s10.h>
+#include <mach/socfpga/soc64-firewall.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-sdram.h>
+#include <mach/socfpga/soc64-system-manager.h>
+
+extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
+
+#define AXE5_STACKTOP	(SZ_512K)
+
+static noinline void axe5_eagle_continue(void)
+{
+	void *fdt;
+
+	agilex5_clk_init();
+
+	socfpga_uart_setup_ll();
+	pbl_set_putc(socfpga_uart_putc, (void *) SOCFPGA_UART0_ADDRESS);
+
+	pr_debug("Lowlevel init done\n");
+
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x224);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x228);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x23c);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x234);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x248);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x24c);
+
+	writel(0x410, 0x10c03304);
+	writel(0x410, 0x10c03300);
+	/* reset the phy via GPIO10. We currently haven't got enough space
+	 * to enable the gpio driver in barebox. */
+	writel(0x000, 0x10c03300);
+	/* FIXME:  can this be decreased? */
+	mdelay(1000);
+	writel(0x410, 0x10c03300);
+
+	if (current_el() == 3) {
+		agilex5_initialize_security_policies();
+		pr_debug("Security policies initialized\n");
+
+		/* need to set the bank select enable before the agilex5_ddr_init_full()
+		 * otherwise the serial doesn't show anything.  */
+		if (!IS_ENABLED(CONFIG_DEBUG_LL))
+		    writel(LCR_BKSE, SOCFPGA_UART0_ADDRESS + LCR);
+		agilex5_ddr_init_full();
+
+		socfpga_mailbox_s10_init();
+		socfpga_mailbox_s10_qspi_open();
+
+		agilex5_load_and_start_image_via_tfa(SZ_1G);
+	}
+
+	fdt = __dtb_z_socfpga_agilex5_axe5_eagle_start;
+
+	barebox_arm_entry(SOCFPGA_AGILEX5_DDR_BASE + SZ_1M, SZ_1G - SZ_1M, fdt);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_socfpga_agilex5_axe5_eagle, AXE5_STACKTOP, r0, r1, r2)
+{
+	if (current_el() == 3)
+		socfpga_agilex5_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	axe5_eagle_continue();
+}
diff --git a/arch/arm/configs/socfpga-agilex5_defconfig b/arch/arm/configs/socfpga-agilex5_defconfig
new file mode 100644
index 0000000000000000000000000000000000000000..4224d1e1065e7f6d6c76f0e0eda03acf26619f21
--- /dev/null
+++ b/arch/arm/configs/socfpga-agilex5_defconfig
@@ -0,0 +1,81 @@
+CONFIG_ARCH_SOCFPGA=y
+CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_PROMPT="barebox> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
+CONFIG_SYSTEM_PARTITIONS=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_PRINTF_FULL=y
+CONFIG_CMD_DMESG=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_OF_OVERLAY_LIVE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_DESIGNWARE_XGMAC_SOCFPGA=y
+CONFIG_ADIN_PHY=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+# CONFIG_PINCTRL is not set
+CONFIG_ARM_SCMI_PROTOCOL=y
+# CONFIG_VIRTIO_MENU is not set
+CONFIG_MAILBOX=y
+CONFIG_FS_TFTP=y
+CONFIG_ZLIB=y
+CONFIG_CRC_CCITT=y
+CONFIG_NLS=y
+CONFIG_DIGEST_SHA256_GENERIC=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 3044c9bf120f9ece9564164b3fa569f4b7be1881..fdf9a90211d6ca672013ac0e7c8dcca27b3e4deb 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -144,6 +144,7 @@ lwl-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += socfpga_cyclone5_de10_nano.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += socfpga_agilex5_axe5_eagle.dtb.o
 lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
diff --git a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
new file mode 100644
index 0000000000000000000000000000000000000000..f67b974f2adc6f2fe8e2066ca066b1aaefff53d5
--- /dev/null
+++ b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier:     GPL-2.0
+/*
+ * Copyright (C) 2024 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ */
+
+#include <arm64/intel/socfpga_agilex5.dtsi>
+#include "socfpga_agilex5.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex5 AXE5-Eagle";
+	compatible = "arrow,axe5-eagle", "intel,socfpga-agilex","altr,socfpga";
+
+	aliases {
+		serial0 = &uart0;
+		ethernet0 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	memory@80100000 {
+		device_type = "memory";
+		reg = <0 0x80100000 0 0x3ff00000>;
+	};
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&qspi {
+	status = "okay";
+
+	flash0: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "mt25qu02g";
+		reg = <0>;
+		spi-max-frequency = <100000000>;
+
+		m25p,fast-read;
+		cdns,page-size = <256>;
+		cdns,block-size = <16>;
+		cdns,read-delay = <1>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			qspi_boot: partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x04200000>;
+			};
+
+			root: partition@4200000 {
+				label = "root";
+				reg = <0x04200000 0x0BE00000>;
+			};
+		};
+	};
+};
+
+&gmac2 {
+	status = "okay";
+	phy-mode = "rgmii-id";
+	phy-handle = <&emac2_phy0>;
+
+	max-frame-size = <9000>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		emac2_phy0: ethernet-phy@1 {
+			snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
+			snps,reset-delays-us = <0 10000 10000>;
+			reg = <0x1>;
+			adi,rx-internal-delay-ps = <2000>;
+			adi,tx-internal-delay-ps = <2000>;
+		};
+	};
+};
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 807ca78e4ac8636382107f844eeb83ba9007a583..db1a47b6a1ad7f6a7d08036bdeed6a50b707ac47 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -87,6 +87,15 @@ pblb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += start_socfpga_socrates
 FILE_barebox-socfpga-socrates.img = start_socfpga_socrates.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates.img
 
+# ----------------------- Agilex5 based boards ---------------------------
+pblb-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += start_socfpga_agilex5_axe5_eagle
+FILE_barebox-socfpga-agilex5-axe5-eagle.img = start_socfpga_agilex5_axe5_eagle.pblb.hex
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += barebox-socfpga-agilex5-axe5-eagle.img
+
+pblb-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += start_socfpga_agilex5_axe5_eagle
+FILE_barebox-socfpga-agilex5-axe5-eagle-2nd.img = start_socfpga_agilex5_axe5_eagle.pblb
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += barebox-socfpga-agilex5-axe5-eagle-2nd.img
+
 ifdef CONFIG_ARCH_SOCFPGA_XLOAD
 image-y += $(socfpga-xload-y)
 else

-- 
2.46.0



