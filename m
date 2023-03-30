Delivery-date: Thu, 30 Mar 2023 18:12:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phutE-002sWH-7U
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 18:12:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phutD-0000uQ-OM
	for lore@pengutronix.de; Thu, 30 Mar 2023 18:12:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dRTGpXkGVcBGXPYbMYnCCnEAg19vIza2ozdSQXe3pc8=; b=ElNZAQqJQ9gy2l/L/YU2Cj+IBO
	FxbHuRGK/JEkqVp2bh7nlSXBUj3DwQnDks3QQULWek/uWKZ+ll6ndoXqhMJmWNRDd2QD7/9nL1jja
	uk4EAuFr3q4+Q37cQkYDUVnyxnvrTBgbYZndfMDmbHnr0g/8MbBOj8fSldpxRc3434UYDBQhuJX9j
	Y6WODvzLy9dDGg9rxM7FclL9w8q7k/T4k5h/deWOm8Ft/gV3fpUJ1+idwiyt11xXVVIG4CG0UDLn3
	QWKjqDKgJ+rKKpv1ARnPWrlbsrdEDmc0Sh4yDeA9JU9cBrJdv+0UrrJfbg4wZC6b6i+eppBSvFBAs
	pYgo/0zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phurq-004QSU-36;
	Thu, 30 Mar 2023 16:11:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phurn-004QQC-1h
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 16:11:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1phurj-0000hd-DH; Thu, 30 Mar 2023 18:11:07 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven@czerwinskis.de>
Date: Thu, 30 Mar 2023 18:11:01 +0200
Message-Id: <20230330161101.58529-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_091111_740140_E3A176B9 
X-CRM114-Status: GOOD (  21.57  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH next v2] arm: rockchip: add support for CM3 on IO board
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
v2:
- rebase on next and adjust to RK356x changes
- update rockchip boards documentation

 Documentation/boards/rockchip.rst    |  1 +
 arch/arm/boards/Makefile             |  1 +
 arch/arm/boards/radxa-cm3/.gitignore |  1 +
 arch/arm/boards/radxa-cm3/Makefile   |  3 ++
 arch/arm/boards/radxa-cm3/board.c    | 56 ++++++++++++++++++++++++++++
 arch/arm/boards/radxa-cm3/lowlevel.c | 28 ++++++++++++++
 arch/arm/dts/Makefile                |  1 +
 arch/arm/dts/rk3566-cm3-io.dts       | 55 +++++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig       |  6 +++
 images/Makefile.rockchip             |  7 ++++
 10 files changed, 159 insertions(+)
 create mode 100644 arch/arm/boards/radxa-cm3/.gitignore
 create mode 100644 arch/arm/boards/radxa-cm3/Makefile
 create mode 100644 arch/arm/boards/radxa-cm3/board.c
 create mode 100644 arch/arm/boards/radxa-cm3/lowlevel.c
 create mode 100644 arch/arm/dts/rk3566-cm3-io.dts

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 0e8738bbf1..583b4f1720 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -60,6 +60,7 @@ Supported Boards
 - Rockchip RK3568 Bananapi R2 Pro
 - Pine64 Quartz64 Model A
 - Radxa ROCK3 Model A
+- Radxa CM3 (RK3566) IO Board
 
 The steps described in the following target the RK3568 and the RK3568 EVB but
 generally apply to both SoCs and all boards.
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
index 0000000000..ee620c0aeb
--- /dev/null
+++ b/arch/arm/boards/radxa-cm3/lowlevel.c
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+
+extern char __dtb_rk3566_cm3_io_start[];
+
+ENTRY_FUNCTION(start_radxa_cm3_io, r0, r1, r2)
+{
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
+	putc_ll('>');
+
+	relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3566_cm3_io_start);
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
index 9b4913d5da..ae08fc8ce3 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -91,6 +91,12 @@ config MACH_RADXA_ROCK3
        help
 	  Say Y here if you are using a Radxa ROCK3
 
+config MACH_RADXA_CM3
+       select ARCH_RK3568
+       bool "Radxa CM3"
+       help
+	  Say Y here if you are using a Radxa CM3
+
 endif
 
 comment "select board features:"
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



