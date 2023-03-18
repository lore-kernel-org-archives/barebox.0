Delivery-date: Sat, 18 Mar 2023 17:08:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdZ6j-005UnZ-7m
	for lore@lore.pengutronix.de; Sat, 18 Mar 2023 17:08:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdZ6i-0001PO-H3
	for lore@pengutronix.de; Sat, 18 Mar 2023 17:08:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TtgZMfRK7xUW5+HI0WQvTb6B8SwKvRKN7sZKjrf1Y58=; b=QQJUVNHRLdTZRHgk2rBlay9fi1
	zWzSg4qsJM7t/xUqPop2SIHkkhA7hMPRLRvvoZu63+YmyOD9iUzeW+7Z6sdHvsMRzpGtqgZWG0erc
	pkLDoe7VQ83K4SzjGtmOR8e+JUeOGmpasWuCgGQTtwWBVW/N0eChFZCyjABUz+vW8ydXcWB9ulsop
	fdsWeMxwwxtQ+xjuNYaKlUTOR7FeSikwCyFC+nVA9dLN3L3/3mIbwVX49HaGcoKFFfcZ4HI34Q646
	X23irTV8iUnZMuvveVhXx4dvJ0c/KBhrezGseoOVdHIXep8bAt4AMHnzGuJ8mQ2IKunZt6WXl5mpi
	8Ro0dlzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdZ56-004z4E-1S;
	Sat, 18 Mar 2023 16:06:56 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdZ52-004z2j-21
	for barebox@lists.infradead.org;
	Sat, 18 Mar 2023 16:06:54 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
	id D7136E511A; Sat, 18 Mar 2023 17:06:45 +0100 (CET)
Received: from localhost (unknown [IPv6:2001:9e8:69d6:a100:3afe:dab1:f839:1eb2])
	by magratgarlick.emantor.de (Postfix) with ESMTPSA id 47CA69C3E3;
	Sat, 18 Mar 2023 17:06:44 +0100 (CET)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven@czerwinskis.de>
Date: Sat, 18 Mar 2023 17:06:35 +0100
Message-Id: <20230318160635.216749-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_090653_007749_A65B65C5 
X-CRM114-Status: GOOD (  22.71  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: rockchip: add support for CM3 on IO board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <rouven@czerwinskis.de>

Working:
- RKBIN DDR training (rk3566_ddr_1056MHz_v1.13.bin)
- RKBIN TF-A (v1.34) from RKBIN
- Environment storage
- DHCP, ping and link detection

Signed-off-by: Rouven Czerwinski <rouven@czerwinskis.de>
---
 arch/arm/boards/Makefile             |  1 +
 arch/arm/boards/radxa-cm3/.gitignore |  1 +
 arch/arm/boards/radxa-cm3/Makefile   |  3 ++
 arch/arm/boards/radxa-cm3/board.c    | 56 ++++++++++++++++++++++++++++
 arch/arm/boards/radxa-cm3/lowlevel.c | 50 +++++++++++++++++++++++++
 arch/arm/dts/Makefile                |  1 +
 arch/arm/dts/rk3566-cm3-io.dts       | 55 +++++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig       |  6 +++
 images/Makefile.rockchip             |  7 ++++
 9 files changed, 180 insertions(+)
 create mode 100644 arch/arm/boards/radxa-cm3/.gitignore
 create mode 100644 arch/arm/boards/radxa-cm3/Makefile
 create mode 100644 arch/arm/boards/radxa-cm3/board.c
 create mode 100644 arch/arm/boards/radxa-cm3/lowlevel.c
 create mode 100644 arch/arm/dts/rk3566-cm3-io.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 37b1650e63..b204c257f6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -190,3 +190,4 @@ obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
 obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
 obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
+obj-$(CONFIG_MACH_RADXA_CM3)			+= radxa-cm3/
diff --git a/arch/arm/boards/radxa-cm3/.gitignore b/arch/arm/boards/radxa-cm3/.gitignore
new file mode 100644
index 0000000000..f458f794b5
--- /dev/null
+++ b/arch/arm/boards/radxa-cm3/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/radxa-cm3/Makefile b/arch/arm/boards/radxa-cm3/Makefile
new file mode 100644
index 0000000000..b37b6c870b
--- /dev/null
+++ b/arch/arm/boards/radxa-cm3/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/radxa-cm3/board.c b/arch/arm/boards/radxa-cm3/board.c
new file mode 100644
index 0000000000..14b6784179
--- /dev/null
+++ b/arch/arm/boards/radxa-cm3/board.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+
+struct cm3_model {
+	const char *name;
+	const char *shortname;
+};
+
+static int cm3_probe(struct device *dev)
+{
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+	const struct cm3_model *model;
+
+	model = device_get_match_data(dev);
+
+	barebox_set_model(model->name);
+	barebox_set_hostname(model->shortname);
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
+				"/dev/mmc0");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
+
+	return 0;
+}
+
+static const struct cm3_model cm3_io = {
+	.name = "Radxa CM3 on IO Board",
+	.shortname = "cm3-io",
+};
+
+static const struct of_device_id cm3_of_match[] = {
+	{
+		.compatible = "radxa,cm3-io",
+		.data = &cm3_io,
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver cm3_io_board_driver = {
+	.name = "board-cm3-io",
+	.probe = cm3_probe,
+	.of_compatible = cm3_of_match,
+};
+coredevice_platform_driver(cm3_io_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(cm3_of_match);
diff --git a/arch/arm/boards/radxa-cm3/lowlevel.c b/arch/arm/boards/radxa-cm3/lowlevel.c
new file mode 100644
index 0000000000..e25ba62bea
--- /dev/null
+++ b/arch/arm/boards/radxa-cm3/lowlevel.c
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
+extern char __dtb_rk3566_cm3_io_start[];
+
+static noinline void rk3566_start(void)
+{
+	void *fdt = __dtb_rk3566_cm3_io_start;
+
+	/*
+	 * Enable vccio4 1.8V and vccio6 1.8V
+	 * Needed for GMAC to work.
+	 * FIXME: This is done by the io-domain driver as well, but there
+	 * currently is no mechanism to make sure the driver gets probed
+	 * before its consumers. Remove this setup once this issue is
+	 * resolved.
+	 */
+	writel(RK_SETBITS(0x50), 0xfdc20140);
+
+	if (current_el() == 3) {
+		rk3568_lowlevel_init();
+		rk3568_atf_load_bl31(fdt);
+		/* not reached */
+	}
+
+	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
+}
+
+ENTRY_FUNCTION(start_radxa_cm3_io, r0, r1, r2)
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
+	rk3566_start();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0a7cceb461..220e1617e3 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -109,6 +109,7 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1s.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
+lwl-$(CONFIG_MACH_RADXA_CM3) += rk3566-cm3-io.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 lwl-$(CONFIG_MACH_RK3568_EVB) += rk3568-evb1-v10.dtb.o
diff --git a/arch/arm/dts/rk3566-cm3-io.dts b/arch/arm/dts/rk3566-cm3-io.dts
new file mode 100644
index 0000000000..81f896b943
--- /dev/null
+++ b/arch/arm/dts/rk3566-cm3-io.dts
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3566-radxa-cm3-io.dts>
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
index 4ac75ab947..0d3bbebaad 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -86,6 +86,12 @@ config MACH_RADXA_ROCK3
        help
 	  Say Y here if you are using a Radxa ROCK3
 
+config MACH_RADXA_CM3
+       select ARCH_RK3568
+       bool "Radxa CM3"
+       help
+	  Say Y here if you are using a Radxa CM3
+
 comment "select board features:"
 
 config ARCH_ROCKCHIP_ATF
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 33c76caf79..490e1ddb4d 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -23,6 +23,9 @@ image-$(CONFIG_MACH_PINE64_QUARTZ64) += barebox-quartz64a.img
 pblb-$(CONFIG_MACH_RADXA_ROCK3) += start_rock3a
 image-$(CONFIG_MACH_RADXA_ROCK3) += barebox-rock3a.img
 
+pblb-$(CONFIG_MACH_RADXA_CM3) += start_radxa-cm3-io.img
+image-$(CONFIG_MACH_RADXA_CM3) += barebox-radxa-cm3-io.img
+
 quiet_cmd_rkimg_image = RK-IMG $@
       cmd_rkimg_image = $(objtree)/scripts/rkimage -o $@ $(word 2,$^) $(word 1,$^)
 
@@ -41,3 +44,7 @@ $(obj)/barebox-quartz64a.img: $(obj)/start_quartz64a.pblb \
 $(obj)/barebox-rock3a.img: $(obj)/start_rock3a.pblb \
                 $(board)/radxa-rock3/sdram-init.bin
 	$(call if_changed,rkimg_image)
+
+$(obj)/barebox-radxa-cm3-io.img: $(obj)/start_radxa_cm3_io.pblb \
+                $(board)/radxa-cm3/sdram-init.bin
+	$(call if_changed,rkimg_image)
-- 
2.39.2



