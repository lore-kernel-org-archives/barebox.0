Delivery-date: Wed, 13 Sep 2023 15:03:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPWL-00DmLb-Ud
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 15:03:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPWJ-000878-4p
	for lore@pengutronix.de; Wed, 13 Sep 2023 15:03:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mKYMwsWa5SgOiF+uaMPtIdtQTEHEekVDsjvgaFeVF0E=; b=dDRzkRebRvPnycvElZF9WN22pV
	R0Ybrtcix6L/WAWBUTAV8qnBQWeEnKLv70O/KtdaHkxQVvPLslyG6+VbxVfgjk/aPEl9dkoEnvSDY
	LIbE8AUlG5gW119Wj4tlDqlKuRfUIO0fJyHJfFFWq9Ss8rMvib5zsHuLxQQI8lkIR9UM33UMGDpvS
	G4ETX69cY8+yqT0xtKMkw/awtF8RC8/5jmHhWvNvYwaCtuyvVxxv2KLlRGLyUVvHEN+zjxEJF835/
	4+BCAn3jSHzVoyGO60flSH9sZ2c+wr5VziZEcjlIHX+8UqPJz7x87NUaCSogBZTcRCGmjdR58Pv5r
	E8kT+2sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPVH-005vDL-2o;
	Wed, 13 Sep 2023 13:01:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPVE-005vCO-1d
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 13:01:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPVD-0007xh-BM; Wed, 13 Sep 2023 15:01:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPVC-0064Xl-OU; Wed, 13 Sep 2023 15:01:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPVC-0093vF-2I;
	Wed, 13 Sep 2023 15:01:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 15:01:50 +0200
Message-Id: <20230913130150.2159921-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_060156_791674_D1B9ED4B 
X-CRM114-Status: GOOD (  21.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: ZynqMP: Add ZCU102 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ZCU102 is a potentially interesting platform, because there's Qemu
support for it. It's not very straight forward to use, because the
ZynqMP support in barebox and Linux relies heavily on firmware services,
which are lacking when naively using Qemu.

Still, let's add support now and worry about running it as part of the
test suite later.

Board support was not tested on actual hardware, but on Qemu with
changes on top of barebox to skip the firmware communication.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/zynqmp.rst          |  4 ++--
 arch/arm/boards/Makefile                 |  1 +
 arch/arm/boards/xilinx-zcu102/Makefile   |  3 +++
 arch/arm/boards/xilinx-zcu102/board.c    | 27 ++++++++++++++++++++++++
 arch/arm/boards/xilinx-zcu102/lowlevel.c | 15 +++++++++++++
 arch/arm/configs/multi_v8_defconfig      |  1 +
 arch/arm/configs/zynqmp_defconfig        |  1 +
 arch/arm/dts/Makefile                    |  1 +
 arch/arm/dts/zynqmp-zcu102-revA.dts      | 13 ++++++++++++
 arch/arm/dts/zynqmp-zcu102-revB.dts      | 13 ++++++++++++
 arch/arm/mach-zynqmp/Kconfig             |  7 ++++++
 images/Makefile.zynqmp                   |  4 ++++
 12 files changed, 88 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/xilinx-zcu102/Makefile
 create mode 100644 arch/arm/boards/xilinx-zcu102/board.c
 create mode 100644 arch/arm/boards/xilinx-zcu102/lowlevel.c
 create mode 100644 arch/arm/dts/zynqmp-zcu102-revA.dts
 create mode 100644 arch/arm/dts/zynqmp-zcu102-revB.dts

diff --git a/Documentation/boards/zynqmp.rst b/Documentation/boards/zynqmp.rst
index 98fcac017b17..86078d496eec 100644
--- a/Documentation/boards/zynqmp.rst
+++ b/Documentation/boards/zynqmp.rst
@@ -11,13 +11,13 @@ Currently, Barebox only supports booting as a second stage boot loader from an
 SD-card. It relies on the FSBL_ to initialize the base system including sdram
 setup and pin muxing.
 
-The ZynqMP defconfig supports the ZCU104 reference board. Use it to build the
+The ZynqMP defconfig supports the ZCU102/104/106 reference board. Use it to build the
 Barebox image::
 
    make ARCH=arm64 zynqmp_defconfig
    make ARCH=arm64
 
-.. note:: The resulting image ``images/barebox-zynqmp-zcu104.img`` is **not** an image
+.. note:: The resulting image ``images/barebox-zynqmp-zcuX.img`` is **not** an image
   that can directly be booted on the ZynqMP.
 
 For a bootable BOOT.BIN image, you also need to build the FSBL_ and a ZynqMP
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 56bd7baf37eb..66dc44cd8867 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -177,6 +177,7 @@ obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_WEBASTO_CCBV2)		+= webasto-ccbv2/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
+obj-$(CONFIG_MACH_XILINX_ZCU102)		+= xilinx-zcu102/
 obj-$(CONFIG_MACH_XILINX_ZCU104)		+= xilinx-zcu104/
 obj-$(CONFIG_MACH_XILINX_ZCU106)		+= xilinx-zcu106/
 obj-$(CONFIG_MACH_ZII_COMMON)			+= zii-common/
diff --git a/arch/arm/boards/xilinx-zcu102/Makefile b/arch/arm/boards/xilinx-zcu102/Makefile
new file mode 100644
index 000000000000..d83a4793aa0f
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu102/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/xilinx-zcu102/board.c b/arch/arm/boards/xilinx-zcu102/board.c
new file mode 100644
index 000000000000..3ef668fdff7a
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu102/board.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <mach/zynqmp/zynqmp-bbu.h>
+#include <deep-probe.h>
+
+static int zcu102_probe(struct device *dev)
+{
+	return zynqmp_bbu_register_handler("SD", "/boot/BOOT.BIN",
+					   BBU_HANDLER_FLAG_DEFAULT);
+}
+
+static const struct of_device_id zcu102_of_match[] = {
+	{ .compatible = "xlnx,zynqmp-zcu102-revA" },
+	{ .compatible = "xlnx,zynqmp-zcu102-revB" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(zcu102_of_match);
+
+static struct driver zcu102_board_driver = {
+	.name = "board-zynqmp-zcu102",
+	.probe = zcu102_probe,
+	.of_compatible = zcu102_of_match,
+};
+coredevice_platform_driver(zcu102_board_driver);
diff --git a/arch/arm/boards/xilinx-zcu102/lowlevel.c b/arch/arm/boards/xilinx-zcu102/lowlevel.c
new file mode 100644
index 000000000000..4b72c0ec43e1
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu102/lowlevel.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <debug_ll.h>
+#include <asm/barebox-arm.h>
+
+ENTRY_FUNCTION_WITHSTACK(start_zynqmp_zcu102, 0x80000000, x0, x1, x2)
+{
+	extern char __dtb_z_zynqmp_zcu102_revB_start[];
+
+	/* Assume that the first stage boot loader configured the UART */
+	putc_ll('>');
+
+	barebox_arm_entry(0, SZ_2G, runtime_address(__dtb_z_zynqmp_zcu102_revB_start));
+}
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 20f630281db5..b18498c0a13f 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -22,6 +22,7 @@ CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
+CONFIG_MACH_XILINX_ZCU102=y
 CONFIG_MACH_XILINX_ZCU104=y
 CONFIG_MACH_XILINX_ZCU106=y
 CONFIG_64BIT=y
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index c9b6fa69ef2a..00327adc399c 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_ZYNQMP=y
+CONFIG_MACH_XILINX_ZCU102=y
 CONFIG_MACH_XILINX_ZCU104=y
 CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f30516320738..dad01925e6d2 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -203,6 +203,7 @@ lwl-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D4_WIFX) += at91-sama5d4_wifx_l1.dtb.o
 lwl-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 lwl-$(CONFIG_MACH_BOSCH_PPM4) += zynqmp-ppm4.dtb.o
+lwl-$(CONFIG_MACH_XILINX_ZCU102) += zynqmp-zcu102-revA.dtb.o zynqmp-zcu102-revB.dtb.o
 lwl-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 lwl-$(CONFIG_MACH_XILINX_ZCU106) += zynqmp-zcu106-revA.dtb.o
 
diff --git a/arch/arm/dts/zynqmp-zcu102-revA.dts b/arch/arm/dts/zynqmp-zcu102-revA.dts
new file mode 100644
index 000000000000..8f5410d5e6eb
--- /dev/null
+++ b/arch/arm/dts/zynqmp-zcu102-revA.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <arm64/xilinx/zynqmp-zcu102-revA.dts>
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &sdhci1, "partname:0";
+			file-path = "barebox.env";
+		};
+	};
+};
diff --git a/arch/arm/dts/zynqmp-zcu102-revB.dts b/arch/arm/dts/zynqmp-zcu102-revB.dts
new file mode 100644
index 000000000000..3f772f465a45
--- /dev/null
+++ b/arch/arm/dts/zynqmp-zcu102-revB.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <arm64/xilinx/zynqmp-zcu102-revB.dts>
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &sdhci1, "partname:0";
+			file-path = "barebox.env";
+		};
+	};
+};
diff --git a/arch/arm/mach-zynqmp/Kconfig b/arch/arm/mach-zynqmp/Kconfig
index d6543e779ebc..d11e873ed628 100644
--- a/arch/arm/mach-zynqmp/Kconfig
+++ b/arch/arm/mach-zynqmp/Kconfig
@@ -8,6 +8,13 @@ config MACH_BOSCH_PPM4
 	help
 	  Say Y here if you are using the Bosch Zynq UltraScale+ MPSoC PPM4.
 
+config MACH_XILINX_ZCU102
+	bool "Xilinx Zynq UltraScale+ MPSoC ZCU102"
+	select ARM_USE_COMPRESSED_DTB
+	help
+	  Say Y here if you are using the Xilinx Zynq UltraScale+ MPSoC ZCU102
+	  evaluation board.
+
 config MACH_XILINX_ZCU104
 	bool "Xilinx Zynq UltraScale+ MPSoC ZCU104"
 	help
diff --git a/images/Makefile.zynqmp b/images/Makefile.zynqmp
index 6c3f384084d4..96740ae75024 100644
--- a/images/Makefile.zynqmp
+++ b/images/Makefile.zynqmp
@@ -7,6 +7,10 @@ pblb-$(CONFIG_MACH_BOSCH_PPM4) += start_zynqmp_ppm4
 FILE_barebox-zynqmp-ppm4.img = start_zynqmp_ppm4.pblb
 image-$(CONFIG_MACH_BOSCH_PPM4) += barebox-zynqmp-ppm4.img
 
+pblb-$(CONFIG_MACH_XILINX_ZCU102) += start_zynqmp_zcu102
+FILE_barebox-zynqmp-zcu102.img = start_zynqmp_zcu102.pblb
+image-$(CONFIG_MACH_XILINX_ZCU102) += barebox-zynqmp-zcu102.img
+
 pblb-$(CONFIG_MACH_XILINX_ZCU104) += start_zynqmp_zcu104
 FILE_barebox-zynqmp-zcu104.img = start_zynqmp_zcu104.pblb
 image-$(CONFIG_MACH_XILINX_ZCU104) += barebox-zynqmp-zcu104.img
-- 
2.39.2



