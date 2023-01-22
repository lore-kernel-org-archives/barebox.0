Delivery-date: Sun, 22 Jan 2023 18:53:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXE-002Gj1-WF
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 18:53:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXC-00040s-Lz
	for lore@pengutronix.de; Sun, 22 Jan 2023 18:53:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ZkA2KifLC7vpty7uUrtmPC8ZlYWOAbupylWwbC2P3w=; b=kP571DG+aQeLxLrrf30qqa8mOg
	2G/QjU8s0ZNvx9dvCHyrNobU1CQRxsRuoKm8MtAaowHeOBS76qXTOt3WKdSdGo6g9f4WLZr8DB2Q1
	uD5oEQVAB23Pafw12Z2kw2vSXSsAuJ0v4d3M/Jb0FRK5x91tG1UE677eIKLAkskS7WVKBrIwjp+7f
	CHr6EMtRuoON+cM/h6gXzoppWmybqeWKodExh+GUE0keqM6WrdnRoRBiTe7oPe25JXGxPdnPTE56J
	l/8W1WwmaHGvv2MemBsbY7Ae20vDhe88TnXUf6PmXv3LwemaJWtxoAA4arfsb8XOtnY04peP6HroB
	sdByrlIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeVl-00Fc61-NJ; Sun, 22 Jan 2023 17:52:09 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeVg-00Fc5O-C4
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 17:52:06 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674409922;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/ZkA2KifLC7vpty7uUrtmPC8ZlYWOAbupylWwbC2P3w=;
	b=HUjukpVluc4fDcIR8UIONiujjonIb1OxQkAheJVVt08HMT2Wknrd/oOzdC/29z7VO/x61m
	vt8i5aRxL7COSCf5S3pI9Hn1JTzjarlYVK1nsaKINAeA9LcKo2udgZUHeD1zFNjKckll4Z
	7TFt4p8xrDBy5aeAWz0GHBXK5CoZYLOEP6NIut4ep+i2B6bh/bXrJ8u3ru7N3jaUxOOeZR
	Bz+1qcsyfVP4a8yo78AE2VnMOVzqoblNip7TSBdsBYmeY5NvPeRXDziyj/HbhCnci4k/HT
	4SiIPtVxsIgwp7xT5tcFIFQSNrBMBOGCBOLS1HN9am161sk79KgGLyeIF4F6FA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Mon, 23 Jan 2023 04:51:37 +1100
Message-Id: <20230122175141.119834-2-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_095204_760040_8C039A5B 
X-CRM114-Status: GOOD (  16.39  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Kosagi Novena is an open source laptop released in 2014.

This patch adds the initial project skeleton for running the PBL
and debugging over the UART2 port (labeled DEBUG on the board.)

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/novena/Makefile               |  4 +
 arch/arm/boards/novena/board.c                | 13 ++++
 .../boards/novena/flash-header-novena.imxcfg  |  6 ++
 arch/arm/boards/novena/lowlevel.c             | 73 +++++++++++++++++++
 arch/arm/configs/imx_v7_defconfig             |  1 +
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/imx6q-novena.dts                 |  4 +
 arch/arm/mach-imx/Kconfig                     |  6 ++
 images/Makefile.imx                           |  2 +
 10 files changed, 111 insertions(+)
 create mode 100644 arch/arm/boards/novena/Makefile
 create mode 100644 arch/arm/boards/novena/board.c
 create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
 create mode 100644 arch/arm/boards/novena/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-novena.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 0f4339ebed..177c1da2c5 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
 obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
 obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
+obj-$(CONFIG_MACH_NOVENA)			+= novena/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CCMX53)			+= ccxmx53/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
diff --git a/arch/arm/boards/novena/Makefile b/arch/arm/boards/novena/Makefile
new file mode 100644
index 0000000000..da63d2625f
--- /dev/null
+++ b/arch/arm/boards/novena/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
new file mode 100644
index 0000000000..186f91093f
--- /dev/null
+++ b/arch/arm/boards/novena/board.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2023 John Watts
+
+#include <common.h>
+
+static int novena_device_init(void)
+{
+	if (!of_machine_is_compatible("kosagi,imx6q-novena"))
+		return 0;
+
+	return 0;
+}
+device_initcall(novena_device_init);
diff --git a/arch/arm/boards/novena/flash-header-novena.imxcfg b/arch/arm/boards/novena/flash-header-novena.imxcfg
new file mode 100644
index 0000000000..61425976ec
--- /dev/null
+++ b/arch/arm/boards/novena/flash-header-novena.imxcfg
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+loadaddr 0x00907000
+soc imx6
+max_load_size 0x11000
+ivtofs 0x400
diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
new file mode 100644
index 0000000000..855855c6b9
--- /dev/null
+++ b/arch/arm/boards/novena/lowlevel.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2023 John Watts
+
+#include <asm/barebox-arm.h>
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+#include <mach/imx6.h>
+#include <mach/iomux-mx6.h>
+#include <mach/xload.h>
+#include <soc/fsl/fsl_udc.h>
+
+#define MX6_OCRAM_BASE_ADDR 0x00900000
+#define STACK_TOP (MX6_OCRAM_BASE_ADDR + SZ_128K)
+
+extern char __dtb_imx6q_novena_start[];
+
+static bool running_from_ram(void)
+{
+	return (get_pc() >= MX6_MMDC_PORT01_BASE_ADDR);
+}
+
+static void setup_uart(void)
+{
+	/* NOTE: RX is needed for TX to work on this board */
+	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D26__UART2_RXD);
+	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D27__UART2_TXD);
+	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
+	pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));
+	pr_debug(">");
+}
+
+static void load_barebox(void)
+{
+	enum bootsource bootsrc;
+	int bootinstance;
+
+	imx6_get_boot_source(&bootsrc, &bootinstance);
+
+	if (bootsrc == BOOTSOURCE_SERIAL) {
+		imx6_barebox_start_usb(IOMEM(MX6_MMDC_PORT01_BASE_ADDR));
+	} else if (bootsrc == BOOTSOURCE_MMC) {
+		imx6_esdhc_start_image(bootinstance);
+	} else {
+		pr_err("Unsupported boot source %x instance %x\n",
+					bootsrc, bootinstance);
+		hang();
+	}
+}
+
+static void boot_barebox(void)
+{
+	void *fdt = __dtb_imx6q_novena_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
+{
+	imx6_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	if (!running_from_ram()) {
+		imx6_ungate_all_peripherals();
+		setup_uart();
+		load_barebox();
+	} else {
+		boot_barebox();
+	}
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 3cbec267fc..4d4b286140 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -25,6 +25,7 @@ CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
 CONFIG_MACH_NITROGEN6=y
+CONFIG_MACH_NOVENA=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
 CONFIG_MACH_TECHNEXION_PICO_HOBBIT=y
 CONFIG_MACH_TECHNEXION_WANDBOARD=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 5ceb97129f..ebb2d6bef8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -46,6 +46,7 @@ lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
 lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
+lwl-$(CONFIG_MACH_NOVENA) += imx6q-novena.dtb.o
 lwl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
 lwl-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
 lwl-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
diff --git a/arch/arm/dts/imx6q-novena.dts b/arch/arm/dts/imx6q-novena.dts
new file mode 100644
index 0000000000..07471cb132
--- /dev/null
+++ b/arch/arm/dts/imx6q-novena.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR X11
+// SPDX-FileCopyrightText: 2023 John Watts
+
+#include <arm/imx6q-novena.dts>
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 84b763f83f..a644cbb4df 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -433,6 +433,12 @@ config MACH_NITROGEN6
 	bool "BoundaryDevices Nitrogen6 boards"
 	select ARCH_IMX6
 
+config MACH_NOVENA
+	bool "Kosagi Novena board"
+	select ARCH_IMX6
+	select MCI_IMX_ESDHC_PBL
+	select USB_GADGET_DRIVER_ARC_PBL
+
 config MACH_SOLIDRUN_MICROSOM
 	bool "SolidRun MicroSOM based devices"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e9f4ba64e4..65914212bf 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -258,6 +258,8 @@ $(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6dl_nitrogen6x_2g, bo
 
 $(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6qp_nitrogen6_max, boundarydevices-nitrogen6/flash-header-nitrogen6qp-max, boundarydevices-imx6qp-nitrogen6_max)
 
+$(call build_imx_habv4img, CONFIG_MACH_NOVENA, start_imx6q_novena, novena/flash-header-novena, imx6q-novena)
+
 $(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6dl_tx6x_512m, karo-tx6x/flash-header-tx6dl-512m, karo-imx6dl-tx6x-512m)
 
 $(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6dl_tx6x_1g, karo-tx6x/flash-header-tx6dl-1g, karo-imx6dl-tx6x-1g)
-- 
2.39.0



