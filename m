Delivery-date: Thu, 13 Aug 2026 10:15:26 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuQaz-002cMI-1T
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 10:15:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AC8DC201D2B
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 10:15:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DbOfQv0G;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4ctqA9uU3OTgtMm9fQz7NG7g5BdYxuy+8gfxAEv32Wg=; b=DbOfQv0Gpyxu4eaqOof3zrDxIv
	D0bqnYpoOK7Am26ZBGq/0t0TsvLhSsKxWKpTXzGlkyTpulKgElg4DaTjGjFor0uDepNI0UfOZfpK/
	we86Ur0/OEGiNMbuEJ84oeFUCjkCg4DmysS74Prr08qUAEZm1zlRWfhA4iHcv2w7Ybe9zwV+GU4ii
	3YLU/WGNtyT5FiEzj0a9v9CsIBuuEqCaRTVYsIq8Lyq8DAdQJ6AHereK59lEML6Gru0D8H2jmR2WP
	TmopMMUWZROW9f0pbRJhe2qfrMju9cFSWay1M4ImUCaCsnRe9FiK/QBchuMSJTKV3SwBGMFte4UbD
	ZUHe4Mzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaY-000000006JK-0FUl;
	Thu, 13 Aug 2026 08:14:58 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaU-000000006DU-1guc
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B805F201EC7;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fms-1l;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007spe-20hn;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 9/9] ARM: add Novarq Tactical 1000 board
Date: Thu, 13 Aug 2026 10:14:39 +0200
Message-ID: <20260813081444.1879009-10-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011454_791724_930ECAFD 
X-CRM114-Status: GOOD (  39.48  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add board support for the Novarq Tactical 1000, a switch built
    around the Microchip LAN9696: 24 1G ports, 4 10G SFP+ uplinks, booted as
   BL33 from TF-A. This covers the pre-production revision, which is laid out
    as a close copy of the Microchip EV23X71A reference design. It is therefore
    described by including the upstream EV23X71A device tree and corr [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: pzp6whhg6aq1tfdy6qz9f6hi1f9ei7am
X-Spamd-Result: default: False [-6.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: AC8DC201D2B

Add board support for the Novarq Tactical 1000, a switch built around
the Microchip LAN9696: 24 1G ports, 4 10G SFP+ uplinks, booted as BL33
from TF-A.

This covers the pre-production revision, which is laid out as a close
copy of the Microchip EV23X71A reference design. It is therefore
described by including the upstream EV23X71A device tree and correcting
the identity on top of it, rather than by a board device tree of its
own. The compatible is novarq,tactical-1000-alpha with
microchip,ev23x71a kept as a fallback: the board is not made by
Microchip and is not an EV23X71A, but it is electrically that design.

The shipping Tactical 1000 differs - fans, an RTC and more - and has a
device tree of its own. That one is not upstream yet; supporting the
board means a separate board entry including it, once it lands in Linux
and reaches the dts/ snapshot.

The qspi controllers the board boots from are not in the dts/ snapshot
and are not upstream yet, so they are carried in
arch/arm/dts/lan9691-bb.dtsi until a sync brings them in.

Two things are not settled and are marked as such in the code: the
hardware used for bring-up is pre-production, and the 896 MiB of DDR is
u-boot's compile-time fallback rather than a figure read from this
board.

Assisted-by: Claude-Code:claude-opus-5
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-10-o.rempel@pengutronix.de/

Changes v2:
- drop the &usart0 override: the included upstream board dts already
  sets status = "okay" with the pinctrl, so it changed nothing
- drop the &sgpio block: it was character for character the same as the
  node in the included upstream board dts, and would have drifted apart
  on the next dts/ sync
- lan9691-bb.dtsi: explain what the file is for and when it can be
  dropped, and fix the snapshot path in the comment
- board.c: drop the unused bootsource.h include
- Kconfig: extend the help text, checkpatch asked for a fuller paragraph
- lan9691-bb.dtsi: include dt-bindings/interrupt-controller/arm-gic.h
  for GIC_SPI and IRQ_TYPE_LEVEL_HIGH instead of relying on the upstream
  dts having pulled it in first
- lan9696-ev23x71a.dts: this file is new barebox code, so carry my own
  copyright rather than the one from the upstream dts it includes
- drop the heartbeat trigger on led-sfp1-green: that is the front panel
  link LED for SFP port 0, and blinking it reads as link activity
- drop the sdmmc nodes and the &sdmmc0 override. eMMC support is not
  verified on this board yet, so it is held back together with the
  atmel-sdhci patch rather than shipped untested
- enable the board in multi_v8_defconfig instead of adding a SoC
  specific defconfig, so the series is actually built by an in-tree
  configuration
- have MACH_MICROCHIP_LAN9696_EV23X71A select the clk, pinctrl, sgpio
  and reset drivers the board cannot come up without. They are selected
  from the board symbol rather than ARCH_MICROCHIP because ARCH_MICROCHIP
  is introduced before any of those drivers exist, and selecting unknown
  symbols would break bisect
- lowlevel.c: say where the 896 MiB comes from. It is u-boot's
  compile-time fallback LAN969X_DDR_SIZE_DEF, not a measured figure,
  and u-boot asks TF-A first. Querying TF-A is still to be done
- lan9691-bb.dtsi: add the copyright line it was missing
- name the board what it is. v1 and the first v2 called this
  MACH_MICROCHIP_LAN9696_EV23X71A and bound to "microchip,ev23x71a",
  but the board is not manufactured by Microchip. It is a
  pre-production Novarq Tactical 1000 built on that reference design.
  Renamed the symbol, board directory, dts, entry point and image, and
  gave the device tree its own model and compatible, keeping
  microchip,ev23x71a as a fallback
---
 arch/arm/Kconfig                              | 21 ++++++++
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/novarq-tactical-1000/Makefile |  4 ++
 arch/arm/boards/novarq-tactical-1000/board.c  | 45 ++++++++++++++++
 .../boards/novarq-tactical-1000/lowlevel.c    | 52 +++++++++++++++++++
 arch/arm/configs/multi_v8_defconfig           |  4 ++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/lan9691-bb.dtsi                  | 48 +++++++++++++++++
 arch/arm/dts/novarq-tactical-1000.dts         | 51 ++++++++++++++++++
 images/Makefile                               |  1 +
 images/Makefile.microchip                     |  9 ++++
 11 files changed, 237 insertions(+)
 create mode 100644 arch/arm/boards/novarq-tactical-1000/Makefile
 create mode 100644 arch/arm/boards/novarq-tactical-1000/board.c
 create mode 100644 arch/arm/boards/novarq-tactical-1000/lowlevel.c
 create mode 100644 arch/arm/dts/lan9691-bb.dtsi
 create mode 100644 arch/arm/dts/novarq-tactical-1000.dts
 create mode 100644 images/Makefile.microchip

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index aed6084bef07..ef26ceda8b21 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -309,6 +309,27 @@ source "arch/arm/mach-tegra/Kconfig"
 source "arch/arm/mach-zynq/Kconfig"
 source "arch/arm/mach-zynqmp/Kconfig"
 
+if ARCH_MICROCHIP
+
+config MACH_NOVARQ_TACTICAL_1000
+	bool "Novarq Tactical 1000"
+	select COMMON_CLK_LAN966X
+	select PINCTRL_OCELOT
+	select GPIO_MICROCHIP_SGPIO
+	select RESET_CONTROLLER
+	select RESET_MICROCHIP_SPARX5
+	help
+	  Support for the Novarq Tactical 1000, a switch built around the
+	  Microchip LAN9696: 24 1G ports plus 4 10G SFP+ uplinks, an ARM64
+	  CPU and AT91/SAMA5 compatible peripherals. barebox runs as the
+	  BL33 payload started by TF-A and can update itself into the FIP
+	  image on the QSPI NOR.
+
+	  This covers the pre-production revision, which is laid out as a
+	  close copy of the Microchip EV23X71A reference design.
+
+endif # ARCH_MICROCHIP
+
 config BOARD_ARM_VIRT
 	bool
 	select BOARD_GENERIC_DT
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index fbcf14748ad7..14652fba0206 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -117,6 +117,7 @@ obj-$(CONFIG_MACH_SAMA5D27_GIANTBOARD)		+= sama5d27-giantboard/
 obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
+obj-$(CONFIG_MACH_NOVARQ_TACTICAL_1000)		+= novarq-tactical-1000/
 obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS)	+= microchip-sama5d3-eds/
 obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
 obj-$(CONFIG_MACH_SAMA5D4_WIFX)			+= sama5d4_wifx/
diff --git a/arch/arm/boards/novarq-tactical-1000/Makefile b/arch/arm/boards/novarq-tactical-1000/Makefile
new file mode 100644
index 000000000000..5678718188b9
--- /dev/null
+++ b/arch/arm/boards/novarq-tactical-1000/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/novarq-tactical-1000/board.c b/arch/arm/boards/novarq-tactical-1000/board.c
new file mode 100644
index 000000000000..f339ee5d271e
--- /dev/null
+++ b/arch/arm/boards/novarq-tactical-1000/board.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2026 Oleksij Rempel <o.rempel@pengutronix.de>
+ *
+ * Novarq Tactical 1000, a LAN9696 based 24x1G + 4x10G switch.
+ *
+ * This supports the pre-production revision, which is built as a close
+ * copy of the Microchip EV23X71A reference design - hence the
+ * novarq,tactical-1000-alpha compatible and a device tree that includes
+ * the upstream EV23X71A one. The board is not manufactured by Microchip
+ * and is not an EV23X71A, so it does not claim to be one, but it is
+ * electrically that design.
+ *
+ * The shipping Tactical 1000 differs (fans, RTC, ...) and has a device
+ * tree of its own. Supporting that board means adding a board entry
+ * which includes it, not extending this one.
+ */
+
+#include <bbu.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+
+static int tactical1000_probe(struct device *dev)
+{
+	bbu_register_std_file_update("nor", BBU_HANDLER_FLAG_DEFAULT,
+				     "/dev/m25p0", filetype_fip);
+	return 0;
+}
+
+static const struct of_device_id tactical1000_of_match[] = {
+	{
+		.compatible = "novarq,tactical-1000-alpha",
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver tactical1000_board_driver = {
+	.name = "board-novarq-tactical-1000",
+	.probe = tactical1000_probe,
+	.of_compatible = tactical1000_of_match,
+};
+coredevice_platform_driver(tactical1000_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(tactical1000_of_match);
diff --git a/arch/arm/boards/novarq-tactical-1000/lowlevel.c b/arch/arm/boards/novarq-tactical-1000/lowlevel.c
new file mode 100644
index 000000000000..0ac4b40dbc99
--- /dev/null
+++ b/arch/arm/boards/novarq-tactical-1000/lowlevel.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2026 Oleksij Rempel <o.rempel@pengutronix.de>
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_z_novarq_tactical_1000_start[];
+
+/*
+ * Novarq Tactical 1000 memory map.
+ *
+ * DDR is mapped at 0x60000000. The 896 MiB used here is deliberately
+ * conservative and is NOT a measured figure for this board: it is
+ * u-boot's compile-time default LAN969X_DDR_SIZE_DEF from
+ * include/configs/lan969x.h, whose comment attributes the missing
+ * eighth of the gigabyte to ECC. LAN969X uses in-line ECC, which does
+ * consume roughly an eighth of the array, so the ratio is plausible,
+ * but nothing here has been checked against the fitted parts.
+ *
+ * u-boot itself only uses that constant as a fallback: dram_init()
+ * asks TF-A via tfa_get_dram_size() first. Under-reporting is safe -
+ * barebox simply uses less of the array - so this is fine for
+ * bring-up, but querying TF-A for the real size is the correct fix and
+ * is still to be done.
+ *
+ * The top 2 MiB is kept out of the region handed to barebox. There is
+ * no derivation behind that number: it is what worked when starting
+ * barebox as a second stage after u-boot, and without it the handover
+ * did not come up.
+ *
+ * FIXME: find out whether this is still needed, and whether 2 MiB is
+ * the right amount, on a system running TF-A plus barebox only.
+ */
+#define TACTICAL1000_DRAM_BASE		UL(0x60000000)
+#define TACTICAL1000_DRAM_SIZE		(896 * SZ_1M)
+#define TACTICAL1000_UBOOT_RESERVE	SZ_2M
+#define TACTICAL1000_DRAM_USABLE	(TACTICAL1000_DRAM_SIZE - TACTICAL1000_UBOOT_RESERVE)
+#define TACTICAL1000_DRAM_USABLE_END	(TACTICAL1000_DRAM_BASE + TACTICAL1000_DRAM_USABLE)
+
+ENTRY_FUNCTION_WITHSTACK(start_novarq_tactical_1000,
+			 TACTICAL1000_DRAM_USABLE_END, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+
+	barebox_arm_entry(TACTICAL1000_DRAM_BASE, TACTICAL1000_DRAM_USABLE,
+			  runtime_address(__dtb_z_novarq_tactical_1000_start));
+}
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index fad10669e114..7b1ddea96e8a 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -2,9 +2,11 @@ CONFIG_ARCH_ARM64_VIRT=y
 CONFIG_ARCH_BCM283X=y
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_K3=y
+CONFIG_ARCH_MICROCHIP=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_ZYNQMP=y
+CONFIG_MACH_NOVARQ_TACTICAL_1000=y
 CONFIG_MACH_RPI3=y
 CONFIG_MACH_RPI_CM3=y
 CONFIG_MACH_RPI4=y
@@ -197,6 +199,8 @@ CONFIG_NET_USB_SMSC95XX=y
 CONFIG_NET_USB_RTL8152=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
 CONFIG_DRIVER_SPI_IMX=y
+CONFIG_SPI_ATMEL_QUADSPI=y
+CONFIG_SPI_MEM=y
 CONFIG_SPI_NXP_FLEXSPI=y
 CONFIG_SPI_ROCKCHIP=y
 CONFIG_I2C_GPIO=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b82f6c96fca2..75bc41a08b28 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -257,6 +257,7 @@ lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-ls1046a-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-arkona-at300.dtb.o
 lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
+lwl-$(CONFIG_MACH_NOVARQ_TACTICAL_1000) += novarq-tactical-1000.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
 lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcustomboard.dtb.o
diff --git a/arch/arm/dts/lan9691-bb.dtsi b/arch/arm/dts/lan9691-bb.dtsi
new file mode 100644
index 000000000000..5dbe671e9f67
--- /dev/null
+++ b/arch/arm/dts/lan9691-bb.dtsi
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2026 Oleksij Rempel <o.rempel@pengutronix.de>
+ *
+ * Barebox-only overlay for the LAN9691 SoC. dts/src/arm64/microchip/
+ * lan9691.dtsi is a wholesale snapshot of the Linux device trees and
+ * must not be patched locally, so SoC nodes barebox needs but that
+ * snapshot does not carry are added here instead - currently the qspi
+ * controllers.
+ *
+ * Once a dts/ sync brings a node in, drop it from here. When nothing is
+ * left, delete the file; nothing else needs touching.
+ */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <arm64/microchip/clk-lan9691.h>
+
+&axi {
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
diff --git a/arch/arm/dts/novarq-tactical-1000.dts b/arch/arm/dts/novarq-tactical-1000.dts
new file mode 100644
index 000000000000..188ca60d4e80
--- /dev/null
+++ b/arch/arm/dts/novarq-tactical-1000.dts
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2026 Oleksij Rempel <o.rempel@pengutronix.de>
+ */
+
+/dts-v1/;
+
+/*
+ * This is the pre-production Tactical 1000, which is laid out as a close
+ * copy of the Microchip EV23X71A reference design. So rather than carry a
+ * board device tree of our own, include the upstream EV23X71A one and
+ * correct the identity on top of it. That describes the hardware
+ * accurately and keeps the delta reviewable.
+ *
+ * The shipping Tactical 1000 is a different board - it gains fans, an
+ * RTC and more - and has its own device tree, lan9696-tactical-1000.dts.
+ * Production hardware should get its own board entry including that
+ * file instead; this one stays for the pre-production boards.
+ */
+#include <arm64/microchip/lan9696-ev23x71a.dts>
+
+#include "lan9691-bb.dtsi"
+
+/ {
+	model = "Novarq Tactical 1000 (pre-production, EV23X71A based)";
+	/*
+	 * microchip,ev23x71a is kept as a fallback on purpose: this board
+	 * really is that design, so anything keyed on the eval board applies.
+	 */
+	compatible = "novarq,tactical-1000-alpha", "microchip,ev23x71a",
+		     "microchip,lan9696", "microchip,lan9691";
+};
+
+&{/leds/led-status} {
+	barebox,default-trigger = "heartbeat";
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
index 000000000000..2368febe843d
--- /dev/null
+++ b/images/Makefile.microchip
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox image generation Makefile for Microchip ARM64 SoCs
+#
+
+# Novarq Tactical 1000 (Microchip LAN9696)
+pblb-$(CONFIG_MACH_NOVARQ_TACTICAL_1000) += start_novarq_tactical_1000
+FILE_barebox-novarq-tactical-1000.img = start_novarq_tactical_1000.pblb
+image-$(CONFIG_MACH_NOVARQ_TACTICAL_1000) += barebox-novarq-tactical-1000.img
-- 
2.47.3



