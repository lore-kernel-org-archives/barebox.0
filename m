Delivery-date: Mon, 02 Dec 2024 17:44:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI9Wj-0039qi-1h
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 17:44:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI9Wi-0006OC-Ve
	for lore@pengutronix.de; Mon, 02 Dec 2024 17:44:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8N2rjXXgVv2/uzEEfFDrNlVbecIcPNzhD2pxxeDobDs=; b=tA+UDiCAiQ9NemBDChumoB5PvU
	n+6lBej4a6xq2sCcItOwpHUeFIYEhJPlH6GDnbdx9ZJl6WEZoZek2mTFALHIeUwWdqioHw4xF7Mpu
	z2pKxSdvg6x2AWJAU0deXAtbDCU/bgO4GVkaw4aU2TyolQuN0vU6YALnsv8tzpI2WmQEKdFFjmuPq
	xpRoBLkJjTR3MWEK6UC78Q7xI3XdPIGT3eLJPL6Z/cyAQJBn7sTGPgKv6V0KrhdunH/dpF107zoaO
	DKuoBVanyLOvetAlBDdKLQBIB9BQ5ZZj9InlKlv26JpWt8eQART5eWlST745r/OqVjW5pNu2k1NMR
	ZhSozkUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI9Vz-00000006teV-2hGk;
	Mon, 02 Dec 2024 16:43:15 +0000
Received: from mx0.riseup.net ([198.252.153.6])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI9OT-00000006s6z-1ubd
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 16:35:30 +0000
Received: from fews02-sea.riseup.net (fews02-sea-pn.riseup.net [10.0.1.112])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4Y28XT74Dpz9tN9;
	Mon,  2 Dec 2024 16:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1733157322; bh=Q29rr2/Qm1+zyQkO1JSiBLHiJeMp3t1Hb58n3pQ0TVo=;
	h=From:Date:Subject:To:Cc:From;
	b=Wg+DiHtYs89IGvQ3iXPl2c7V++AxnJg1kXUwVTYqly28hdJhkVAdp3iDNcTH2Mh7G
	 Un+QD3uHGoVDD+XIvkvbZ2ZW46c0Pn9dBxMcYcbk9OhA89T/jpVod6DEYimkkYYF5a
	 0YoSNCHzInRPeyMlvDrU0OO5y2+ooucHemdkNtRA=
X-Riseup-User-ID: 2991730932968F3D34209611D7C1CE1E29A4687FE9BA61F47E6B34DB4EE53B5E
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews02-sea.riseup.net (Postfix) with ESMTPSA id 4Y28XD5GzDzFvTC;
	Mon,  2 Dec 2024 16:35:08 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 02 Dec 2024 23:35:06 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-pt2-init-v1-1-bd1ebdc747e0@riseup.net>
X-B4-Tracking: v=1; b=H4sIALnhTWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIKFbUGKkm5mXWaJrbmhklJZqbJJmkGKmBFReUJSallkBNio6trYWAI4
 AmkdaAAAA
X-Change-ID: 20241202-pt2-init-7122fe34f0d6
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, 
 Dang Huynh <danct12@riseup.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_083529_563292_6CC22094 
X-CRM114-Status: GOOD (  17.66  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: Add support for Pine64 PineTab 2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Pine64 PineTab 2 tablet is basically the Quartz64 but as
a finished product.

There are (currently) two revisions, v0.1 and v2.0.

v0.1 was sent to developers and there are a few units around
(probably less than 10?)

v2.0 is the consumer available version, this version changed the
display reset pin and hooked WLAN/BT chip to a GPIO.

There are currently no easy way to detect both revisions. For now,
we'll only support v2.0.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 arch/arm/boards/Makefile                   |  1 +
 arch/arm/boards/pine64-pinetab2/.gitignore |  1 +
 arch/arm/boards/pine64-pinetab2/Makefile   |  3 ++
 arch/arm/boards/pine64-pinetab2/board.c    | 54 ++++++++++++++++++++++++++++++
 arch/arm/boards/pine64-pinetab2/lowlevel.c | 35 +++++++++++++++++++
 arch/arm/dts/Makefile                      |  1 +
 arch/arm/dts/rk3566-pinetab2-v0-1.dts      |  6 ++++
 arch/arm/dts/rk3566-pinetab2-v2-0.dts      |  6 ++++
 arch/arm/dts/rk3566-pinetab2.dtsi          | 53 +++++++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig             | 27 +++++++++++++++
 images/Makefile.rockchip                   |  2 ++
 11 files changed, 189 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 67d91616f623be9eddd370485707eeb25d3ebe40..b6b3894c6b40eb1c4129a55145fd8a2e77efe066 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -172,6 +172,7 @@ obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
 obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
 obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
 obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
+obj-$(CONFIG_MACH_PINE64_PINETAB2)		+= pine64-pinetab2/
 obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
 obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
 obj-$(CONFIG_MACH_RADXA_ROCK5)			+= radxa-rock5/
diff --git a/arch/arm/boards/pine64-pinetab2/.gitignore b/arch/arm/boards/pine64-pinetab2/.gitignore
new file mode 100644
index 0000000000000000000000000000000000000000..f458f794b54c96b74489d368cb9f44955db11126
--- /dev/null
+++ b/arch/arm/boards/pine64-pinetab2/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/pine64-pinetab2/Makefile b/arch/arm/boards/pine64-pinetab2/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..b37b6c870bb4d88cbc6f45435caa0a4a8a3d12d6
--- /dev/null
+++ b/arch/arm/boards/pine64-pinetab2/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/pine64-pinetab2/board.c b/arch/arm/boards/pine64-pinetab2/board.c
new file mode 100644
index 0000000000000000000000000000000000000000..29f81adb4d34e542d188dac91b0c1d38b87e3c02
--- /dev/null
+++ b/arch/arm/boards/pine64-pinetab2/board.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <bootsource.h>
+#include <common.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+
+struct pinetab2_model {
+	const char *name;
+	const char *shortname;
+};
+
+static int pinetab2_probe(struct device *dev)
+{
+	const struct pinetab2_model *model = device_get_match_data(dev);
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+
+	barebox_set_model(model->name);
+	barebox_set_hostname(model->shortname);
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 0)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc0");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc1");
+
+	return 0;
+}
+
+static const struct pinetab2_model pinetab2_v01 = {
+	.name = "Pine64 PineTab 2 v0.1",
+	.shortname = "pinetab2-v01",
+};
+
+static const struct pinetab2_model pinetab2_v20 = {
+	.name = "Pine64 PineTab 2 v2.0",
+	.shortname = "pinetab2-v20",
+};
+
+static const struct of_device_id pinetab2_of_match[] = {
+	{ .compatible = "pine64,pinetab2-v0.1", .data = &pinetab2_v01, },
+	{ .compatible = "pine64,pinetab2-v2.0", .data = &pinetab2_v20, },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(pinetab2_of_match);
+
+static struct driver pinetab2_board_driver = {
+	.name = "board-pinetab2",
+	.probe = pinetab2_probe,
+	.of_compatible = pinetab2_of_match,
+};
+coredevice_platform_driver(pinetab2_board_driver);
diff --git a/arch/arm/boards/pine64-pinetab2/lowlevel.c b/arch/arm/boards/pine64-pinetab2/lowlevel.c
new file mode 100644
index 0000000000000000000000000000000000000000..2f89bfd2ae6aa1e8ce80d730c933fc0320a3ccad
--- /dev/null
+++ b/arch/arm/boards/pine64-pinetab2/lowlevel.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+
+extern char __dtb_rk3566_pinetab2_v0_1_start[];
+extern char __dtb_rk3566_pinetab2_v2_0_start[];
+
+static void setup_relocation(void)
+{
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+}
+
+ENTRY_FUNCTION(start_pinetab2_v0, r0, r1, r2)
+{
+	putc_ll('>');
+
+	setup_relocation();
+	rk3568_barebox_entry(__dtb_rk3566_pinetab2_v0_1_start);
+}
+
+ENTRY_FUNCTION(start_pinetab2_v2, r0, r1, r2)
+{
+	putc_ll('>');
+
+	setup_relocation();
+	rk3568_barebox_entry(__dtb_rk3566_pinetab2_v2_0_start);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index fe32b812f6037f382954a84f9ab40cfc8715e367..b9727fd5f91bc7681c910df7e8f18d694fd9f0e4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -83,6 +83,7 @@ lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1) += stm32mp157c-phycore-stm32mp1-3.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += imx8mm-phyboard-polis-rdk.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
+lwl-$(CONFIG_MACH_PINE64_PINETAB2) += rk3566-pinetab2-v0-1.dtb.o rk3566-pinetab2-v2-0.dtb.o
 lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
diff --git a/arch/arm/dts/rk3566-pinetab2-v0-1.dts b/arch/arm/dts/rk3566-pinetab2-v0-1.dts
new file mode 100644
index 0000000000000000000000000000000000000000..2b89d69775df637f663c257295335db878d28442
--- /dev/null
+++ b/arch/arm/dts/rk3566-pinetab2-v0-1.dts
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3566-pinetab2-v0.1.dts>
+#include "rk3566-pinetab2.dtsi"
diff --git a/arch/arm/dts/rk3566-pinetab2-v2-0.dts b/arch/arm/dts/rk3566-pinetab2-v2-0.dts
new file mode 100644
index 0000000000000000000000000000000000000000..404ada593c5ca970fb3144f1829cef4e3ce5160d
--- /dev/null
+++ b/arch/arm/dts/rk3566-pinetab2-v2-0.dts
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3566-pinetab2-v2.0.dts>
+#include "rk3566-pinetab2.dtsi"
diff --git a/arch/arm/dts/rk3566-pinetab2.dtsi b/arch/arm/dts/rk3566-pinetab2.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..cda106f185787343312db3e07ffdd6dae82e0c3a
--- /dev/null
+++ b/arch/arm/dts/rk3566-pinetab2.dtsi
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <arm64/rockchip/rk3566-pinetab2.dtsi>
+#include "rk356x.dtsi"
+
+/ {
+	chosen: chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+	};
+
+	memory@a00000 {
+		device_type = "memory";
+		reg = <0x0 0x00a00000 0x0 0x7f600000>;
+	};
+};
+
+&sdhci {
+	no-sd;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&sdmmc0 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_sd: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ddaab7c2841481ff10a59becf011c0762ee54b27..b1df25ad6431e1a78e219028fb3fb67cc0277a4c 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -79,6 +79,33 @@ config MACH_RK3568_BPI_R2PRO
 	help
 	  Say Y here if you are using a RK3568 Bananpi R2 Pro
 
+config MACH_PINE64_PINETAB2
+	select ARCH_RK3568
+	bool "Pine64 PineTab 2"
+	help
+	  Say Y here if you are using a Pine64 PineTab 2
+
+if MACH_PINE64_PINETAB2
+config MACH_PINE64_PINETAB2_V0
+	bool "Pine64 PineTab 2 - Rev 0.1"
+	help
+	  Say Y here if you are using revision 0.1 of the tablet.
+
+	  This revision was distributed to several OS developers
+	  for early OS bring up. Not many of them are available and
+	  was superseded by rev 2.0.
+
+config MACH_PINE64_PINETAB2_V2
+	bool "Pine64 PineTab 2 - Rev 2.0"
+	help
+	  Say Y here if you are using revision 2.0 of the tablet.
+
+	  This is the one that's being sold to consumers, this
+	  is probably the one you would use if you intend to ship
+	  Barebox to the general public.
+
+endif
+
 config MACH_PINE64_QUARTZ64
 	select ARCH_RK3568
 	bool "Pine64 Quartz64"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 6619beae73e2a527b9b9343c229001c8b46a7642..ec3b144ccdc1e8302e522953d094d9153367f6b2 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -31,6 +31,8 @@ image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 
 $(call build_rockchip_image, CONFIG_MACH_RK3568_EVB, start_rk3568_evb, rockchip-rk3568-evb/sdram-init.bin, rk3568-evb)
 $(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pro, rockchip-rk3568-bpi-r2pro/sdram-init.bin, rk3568-bpi-r2pro)
+$(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2_V0, start_pinetab2_v0, pine64-pinetab2/sdram-init.bin, pinetab2-v0)
+$(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2_V2, start_pinetab2_v2, pine64-pinetab2/sdram-init.bin, pinetab2-v2)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)

---
base-commit: 7a3cb7e6fd6338144972b7c83675fb5c709ea6f8
change-id: 20241202-pt2-init-7122fe34f0d6

Best regards,
-- 
Dang Huynh <danct12@riseup.net>



