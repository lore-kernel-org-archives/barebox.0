Delivery-date: Thu, 18 Dec 2025 22:36:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLfh-00CyVV-0S
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 22:36:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLff-0004Fc-Kn
	for lore@pengutronix.de; Thu, 18 Dec 2025 22:36:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Reo6iahenb7emOYMCcidmws1UOp/I6f8yVnp37DfixI=; b=CCScNBAjkQrTvFpMGpN4c0P27y
	1rVxnd7/euDgNCERnGqy4cbO/5GcT3ht9tbfuH6oCV9Y+MZjk/EP5Uxq7YMj/tVWpY0gqKsI6uV/3
	OAQ3AodROXyIpD4M4/nzjc0N8arbi5bL/A5e8YZEymaQR7SeMKGVfZSM8N+2kpMtK+tQoIyr7vJj0
	cbDet0RxJYElnuazYq/OcV+I3duxCRY0U2iKcNF3hp+QEwvKidISd2we+Z/wCXq/yfss+a4T0x7i+
	HQgVxF4BuOtJ18wxC1mokCFjpbd0PctsIBjpyA2cXvEpx2JLehCZ3AZ+kCCYOZ1GTV0LqLjrR4GxT
	nAEOf9PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf9-00000009DRJ-1WNw;
	Thu, 18 Dec 2025 21:35:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf2-00000009DOe-3dai
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 21:35:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf1-00041Z-AW; Thu, 18 Dec 2025 22:35:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-006LsC-2w;
	Thu, 18 Dec 2025 22:35:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-0000000E03K-3PjZ;
	Thu, 18 Dec 2025 22:35:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 22:33:09 +0100
Message-ID: <20251218213542.3263658-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
References: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_133549_223319_5C44E415 
X-CRM114-Status: GOOD (  34.69  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/4] arm64: rockchip: Add support for QNAP's ts-433 4bay NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Uwe Kleine-König <uwe@kleine-koenig.org>

The resulting image boots to a prompt using usb booting or when booting
from eMMC. Networking and USB are working.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
 - drop common.h include
 - switch to using barebox,dr_mode and init script for controlling
   USB data role
 - Take hostname from DT and set only shorter model name
 - Add TS433-eU support
 - Continue booting after 60s instead of aborting to catch unintentional
   copy button presses during normal usage
 - Use new autoload_external_env() to suppress env loading
 - Drop environment in DT. Autodetected Partition can be created by
   createnv nowadays
 - add documentation

v1 -> v2:
 - Configure the front USB plug to gadget mode when booted from USB or
   when the copy button is pressed during bootup and disable autoboot.
 - Enabled deep probe
---
 Documentation/boards/rk35xx.rst            |   7 +
 Documentation/boards/rk35xx/qnap-tsx33.rst |  52 +++++++
 arch/arm/boards/Makefile                   |   1 +
 arch/arm/boards/qnap-tsx33/.gitignore      |   1 +
 arch/arm/boards/qnap-tsx33/Makefile        |   3 +
 arch/arm/boards/qnap-tsx33/board.c         |  76 ++++++++++
 arch/arm/boards/qnap-tsx33/lowlevel.c      |  50 +++++++
 arch/arm/configs/multi_v8_defconfig        |   1 +
 arch/arm/configs/rockchip_v8_defconfig     |   1 +
 arch/arm/dts/Makefile                      |   1 +
 arch/arm/dts/rk3568-qnap-ts433.dts         |  26 ++++
 arch/arm/dts/rk3568-qnap-ts433eu.dts       | 160 +++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig             |   7 +
 images/Makefile.rockchip                   |   2 +
 14 files changed, 388 insertions(+)
 create mode 100644 Documentation/boards/rk35xx/qnap-tsx33.rst
 create mode 100644 arch/arm/boards/qnap-tsx33/.gitignore
 create mode 100644 arch/arm/boards/qnap-tsx33/Makefile
 create mode 100644 arch/arm/boards/qnap-tsx33/board.c
 create mode 100644 arch/arm/boards/qnap-tsx33/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-qnap-ts433.dts
 create mode 100644 arch/arm/dts/rk3568-qnap-ts433eu.dts

diff --git a/Documentation/boards/rk35xx.rst b/Documentation/boards/rk35xx.rst
index 95b2866d0544..0a016909f002 100644
--- a/Documentation/boards/rk35xx.rst
+++ b/Documentation/boards/rk35xx.rst
@@ -14,9 +14,16 @@ Supported Boards
 - Radxa ROCK3 Model A
 - Radxa ROCK5 (RK3588)
 - Radxa CM3 (RK3566) IO Board
+- QNAP TS-433 NAS
 - Protonic MECSBC
 - Protonic PRTPUK
 
+.. toctree::
+  :glob:
+  :maxdepth: 1
+
+  rk35xx/*
+
 The steps described in the following target the RK3568 and the RK3568 EVB but
 generally apply to both SoCs and all boards.
 Differences between the SoCs or boards are outlined where required.
diff --git a/Documentation/boards/rk35xx/qnap-tsx33.rst b/Documentation/boards/rk35xx/qnap-tsx33.rst
new file mode 100644
index 000000000000..b205e31e561b
--- /dev/null
+++ b/Documentation/boards/rk35xx/qnap-tsx33.rst
@@ -0,0 +1,52 @@
+QNAP TS-433 NAS
+===============
+
+barebox has support for TS-433 and TS-433eU. Further variants likely need
+only the appropriate device tree compiled into barebox.
+
+Building
+--------
+
+The build process needs two binary files which have to be copied from the
+`rkbin https://github.com/rockchip-linux/rkbin` repository to the barebox source tree:
+
+.. code-block:: sh
+
+  cp $RKBIN/bin/rk35/rk3568_bl31_v1.45.elf firmware/rk3568-bl31.bin
+  cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.23.bin arch/arm/boards/qnap-tsx33/sdram-init.bin
+
+With these barebox can be compiled as:
+
+.. code-block:: sh
+
+  make ARCH=arm rockchip_v8_defconfig
+  make ARCH=arm
+
+If cross-compiling, ``CROSS_COMPILE`` needs to be additionally set.
+
+Flashing via USB
+----------------
+
+The front USB port can be used to bootstrap the device over
+the maskrom protocol:
+
+- start with a completely powered off machine
+- remove at least the two left harddisk trays
+- put a jumper on the 2-pin MaskROM header
+- power on
+- remove the jumper as it shorts the eMMC
+- connect your PC and the front USB jack using a USB-A to USB-A cable
+
+Afterwards, you should see the device with ``lsusb`` and be able to
+load barebox into RAM and flash it to the eMMC using ``fastboot``:
+
+.. code-block:: sh
+
+  scripts/rk-usb-loader images/barebox-qnap-ts433.img # or *ts433eu.img
+  fastboot flash bbu-emmc barebox-qnap-ts433.img
+
+Booting Debian
+--------------
+
+Refer to https://wiki.debian.org/InstallingDebianOn/Qnap/TS-433
+for information on how to install Debian.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index afc50051a251..4c586de2a985 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -99,6 +99,7 @@ obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP13)		+= protonic-stm32mp13/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
+obj-$(CONFIG_MACH_QNAP_TSX33)			+= qnap-tsx33/
 obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
 obj-$(CONFIG_MACH_PHYTEC_SOM_RK3288)		+= phytec-som-rk3288/
 obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
diff --git a/arch/arm/boards/qnap-tsx33/.gitignore b/arch/arm/boards/qnap-tsx33/.gitignore
new file mode 100644
index 000000000000..f458f794b54c
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/qnap-tsx33/Makefile b/arch/arm/boards/qnap-tsx33/Makefile
new file mode 100644
index 000000000000..1d052d28c9fc
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/qnap-tsx33/board.c b/arch/arm/boards/qnap-tsx33/board.c
new file mode 100644
index 000000000000..a4e86b0337f8
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/board.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <gpio.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+#include <bootsource.h>
+#include <globalvar.h>
+#include <envfs.h>
+#include <deep-probe.h>
+#include <linux/usb/gadget-multi.h>
+
+struct ts433_match_data {
+	const char *model;
+};
+
+static int ts433_probe(struct device *dev)
+{
+	const struct ts433_match_data *match;
+	enum bootsource bootsource = bootsource_get();
+	int copy_button_pressed = !gpio_get_value(14);
+
+	match = device_get_match_data(dev);
+	if (match)
+		barebox_set_model(match->model);
+
+	if (bootsource == BOOTSOURCE_USB || copy_button_pressed) {
+		/*
+		 * Configure the front USB socket to USB device (i.e. like the
+		 * ROM when booting from USB. Add gadget support equivalent to
+		 * usbgadget -b -A "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)" -a
+		 */
+		globalvar_add_simple("fastboot.bbu", "1");
+		globalvar_add_simple("fastboot.partitions", "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)c");
+		globalvar_add_simple("usbgadget.acm", "1");
+		usbgadget_autostart(true);
+
+		/*
+		 * increase timeout to give the user the chance to open the
+		 * console on USB. Fastboot automatically aborts the countdown.
+		 */
+		globalvar_add_simple("autoboot_timeout", "60");
+
+		/*
+		 * Don't use external env to get into a working state even with
+		 * a borked environment on eMMC.
+		 */
+		autoload_external_env(false);
+	}
+
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+
+	return 0;
+}
+
+static const struct ts433_match_data ts433 = {
+	.model = "QNAP TS-433"
+};
+
+static const struct ts433_match_data ts433eu = {
+	.model = "QNAP TS-433eU"
+};
+
+static const struct of_device_id ts433_of_match[] = {
+        { .compatible = "qnap,ts433", .data = &ts433 },
+        { .compatible = "qnap,ts433eu", .data = &ts433eu },
+        { /* Sentinel */},
+};
+
+static struct driver ts433_board_driver = {
+        .name = "board-ts433",
+        .probe = ts433_probe,
+        .of_compatible = ts433_of_match,
+};
+coredevice_platform_driver(ts433_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(ts433_of_match);
diff --git a/arch/arm/boards/qnap-tsx33/lowlevel.c b/arch/arm/boards/qnap-tsx33/lowlevel.c
new file mode 100644
index 000000000000..c5458937d1ae
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/lowlevel.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip/rockchip.h>
+
+extern char __dtb_rk3568_qnap_ts433_start[];
+extern char __dtb_rk3568_qnap_ts433eu_start[];
+
+ENTRY_FUNCTION(start_rk3568_qnap_ts433, r0, r1, r2)
+{
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3568_qnap_ts433_start);
+}
+
+/*
+ * There is an EEPROM that we can use for identification (TS433-eU
+ * is indicated by "QA011" string in EEPROM), but we don't have an
+ * I2C driver in PBL yet for this platform, so we keep a second image
+ * for now.
+ */
+ENTRY_FUNCTION(start_rk3568_qnap_ts433eu, r0, r1, r2)
+{
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3568_qnap_ts433eu_start);
+}
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 6fe8ab3463e0..e63bb4618900 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -40,6 +40,7 @@ CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
 CONFIG_MACH_WOLFVISION_PF5=y
 CONFIG_MACH_XUNLONG_ORANGEPI_5_PLUS=y
+CONFIG_MACH_QNAP_TSX33=y
 CONFIG_MACH_XILINX_ZCU102=y
 CONFIG_MACH_XILINX_ZCU104=y
 CONFIG_MACH_XILINX_ZCU106=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 0f7a0d7d7a7b..f8f8ceb80516 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -5,6 +5,7 @@ CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_PROTONIC_MECSBC=y
 CONFIG_MACH_PROTONIC_PRTPUK=y
+CONFIG_MACH_QNAP_TSX33=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index dd7482aa056d..a84e09e38850 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -130,6 +130,7 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += \
 	stm32mp133c-mect1s.dtb.o \
 	stm32mp133c-prihmb.dtb.o
+lwl-$(CONFIG_MACH_QNAP_TSX33) += rk3568-qnap-ts433.dtb.o rk3568-qnap-ts433eu.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK5) += \
diff --git a/arch/arm/dts/rk3568-qnap-ts433.dts b/arch/arm/dts/rk3568-qnap-ts433.dts
new file mode 100644
index 000000000000..79f9e522ca89
--- /dev/null
+++ b/arch/arm/dts/rk3568-qnap-ts433.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+/dts-v1/;
+#include <arm64/rockchip/rk3568-qnap-ts433.dts>
+#include "rk356x.dtsi"
+
+&gmac0 {
+	/*
+	 * The Linux device tree uses rgmii-id and that also works iff the
+	 * matching phy driver (motorcomm) is available. The barebox motorcomm
+	 * driver however doesn't support the used phy (Motorcomm YT8521) yet
+	 * and so we have to stick to rgmii and explicit delays for now.
+	 */
+	phy-mode = "rgmii";
+	tx_delay = <0x3c>;
+	rx_delay = <0x2f>;
+};
+
+&usb_host0_xhci {
+	/*
+	 * This USB-A port is used by MaskROM for recovery and by barebox
+	 * to provide fastboot and other gadgets, so we configure it as otg
+	 * and expect users to explicitly set otg.mode=peripheral or =host.
+	 */
+	barebox,dr_mode = "otg";
+};
diff --git a/arch/arm/dts/rk3568-qnap-ts433eu.dts b/arch/arm/dts/rk3568-qnap-ts433eu.dts
new file mode 100644
index 000000000000..57dd655a560f
--- /dev/null
+++ b/arch/arm/dts/rk3568-qnap-ts433eu.dts
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Uwe Kleine-König
+ * Copyright (c) 2025 Ahmad Fatoum
+ */
+
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3568-qnap-tsx33.dtsi>
+#include "rk356x.dtsi"
+
+/ {
+	model = "Qnap TS-433eU-4G NAS Rackmount";
+	compatible = "qnap,ts433eu", "rockchip,rk3568";
+
+	vcc3v3_pcie: regulator-vcc3v3-pcie {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&dc_12v>;
+	};
+};
+
+&combphy2 {
+	status = "okay";
+};
+&leds {
+	led-1 {
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_DISK;
+		gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
+		label = "hdd2:green:disk";
+		linux,default-trigger = "disk-activity";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdd2_led_pin>;
+	};
+
+	led-2 {
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_DISK;
+		gpios = <&gpio1 RK_PD7 GPIO_ACTIVE_LOW>;
+		label = "hdd3:green:disk";
+		linux,default-trigger = "disk-activity";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdd3_led_pin>;
+	};
+
+	led-3 {
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_DISK;
+		gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
+		label = "hdd4:green:disk";
+		linux,default-trigger = "disk-activity";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdd4_led_pin>;
+	};
+};
+
+&mcu {
+	compatible = "qnap,ts433-mcu";
+};
+
+&pcie30phy {
+	data-lanes = <1 2>;
+	status = "okay";
+};
+
+/* Connected to RTL8125 */
+&pcie2x1 {
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+/* Connected to RTL8125 */
+&pcie3x1 {
+	reset-gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+/* Connected to ASM1064 SATA Controller */
+&pcie3x2 {
+	num-lanes = <1>;
+	reset-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+/* Internal SATA controllers not used, ASM1064 used instead */
+&sata1 {
+	status = "disabled";
+};
+
+&pinctrl {
+	leds {
+		hdd2_led_pin: hdd2-led-pin {
+			rockchip,pins = <1 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		hdd3_led_pin: hdd3-led-pin {
+			rockchip,pins = <1 RK_PD7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		hdd4_led_pin: hdd4_led-pin {
+			rockchip,pins = <2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+/* connected to usb_host1_ehci/ohci */
+&usb2phy1_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+/* connected to usb_host0_ehci/ohci */
+&usb2phy1_otg {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	/*
+	 * This USB-A port is used by MaskROM for recovery and by barebox
+	 * to provide fastboot and other gadgets, so we configure it as otg
+	 * and expect users to explicitly set otg.mode=peripheral or =host.
+	 */
+	barebox,dr_mode = "otg";
+};
+
+/* Otherwise, I/O errors both in barebox and Linux.. */
+&sdhci {
+	max-frequency = <52000000>;
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 1fb0e01241ba..6f6e43101ce0 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -105,6 +105,13 @@ config MACH_PROTONIC_PRTPUK
 	help
 	  Say Y here if you are using a Protonic PRTPUK
 
+config MACH_QNAP_TSX33
+	select ARCH_RK3568
+	bool "QNAP TS-433 NAS"
+	help
+	  Select this if you are using a QNAP TS-433 NAS.
+	  <https://www.qnap.com/en-us/product/ts-433>
+
 config MACH_RADXA_ROCK3
 	select ARCH_RK3568
 	bool "Radxa ROCK3"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index da24cb15b186..191ef15aab82 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -44,6 +44,8 @@ $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v2, pin
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_PRTPUK, start_prtpuk, protonic-prtpuk/sdram-init.bin, prtpuk)
+$(call build_rockchip_image, CONFIG_MACH_QNAP_TSX33, start_rk3568_qnap_ts433, qnap-tsx33/sdram-init.bin, qnap-ts433)
+$(call build_rockchip_image, CONFIG_MACH_QNAP_TSX33, start_rk3568_qnap_ts433eu, qnap-tsx33/sdram-init.bin, qnap-ts433-eu)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5t, radxa-rock5/sdram-init.bin, rock5t)
-- 
2.47.3



