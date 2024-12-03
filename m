Delivery-date: Tue, 03 Dec 2024 11:25:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQ5V-003Sim-2a
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 11:25:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQ5V-0007Bq-5J
	for lore@pengutronix.de; Tue, 03 Dec 2024 11:25:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jJfWSK8OkgEuQ/3KCPOlDaRFAh5LOc3EpvNOu8L1JiQ=; b=cwuduVM4rHOioDP4ZV8Dp9SjgU
	8PaI/o2Q5m8d2x1unQmmSjrFlAenNBfB9SXaAr8P5INQ0Tv8w5ktZxGHODnTRmGtqFNd3B1vpYnrD
	OD9TJGcyWR2TcqxwBRNSFcGF3JHNl4f9y4+X38TTXM622AmiCiX3tjno7un57mq5GDedlOAGK3UEk
	7YexndUblwSXBVe2uNhNaK3oEL33iutXD6RLci1ZVHwRk/08EOgtplb70p5UlaFVEn/+zCxf41Jdx
	zeSZVDr4i07y2QXwXut0iXOtDL57mVJbz0KP2XmGlexFOAED5PGkEDB2FZdcWQVQrTgTvt/fdxQBv
	aDjTPc1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQ4q-000000093fA-3kTM;
	Tue, 03 Dec 2024 10:24:20 +0000
Received: from mx1.riseup.net ([198.252.153.129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQ4n-000000093eZ-3iIB
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 10:24:19 +0000
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4Y2cFr4h9LzDqWs;
	Tue,  3 Dec 2024 10:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1733221456; bh=5zzDHTrm4nGzIfl8szfN1XVQNwYA3TLjDH5uZQsB2Bw=;
	h=From:Date:Subject:To:Cc:From;
	b=Go5pFeCsc3uSenBAIshfqXrbE1sY3O9emQO+lWZzg/ryqHA7CduwogKCxd2ACvKhk
	 xMpJcUx1Uzl2Dbp033EFCPibrC1xIv8d3tmqWlvQEoN9s/CAMcy7J66e3xDsHLybKl
	 H4PLq+xUBegMLSkqsuZtSN2ogbmcTaBL7soiQeak=
X-Riseup-User-ID: F7765CB33A17CF79335059B1390A62D4EFFF559621D247F7B24F9E8DCAD5356C
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4Y2cFq12fpzJqfj;
	Tue,  3 Dec 2024 10:24:14 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Tue, 03 Dec 2024 17:24:09 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241203-pt2-init-v2-1-d6c625e1e455@riseup.net>
X-B4-Tracking: v=1; b=H4sIAEjcTmcC/22MQQ7CIBBFr9LMWgwzEklceQ/ThS2DnQ0lQImm4
 e5i125+8n5e3g6Zk3CG27BD4ipZ1tCBTgPMyzO8WInrDKTJYB8VCykJUpRFIs8X47W7QtdjYi/
 vI/UYOy+Sy5o+R7ni7/0TqahQTQ55crM1lvU9SeYtngMXGFtrX8pD7oShAAAA
X-Change-ID: 20241202-pt2-init-7122fe34f0d6
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, 
 Dang Huynh <danct12@riseup.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_022417_992629_3D8E88AA 
X-CRM114-Status: GOOD (  19.32  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: rockchip: Add support for Pine64 PineTab 2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Pine64 PineTab 2 tablet is basically the Quartz64 but as
a finished product.

There are (currently) two revisions, v0.1 and v2.0.

v0.1 was sent to developers and there are a few units around
(probably less than 10?)

v2.0 is the consumer available version, this version changed the
display reset pin and hooked WLAN/BT chip to a GPIO.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
Changes in v2:
- Apply changes requested by Ahmad Fatoum
- Unsplit relocation function as it doesn't seem to work correctly
- Link to v1: https://lore.kernel.org/r/20241202-pt2-init-v1-1-bd1ebdc747e0@riseup.net
---
 arch/arm/boards/Makefile                   |  1 +
 arch/arm/boards/pine64-pinetab2/.gitignore |  1 +
 arch/arm/boards/pine64-pinetab2/Makefile   |  3 ++
 arch/arm/boards/pine64-pinetab2/board.c    | 54 ++++++++++++++++++++++++++++++
 arch/arm/boards/pine64-pinetab2/lowlevel.c | 37 ++++++++++++++++++++
 arch/arm/configs/multi_v8_defconfig        |  1 +
 arch/arm/configs/rockchip_v8_defconfig     |  1 +
 arch/arm/dts/Makefile                      |  1 +
 arch/arm/dts/rk3566-pinetab2-v0-1.dts      |  6 ++++
 arch/arm/dts/rk3566-pinetab2-v2-0.dts      |  6 ++++
 arch/arm/dts/rk3566-pinetab2.dtsi          | 46 +++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig             | 15 +++++++++
 images/Makefile.rockchip                   |  2 ++
 13 files changed, 174 insertions(+)

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
index 0000000000000000000000000000000000000000..73ca6866f082c096c21accde0a27c511f55bc7dd
--- /dev/null
+++ b/arch/arm/boards/pine64-pinetab2/lowlevel.c
@@ -0,0 +1,37 @@
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
+ENTRY_FUNCTION(start_pinetab2_v0, r0, r1, r2)
+{
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3566_pinetab2_v0_1_start);
+}
+
+ENTRY_FUNCTION(start_pinetab2_v2, r0, r1, r2)
+{
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3566_pinetab2_v2_0_start);
+}
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 39d5dd3fc1678f6a7a719f6ebcabc16b3d02f7ee..fc32ab5a06e4e19eac116369d9dad7dcf990d284 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -29,6 +29,7 @@ CONFIG_MACH_TQMLS1046A=y
 CONFIG_MACH_BEAGLEPLAY=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
+CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 216a88e82457e2c928eb85f739134fda3f36c7c8..e000a1d4ee5746d5b6fe53489249469b1a2b887a 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
+CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_PROTONIC_MECSBC=y
 CONFIG_MACH_RADXA_ROCK3=y
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
index 0000000000000000000000000000000000000000..47ac12384d37016cd5912d552e2cb9c817c80475
--- /dev/null
+++ b/arch/arm/dts/rk3566-pinetab2.dtsi
@@ -0,0 +1,46 @@
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
+};
+
+&sdhci {
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
index ddaab7c2841481ff10a59becf011c0762ee54b27..7042506f2b13ed8662d47baf07c71703ad174535 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -79,6 +79,21 @@ config MACH_RK3568_BPI_R2PRO
 	help
 	  Say Y here if you are using a RK3568 Bananpi R2 Pro
 
+config MACH_PINE64_PINETAB2
+	select ARCH_RK3568
+	bool "Pine64 PineTab 2"
+	help
+	  Say Y here if you are using a Pine64 PineTab 2
+
+	  This will build Barebox for two revisions of PineTab 2:
+
+	  - v0.1: distributed to several OS developers for early OS bring
+	          up. Not many of them are available and was superseded
+	          by rev 2.0.
+
+	  - v2.0: distributed to consumers. Use this if you intend to ship
+	          Barebox to the general public.
+
 config MACH_PINE64_QUARTZ64
 	select ARCH_RK3568
 	bool "Pine64 Quartz64"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 6619beae73e2a527b9b9343c229001c8b46a7642..761c6b81498931e5f51b185ed9b2e4ebe16f78bc 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -31,6 +31,8 @@ image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 
 $(call build_rockchip_image, CONFIG_MACH_RK3568_EVB, start_rk3568_evb, rockchip-rk3568-evb/sdram-init.bin, rk3568-evb)
 $(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pro, rockchip-rk3568-bpi-r2pro/sdram-init.bin, rk3568-bpi-r2pro)
+$(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v0, pine64-pinetab2/sdram-init.bin, pinetab2-v0)
+$(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v2, pine64-pinetab2/sdram-init.bin, pinetab2-v2)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)

---
base-commit: 7a3cb7e6fd6338144972b7c83675fb5c709ea6f8
change-id: 20241202-pt2-init-7122fe34f0d6

Best regards,
-- 
Dang Huynh <danct12@riseup.net>



