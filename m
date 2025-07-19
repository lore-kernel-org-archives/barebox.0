Delivery-date: Sat, 19 Jul 2025 19:48:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udBg9-001dDu-2Y
	for lore@lore.pengutronix.de;
	Sat, 19 Jul 2025 19:48:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udBg8-0007fL-MC
	for lore@pengutronix.de; Sat, 19 Jul 2025 19:48:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bDCz3XtolY8hYyAWf+k8gB4FUOL8J4pItltFsQ/zu+g=; b=eJf29NEbo3po8O2ggRGfOgKBQ6
	53Gduq92jH0Laz4K5Hi+r+WJObrdhFye8Btm13rlE/Tvo2BxMCJ6C55aOobBpRPLv+t5zVkGzfNMT
	jaODqGo00rP6jG5JjtV2l4G1GE+kiZFPGmCT8ghJGSYew+fDvfD7J6WgZjNcddU9ZCO30mzONLbIK
	L3C9wK0v1vMPMWVweue/zMIsI7kB/9gEF/EW/Jvd3dbF6cwB72UzBDV8Qx/MxBO8zfbuN5WP/yqxZ
	u4tigYMW/8qaY9y34l2QqCHNIoH1C+o0/aNj/A9qrsbhFh2du7YIsQ+F9+fMAVsMvLV5KFyjxRPQ/
	3e8COv9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udBfH-0000000EUTk-2XM6;
	Sat, 19 Jul 2025 17:48:03 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udBfE-0000000EUTD-0RlK
	for barebox@lists.infradead.org;
	Sat, 19 Jul 2025 17:48:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1752947275;
	bh=jHgnEWlCxbokFDkJu4ZPHl/QelGsaT4HCPTvX9pI9ts=;
	h=From:To:Subject:Date:From;
	b=Q/0lEt08OMSlOar9xip/xDhAKGWnbxQhqR56G5iuKlvjS2ElfTTiYzr9ia094reqe
	 BQgDJbWsDYAEnPX/om0gpBiqaxwwfO1OEgID7xQZLI0l+oH4SKvtbCeXDMK7iyTG3L
	 uAzkSZrqtWNFuP0eK76GFg6qWn5SgMpyc21C2BHtIIrJ7cYsjUXiIlcJki0+0yFk46
	 rZ+X44HjEEH4lAhVVHP6FlI5A7JhaLjUE3hCvmOkEFoDr2Z/gkQpX2AUY38DF/UXAL
	 GEGbFrbgBDTIKH1LjNdFx7LRWvEV0ISy4nvk3ww8PtzppB3pXnasAJHj8XyXz707EY
	 pCWERvvS7euYA==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 4F05C105C231; Sat, 19 Jul 2025 19:47:55 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Sat, 19 Jul 2025 19:47:38 +0200
Message-ID: <20250719174737.2035188-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=10423; i=uwe@kleine-koenig.org; h=from:subject; bh=jHgnEWlCxbokFDkJu4ZPHl/QelGsaT4HCPTvX9pI9ts=; b=owGbwMvMwMXY3/A7olbonx/jabUkhozqW1YWR1/NiVS447+Du3x15smDXFmfT/ddf3Fu/+W/U 0UC/zhM7GQ0ZmFg5GKQFVNksW9ck2lVJRfZufbfZZhBrEwgUxi4OAVgIt9F2f/XVWXm9Os8bMt+ xCtg0RVd6F2m3OE0OzOXJ7a0ZyNP5xtzN7nqtb2iYVXbBa46X+XrT6tPYZ78WdandNr+ScJ/Rd/ 5mKVtdv16cq/and6LNY1OweFNRic6VgqyugZG/OESYC/lXXtVLdyk44bTq6CmZQ2xUb/33CjTK3 lw/cCzs2wf2z/9iZ98Rtz+xpxelmzJ5rUvGiQCwrY1yobu3Fu9VvfDVm7/JI9JE9pr3Vk3az/ra p378cb784s43sh3nc+d8KjYgu2i8KHg5A/Z0ZU8sycmd5ueaLqcdXfbMa8k4b+TOWsazN8/Noxk ffsuvsf90P+m8s7otEvX2NOmvXjQnhy2YqPH38onLIqxAA==
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250719_104800_508022_40013987 
X-CRM114-Status: GOOD (  27.63  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] arm64: rockchip: Add support for QNAP's ts-433 4bay NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The resulting image boots to a prompt using usb booting or when booting
from eMMC. Networking and USB are working.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
Hello,

some time ago I sent (implicit) v1, see
https://lore.barebox.org/cover.1740846737.git.uwe@kleine-koenig.org

In the meantime some changes to the upstream dts were applied making
this patch smaller. Also I learned that I have to unfit the boot jumper
to have a working eMMC. Also networking is functional now, see the
comment in arch/arm/dts/rk3568-qnap-ts433.dts about the workaround.

Functional changes:

 - Configure the front USB plug to gadget mode when booted from USB or
   when the copy button is pressed during bootup and disable autoboot.
 - Enabled deep probe

Thanks to the fine rk3568 base support this was an easy journey to
create a powerful bootloader for my NAS. Thanks!

Best regards
Uwe

 Documentation/boards/rockchip.rst      |  1 +
 arch/arm/boards/Makefile               |  1 +
 arch/arm/boards/qnap-tsx33/.gitignore  |  1 +
 arch/arm/boards/qnap-tsx33/Makefile    |  3 ++
 arch/arm/boards/qnap-tsx33/board.c     | 73 ++++++++++++++++++++++++++
 arch/arm/boards/qnap-tsx33/lowlevel.c  | 27 ++++++++++
 arch/arm/configs/rockchip_v8_defconfig |  1 +
 arch/arm/dts/Makefile                  |  1 +
 arch/arm/dts/rk3568-qnap-ts433.dts     | 26 +++++++++
 arch/arm/mach-rockchip/Kconfig         |  7 +++
 images/Makefile.rockchip               |  1 +
 11 files changed, 142 insertions(+)
 create mode 100644 arch/arm/boards/qnap-tsx33/.gitignore
 create mode 100644 arch/arm/boards/qnap-tsx33/Makefile
 create mode 100644 arch/arm/boards/qnap-tsx33/board.c
 create mode 100644 arch/arm/boards/qnap-tsx33/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-qnap-ts433.dts

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 8bce92865e3e..d8a371079fab 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -61,6 +61,7 @@ Supported Boards
 - Pine64 Quartz64 Model A
 - Radxa ROCK3 Model A
 - Radxa CM3 (RK3566) IO Board
+- QNAP TS-433 NAS
 - Protonic MECSBC
 
 The steps described in the following target the RK3568 and the RK3568 EVB but
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ac1fa74d4c03..b686f8305e96 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -96,6 +96,7 @@ obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
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
index 000000000000..2611f7a6a9bf
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/board.c
@@ -0,0 +1,73 @@
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+#include <bootsource.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <deep-probe.h>
+
+static int ts433_usb_device_mode(void)
+{
+	struct device_node *node;
+
+	/* &usb_host0_xhci */
+	node = of_find_node_by_path("/usb@fcc00000");
+	if (!node)
+		return -ENODEV;
+
+	return of_property_write_string(node, "dr_mode", "peripheral");
+}
+
+static int ts433_probe(struct device *dev)
+{
+	enum bootsource bootsource = bootsource_get();
+	int copy_button_pressed = !gpio_get_value(14);
+
+	barebox_set_model("QNAP TS-433");
+	barebox_set_hostname("ts433");
+
+	if (bootsource == BOOTSOURCE_USB || copy_button_pressed) {
+		/*
+		 * Configure the front USB socket to USB device (i.e. like the
+		 * ROM when booting from USB. Add gadget support equivalent to
+		 * usbgadget -b -A "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)" -a
+		 */
+		ts433_usb_device_mode();
+		globalvar_add_simple("usbgadget.autostart", "1");
+		globalvar_add_simple("fastboot.bbu", "1");
+		globalvar_add_simple("fastboot.partitions", "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)c");
+		globalvar_add_simple("usbgadget.acm", "1");
+
+		/*
+		 * exit to a shell, also to give the user the chance to open the
+		 * console on USB.
+		 */
+		globalvar_add_simple("autoboot", "abort");
+
+		/*
+		 * Don't use emmc to result in a working state even with a
+		 * borked environment.
+		 */
+		of_device_disable_path("/chosen/environment-emmc");
+	}
+
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+
+	return 0;
+}
+
+static const struct of_device_id ts433_of_match[] = {
+        { .compatible = "qnap,ts433" },
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
index 000000000000..f852e8d00a2b
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/lowlevel.c
@@ -0,0 +1,27 @@
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
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index cc8481cc3cb9..16dbc095d4b3 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_PROTONIC_MECSBC=y
+CONFIG_MACH_QNAP_TSX33=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6612a5145231..77630ec20441 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -122,6 +122,7 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += \
 	stm32mp133c-mect1s.dtb.o \
 	stm32mp133c-prihmb.dtb.o
+lwl-$(CONFIG_MACH_QNAP_TSX33) += rk3568-qnap-ts433.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
diff --git a/arch/arm/dts/rk3568-qnap-ts433.dts b/arch/arm/dts/rk3568-qnap-ts433.dts
new file mode 100644
index 000000000000..5ab0220c28d7
--- /dev/null
+++ b/arch/arm/dts/rk3568-qnap-ts433.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+/dts-v1/;
+#include <arm64/rockchip/rk3568-qnap-ts433.dts>
+#include "rk356x.dtsi"
+
+/ {
+	chosen: chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &sdhci, "partname:barebox-environment";
+		};
+	};
+};
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
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index d172522c6f63..138966e8f91f 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -95,6 +95,13 @@ config MACH_PROTONIC_MECSBC
 	help
 	  Say Y here if you are using a Protonic MECSBC
 
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
index 761c6b814989..2e63e554edce 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -35,6 +35,7 @@ $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v0, pin
 $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v2, pine64-pinetab2/sdram-init.bin, pinetab2-v2)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
+$(call build_rockchip_image, CONFIG_MACH_QNAP_TSX33, start_rk3568_qnap_ts433, qnap-tsx33/sdram-init.bin, qnap-ts433)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)

base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
prerequisite-patch-id: bb15d0704d716658c1773d9be53b1e0734b94b16
-- 
2.50.0



