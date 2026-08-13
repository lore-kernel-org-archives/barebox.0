Delivery-date: Thu, 13 Aug 2026 17:28:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMS-002ilV-2u
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:28:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 18DED2021DA
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:28:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JCMFJOku;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="vFRCl/Ah";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+zr2lYDwEpRrXeP28eLuSj8JXCLSHDPNZ3zDF1RRmsw=; b=JCMFJOkum2g7DXKyg55TbJMJ3m
	PHMoDwLiD/XHdzn/ujQTL8AIlFxlV44jCGrCRGYdsVZmj6Bs8sMzRZ7d48H+0rtMDjy3K9gmBMZP/
	pS49uVe8yMMgXP7VbVvV/6zd17vEeiYuiUiLkIljySXhiGEjNqyaDZLPZg6IJnf3TAC8KWeSVcb7W
	y82dq0VAN2ClQjP4aEulMGnvyvRobnTlsaIwzhYoTyFAIsHOZAlN4u4WnL1G85aGe9QLuU2IqOGK8
	37LT/+sNQ58gZRdaHxa8fsr0c4WiqT70nnuB4IORHO52quHCE+c8njGGAtXLBZ1l7uCZsjQDV2aaW
	8O5+w9mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK9-000000010Vg-27Rc;
	Thu, 13 Aug 2026 15:26:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK6-000000010T6-3fNb
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 79C97418E7;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5CAE7C2BCF7;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=JAko4//CI2EpxK5e9BnCEMlZWKG4Ni00vbSWKiYrPks=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=vFRCl/AhU2W9CeLAVBd7+Lv2ny7n4Fm4S657eqDJ1KSyNhI7nJj236k/rge/5SEFV
	 VMIsibsbLbTTlkDtFpJpzgpJ7WUXzOU7T21UAuYGKLS1jvmJum7o6GzueaT+HVZFMM
	 HbpaOfxooDQYRmn7clg3YCzzqInncqQnYNmAsJuFTqsoCAUbbyE77XLivyqgagmNQ6
	 bqhDFd0YmGrzo7NWI7VmPnpoBqNpK1/N4Ks/FwCtxjeo5502ocBzp8Bi3ozN8ZDqkW
	 ejC2FhMV+cSroTExBkRIXrP3TKxZBIpBYo9ABSGyUMeoY6O4IftTtCaz8rugFHSgmX
	 PQOpc52zhvYeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42DDBC5B572;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:23 +0200
Subject: [PATCH v4 03/14] ARM: mvebu: improve Netgear RN104 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260813-rn102-rn104-series-v4-3-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=10128;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=e+eRhaXJiXJHCoGv8Yy/eeK7JEFaUk9K6rcTvMEkTYA=;
 b=dv16T1jtXcXDQIDJrNMu7uU0iEW7U2tHfKmJKtsidfxme5hnkQGqAA5+fb83IF7JqsWOueJDS
 /Wx/lhgOqw4Dgbiax3RNvx5XellpFG+U8JyY+fIfiryGAKP99fgf4LT
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: dj3r5zu7abijzsdey4rpxuccsmj98uso
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	DBL_PROHIBIT(0.00)[0.28.253.224:email,0.0.0.0:email,0.6.26.128:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: 18DED2021DA

From: Luca Lauro <famlauro93l@gmail.com>

This updates full support for the Netgear ReadyNAS 104, including:

	- board driver matching on "netgear,rn104"
	- bay management placeholder
	- deep-probe use to ensure early GPIO availability
 	- lowlevel initialization
	- barebox overlay with environment, state backend,
		NAND partition layout and fastboot node
	- image support

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 arch/arm/boards/netgear-rn104/Makefile   |   1 +
 arch/arm/boards/netgear-rn104/board.c    | 170 +++++++++++++++++++++++++++++++
 arch/arm/boards/netgear-rn104/lowlevel.c |  37 +++++--
 arch/arm/dts/armada-370-rn104-bb.dts     |  85 +++++++++++++++-
 images/Makefile.mvebu                    |   3 +-
 5 files changed, 287 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/netgear-rn104/Makefile b/arch/arm/boards/netgear-rn104/Makefile
index 458f520900..da63d2625f 100644
--- a/arch/arm/boards/netgear-rn104/Makefile
+++ b/arch/arm/boards/netgear-rn104/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/netgear-rn104/board.c b/arch/arm/boards/netgear-rn104/board.c
new file mode 100644
index 0000000000..1611054886
--- /dev/null
+++ b/arch/arm/boards/netgear-rn104/board.c
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <driver.h>
+#include <of.h>
+#include <linux/device.h>
+#include <linux/mbus.h>
+#include <mach/mvebu/armada-370-xp-regs.h>
+#include <bbu.h>
+
+/*
+ * RN104 bay management is PCA9554-based and currently unimplemented.
+ * Placeholder logic is kept for future extension.
+ */
+
+#define GPIO_BLINK_EN			0x08
+#define GPIO_BLINK_CNT_SEL		0x20
+#define GPIO_BLINK_CNT_A_ON		0xc0
+#define GPIO_BLINK_CNT_A_OFF	0xc4
+
+/*
+ * we use GPIO for:
+ *	- reading disk presence monitoring pins
+ *	- enable powerup for bays that detect disk presence
+ *	- display bay status with dedicated LEDs
+ */
+
+static void gpio_blink(struct device *dev, int pin, int on_ms, int off_ms)
+{
+	struct device_node *np;
+	struct regmap *map;
+	u32 v;
+
+	np = of_find_node_by_alias(NULL, "gpio0");
+	if (!np) {
+		pr_warn("gpio0 alias not found\n");
+		return;
+	}
+
+	map = syscon_node_to_regmap(np);
+	if (IS_ERR(map)) {
+		pr_warn("gpio0 regmap not available\n");
+		return;
+	}
+
+	/* set blink counter A on and off time in core clok cycles */
+	regmap_write(map, GPIO_BLINK_CNT_A_ON, 10 * on_ms);
+	regmap_write(map, GPIO_BLINK_CNT_A_OFF, 10 * off_ms);
+
+	/* select blink counter A for this pin */
+	regmap_read(map, GPIO_BLINK_CNT_SEL, &v);
+	v &= ~(1 << pin);
+	regmap_write(map, GPIO_BLINK_CNT_SEL, v);
+
+	/* enable blink */
+	regmap_read(map, GPIO_BLINK_EN, &v);
+	v |= (1 << pin);
+	regmap_write(map, GPIO_BLINK_EN, v);
+}
+
+static void gpio_blink_disable(struct device *dev, int pin)
+{
+	struct device_node *np;
+	struct regmap *map;
+	u32 v;
+
+	np = of_find_node_by_alias(NULL, "gpio0");
+	if (!np)
+		return;
+
+	map = syscon_node_to_regmap(np);
+	if (IS_ERR(map))
+		return;
+
+	regmap_read(map, GPIO_BLINK_EN, &v);
+	v &= ~(1 << pin);
+	regmap_write(map, GPIO_BLINK_EN, v);
+}
+
+/* HDD bays description */
+
+enum disk_state {
+	DISK_ABSENT = 0,
+	DISK_PRESENT,
+	DISK_READY,
+};
+
+struct rn104_disk_bay {
+	int gpio_detect;	/* input, active-low */
+	int gpio_power;		/* output */
+	int gpio_led;		/* output, active-low */
+	enum disk_state state;
+};
+
+#define RN104_NUM_DISK_BAYS 1
+
+static struct rn104_disk_bay rn104_bays[RN104_NUM_DISK_BAYS] = {
+	{ -1, -1, -1, DISK_ABSENT }, /* placeholder */
+};
+
+static void setup_bays(void)
+{
+	pr_info("RN104: bay management not implemented (PCA9554-based)\n");
+}
+
+static void init_disks(void)
+{
+	pr_info("RN104: disk spin-up logic not implemented\n");
+}
+
+/*
+ *  USB0 → DRAM MBUS windows
+ *
+ * frontal USB 2.0 port of RN104 is connected to the SoC usb0.
+ * Here we enable MBUS windows toward all the DRAM using
+ * informations already gathered by mvebu_mbus_dram_info().
+ *
+ * NOTE: Armada 370-XP EHCI controller shows instability when the periodic
+ * schedule is enabled.
+ */
+static void setup_usb0(void)
+{
+	writel(0x2, 0xf1051404);	/* enable force suspend */
+	u32 pwr = readl(0xf1051400);
+	pwr &= ~BIT(2);
+	writel(pwr, 0xf1051400);	/* force SUSPENDM=0 */
+}
+
+/*
+ * RN104 board driver
+ *
+ * Preferred pattern: board-specific code as a platform driver
+ * matching on the root DT node ("netgear,rn104").
+ */
+static int rn104_probe(struct device *dev)
+{
+	of_device_ensure_probed_by_alias("gpio0");
+	of_device_ensure_probed_by_alias("gpio1");
+	of_device_ensure_probed_by_alias("gpio2");
+
+	/* CFU configuration */
+	writel(0xC6, 0xf1020228);
+
+	setup_usb0();
+	setup_bays();
+	init_disks();
+
+	/* Barebox Update handlers */
+	bbu_register_std_file_update("bootloader", 0,
+					 "/dev/nand0.bootloader",
+					 filetype_kwbimage_v1);
+
+	return 0;
+}
+
+static const struct of_device_id rn104_of_match[] = {
+	{ .compatible = "netgear,rn104" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, rn104_of_match);
+
+static struct driver rn104_driver = {
+	.name = "rn104",
+	.probe = rn104_probe,
+	.of_match_table = rn104_of_match,
+};
+
+coredevice_platform_driver(rn104_board_driver);
diff --git a/arch/arm/boards/netgear-rn104/lowlevel.c b/arch/arm/boards/netgear-rn104/lowlevel.c
index e693d13993..2d2c097bfc 100644
--- a/arch/arm/boards/netgear-rn104/lowlevel.c
+++ b/arch/arm/boards/netgear-rn104/lowlevel.c
@@ -1,16 +1,39 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-/*
- * Copyright (C) 2014  Uwe Kleine-Koenig <uwe@kleine-koenig.org>
- */
-
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <mach/mvebu/barebox-arm-head.h>
 #include <mach/mvebu/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/armada-370-xp-regs.h>
 
 extern char __dtb_armada_370_rn104_bb_start[];
 
+#define INTERNAL_REG_BASE_ADDR	0x20080
+
+static __always_inline void mvebu_remap_registers(void)
+{
+	void __iomem *base = mvebu_get_initial_int_reg_base();
+
+	writel(MVEBU_REMAP_INT_REG_BASE, base + INTERNAL_REG_BASE_ADDR);
+}
+
+static unsigned long armada_370_xp_memory_find(void)
+{
+	unsigned long mem_size = 0;
+
+	for (int cs = 0; cs < 4; cs++) {
+		u32 ctrl = readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
+
+		/* Skip non-enabled CS */
+		if ((ctrl & DDR_SIZE_ENABLED) != DDR_SIZE_ENABLED)
+			continue;
+
+		mem_size += (ctrl | ~DDR_SIZE_MASK) + 1;
+	}
+
+	return mem_size;
+}
+
 ENTRY_FUNCTION_MVEBU(start_netgear_rn104, r0, r1, r2)
 {
 	void *fdt;
@@ -20,5 +43,7 @@ ENTRY_FUNCTION_MVEBU(start_netgear_rn104, r0, r1, r2)
 	fdt = __dtb_armada_370_rn104_bb_start +
 		get_runtime_offset();
 
-	armada_370_xp_barebox_entry(fdt);
+	mvebu_remap_registers();
+	barebox_arm_entry(0, armada_370_xp_memory_find(), fdt);
+	// armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/armada-370-rn104-bb.dts b/arch/arm/dts/armada-370-rn104-bb.dts
index b786ef350a..35702d6f6c 100644
--- a/arch/arm/dts/armada-370-rn104-bb.dts
+++ b/arch/arm/dts/armada-370-rn104-bb.dts
@@ -5,9 +5,92 @@
 #include "arm/marvell/armada-370-netgear-rn104.dts"
 
 / {
-	barebox,disable-deep-probe;
+	barebox,deep-probe;
 
 	chosen {
 		stdout-path = &uart0;
 	};
+
+	aliases {
+		state = &state_nand;
+	};
+
+	/* configure nand partition to store barebox environment */
+	environment {
+		compatible = "barebox,environment";
+		device-path = &nand_controller, "partname:environment";
+	};
+
+	/* configure nand partition to store barebox-state backend */
+	state_nand: nand_state_memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0xab67421f>;
+		backend-type = "raw";
+		backend = <&backend_state_nand>;
+		backend-storage-type = "circular";
+		backend-stridesize = <32>;
+
+		variable@0 {
+			reg = <0x0 0x1>;
+			type = "uint8";
+			default = <0x1>;
+		};
+	};
+};
+
+&nand_controller {
+	compatible = "marvell,armada370-nand", "marvell,pxa3xx-nand";
+	status = "okay";
+
+	nand-rb = <0>;
+	marvell,nand-keep-config;
+	nand-on-flash-bbt;
+
+	nand-ecc-strength = <4>;
+	nand-ecc-step-size = <512>;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "bootloader";
+			reg = <0x0 0x400000>;
+		};
+
+		partition@400000 {
+			label = "environment";
+			reg = <0x400000 0x80000>;
+		};
+
+		backend_state_nand: partition@480000 {
+			label = "state";
+			reg = <0x480000 0x80000>;
+		};
+
+		partition@500000 {
+			label = "kernel";
+			reg = <0x500000 0x1400000>;
+		};
+
+		partition@1900000 {
+			label = "minirootfs";
+			reg = <0x1900000 0x6000000>;
+		};
+	};
+};
+
+fastboot {
+	partition@kernel {
+		label = "kernel";
+		reg = <0x500000 0x1400000>;
+	};
+
+	partition@minirootfs {
+		label = "minirootfs";
+		reg = <0x1900000 0x6000000>;
+	};
 };
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 1741f0e9a5..106a302cfa 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -37,10 +37,9 @@ image-$(CONFIG_MACH_NETGEAR_RN102) += barebox-netgear-rn102.img
 FILE_barebox-netgear-rn102-2nd.img = start_netgear_rn102.pblb
 image-$(CONFIG_MACH_NETGEAR_RN102) += barebox-netgear-rn102-2nd.img
 
-FLAGS_start_netgear_rn104.pblb.mvebu1img = -d 0x600000 -e 0x6e0000
 BOOTSRC_start_netgear_rn104.pblb.mvebu1img = nand
 BINHDR_start_netgear_rn104.pblb.mvebu1img = $(board)/netgear-rn104/binary.0
-FLAGS_start_netgear_rn104.pblb.mvebu1img = -B 0x20000:1
+FLAGS_start_netgear_rn104.pblb.mvebu1img = -B 0x20000:1 -d 0x0 -e 0x0
 FILE_barebox-netgear-rn104.img = start_netgear_rn104.pblb.mvebu1img
 pblb-$(CONFIG_MACH_NETGEAR_RN104) += start_netgear_rn104
 image-$(CONFIG_MACH_NETGEAR_RN104) += barebox-netgear-rn104.img

-- 
2.47.3




