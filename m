Delivery-date: Fri, 11 Apr 2025 09:31:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rG-00B9mp-36
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rF-0002oF-LI
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2sl/sPoRvsI+t1efLngJdUZHK7IytjPXESZr5mrzd3c=; b=C7vc6yMNWTHZnOUe1QEhp2P8Zn
	SuunIE9/D6n+ftu25YDDkXuaMtmJhA3Y0BCNPmgo1VF6dnGFPyEYguEB73Dt1LgT3D+mbC1aJipj6
	8Z4hMmgOMq/xQm8TdOeK7FeZRP6DQ4gRin3Sb4WEbUcsEGgV8Z1/qL8YLG4SkwSHGQAktfknowkPz
	xLeISyZdAkQKn+J4AM/az4/BR0Ztw1mteRLLOB+sskF3cNWBVIUGKYFORF/w4vy+YVIJUJUaLPHXZ
	m8MQLGXm5sH4OYQXu69qwnJK5Hs8evMhVRqEEVhecPE1bkTGpPQYNTLuNQvOtLL+112SZmdxp60qm
	q1kSDRWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qj-0000000CsUN-264n;
	Fri, 11 Apr 2025 07:30:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38no-0000000CrMI-3GTk
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:27:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-0001Xd-Iv; Fri, 11 Apr 2025 09:27:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-004OcU-1G;
	Fri, 11 Apr 2025 09:27:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-008TCU-0y;
	Fri, 11 Apr 2025 09:27:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:27:48 +0200
Message-Id: <20250411072748.2017367-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
References: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_002753_130960_2FFD8768 
X-CRM114-Status: GOOD (  23.49  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: stm32mp: add Linux Automation FairyTux 2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Leonard Göhrs <l.goehrs@pengutronix.de>

Add support for the Linux Automation GmbH FairyTux 2.
The board boots from eMMC, but requires USB loading if
no previous barebox has been put into the eMMC boot partition.

Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/lxa-fairytux2/Makefile        |   2 +
 arch/arm/boards/lxa-fairytux2/board.c         |  32 ++++++
 arch/arm/boards/lxa-fairytux2/lowlevel.c      |  71 ++++++++++++
 arch/arm/configs/multi_v7_defconfig           |   1 +
 arch/arm/configs/stm32mp_defconfig            |   1 +
 arch/arm/dts/Makefile                         |   1 +
 .../dts/stm32mp153c-lxa-fairytux2-gen1.dts    |   7 ++
 .../dts/stm32mp153c-lxa-fairytux2-gen2.dts    |  26 +++++
 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi   | 103 ++++++++++++++++++
 arch/arm/mach-stm32mp/Kconfig                 |   4 +
 images/Makefile.stm32mp                       |   1 +
 12 files changed, 250 insertions(+)
 create mode 100644 arch/arm/boards/lxa-fairytux2/Makefile
 create mode 100644 arch/arm/boards/lxa-fairytux2/board.c
 create mode 100644 arch/arm/boards/lxa-fairytux2/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-fairytux2-gen1.dts
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 187bfed46f91..908497cd8b05 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -127,6 +127,7 @@ obj-$(CONFIG_MACH_STM32MP15XX_DKX)		+= stm32mp15xx-dkx/
 obj-$(CONFIG_MACH_STM32MP13XX_DK)		+= stm32mp13xx-dk/
 obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
 obj-$(CONFIG_MACH_LXA_TAC)			+= lxa-tac/
+obj-$(CONFIG_MACH_LXA_FAIRYTUX2)		+= lxa-fairytux2/
 obj-$(CONFIG_MACH_STM32MP15X_EV1)		+= stm32mp15x-ev1/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
diff --git a/arch/arm/boards/lxa-fairytux2/Makefile b/arch/arm/boards/lxa-fairytux2/Makefile
new file mode 100644
index 000000000000..092c31d6b28d
--- /dev/null
+++ b/arch/arm/boards/lxa-fairytux2/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/lxa-fairytux2/board.c b/arch/arm/boards/lxa-fairytux2/board.c
new file mode 100644
index 000000000000..2dc625c40408
--- /dev/null
+++ b/arch/arm/boards/lxa-fairytux2/board.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <linux/sizes.h>
+#include <init.h>
+#include <asm/memory.h>
+#include <mach/stm32mp/bbu.h>
+#include <bootsource.h>
+#include <deep-probe.h>
+#include <of.h>
+
+static int fairytux2_probe(struct device *dev)
+{
+	barebox_set_hostname("fairytux2");
+
+	stm32mp_bbu_mmc_fip_register("mmc", "/dev/mmc1", BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+
+static const struct of_device_id fairytux2_of_match[] = {
+	{ .compatible = "lxa,stm32mp153c-fairytux2-gen1" },
+	{ .compatible = "lxa,stm32mp153c-fairytux2-gen2" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(fairytux2_of_match);
+
+static struct driver fairytux2_board_driver = {
+	.name = "board-lxa-fairytux2",
+	.probe = fairytux2_probe,
+	.of_compatible = fairytux2_of_match,
+};
+device_platform_driver(fairytux2_board_driver);
diff --git a/arch/arm/boards/lxa-fairytux2/lowlevel.c b/arch/arm/boards/lxa-fairytux2/lowlevel.c
new file mode 100644
index 000000000000..b8055ca3275d
--- /dev/null
+++ b/arch/arm/boards/lxa-fairytux2/lowlevel.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/stm32mp/entry.h>
+#include <mach/stm32mp/stm32.h>
+#include <soc/stm32/gpio.h>
+
+extern char __dtb_z_stm32mp153c_lxa_fairytux2_gen1_start[];
+extern char __dtb_z_stm32mp153c_lxa_fairytux2_gen2_start[];
+
+/* Major board generation is set via traces in copper
+ * Minor board generation can be changed via resistors.
+ *
+ * The revision is available on GPIOs:
+ * [PZ0, PZ1, PZ2, PZ3, PZ6, PZ7] */
+#define BOARD_GEN(major, minor)	(major << 2 | minor)
+#define BOARD_GEN1		BOARD_GEN(0, 0)
+#define BOARD_GEN2		BOARD_GEN(1, 0)
+
+/* The first batch of Gen 2 boards is special because the major revision was
+ * not updated in copper by accident.
+ * They are instead identified by an incremented minor number. */
+#define BOARD_GEN2_QUIRK	BOARD_GEN(0, 1)
+
+static const int board_rev_pins[] = {0, 1, 2, 3, 6, 7};
+
+static u32 get_board_rev(void)
+{
+	u32 board_rev = 0;
+
+	/* Enable GPIOZ bank */
+	setbits_le32(STM32MP15_RCC_MP_AHB5ENSETR, BIT(0));
+
+	for (size_t i = 0; i < ARRAY_SIZE(board_rev_pins); i++) {
+		int pin = board_rev_pins[i];
+
+		__stm32_pmx_gpio_input(STM32MP15_GPIOZ_BASE, pin);
+		board_rev |= __stm32_pmx_gpio_get(STM32MP15_GPIOZ_BASE, pin) << i;
+	}
+
+	return board_rev;
+}
+
+static void noinline select_fdt_and_start(void *fdt)
+{
+	putc_ll('>');
+
+	switch (get_board_rev()) {
+	case BOARD_GEN1:
+		fdt = runtime_address(__dtb_z_stm32mp153c_lxa_fairytux2_gen1_start);
+		break;
+	case BOARD_GEN2:
+	case BOARD_GEN2_QUIRK:
+		fdt = runtime_address(__dtb_z_stm32mp153c_lxa_fairytux2_gen2_start);
+		break;
+	}
+
+	stm32mp1_barebox_entry(fdt);
+}
+
+
+ENTRY_FUNCTION(start_stm32mp153c_lxa_fairytux2, r0, r1, r2)
+{
+	stm32mp_cpu_lowlevel_init();
+
+	/* stm32mp_cpu_lowlevel_init sets up a stack.
+	 * Do the remaining init in a non-naked function.
+	 * Register r2 points to the fdt from the FIT image
+	 * which can be used as a default. */
+	select_fdt_and_start((void *)r2);
+}
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index ccaf09efd449..9880a45c70a6 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -81,6 +81,7 @@ CONFIG_MACH_STM32MP13XX_DK=y
 CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_LXA_TAC=y
+CONFIG_MACH_LXA_FAIRYTUX2=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index dfd2fc7e8f00..4b169993e902 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_STM32MP13XX_DK=y
 CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_LXA_TAC=y
+CONFIG_MACH_LXA_FAIRYTUX2=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 23655f2b21eb..3044c9bf120f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -158,6 +158,7 @@ lwl-$(CONFIG_MACH_STM32MP13XX_DK) += stm32mp135f-dk.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o stm32mp157c-lxa-mc1-scmi.dtb.o
 lwl-$(CONFIG_MACH_LXA_TAC) += stm32mp157c-lxa-tac-gen1.dtb.o stm32mp157c-lxa-tac-gen2.dtb.o \
 				stm32mp153c-lxa-tac-gen3.dtb.o
+lwl-$(CONFIG_MACH_LXA_FAIRYTUX2) += stm32mp153c-lxa-fairytux2-gen1.dtb.o stm32mp153c-lxa-fairytux2-gen2.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o stm32mp157c-ev1-scmi.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen1.dts b/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen1.dts
new file mode 100644
index 000000000000..b51bc38934db
--- /dev/null
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen1.dts
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2024 Leonard Goehrs, Pengutronix
+ */
+
+#include <arm/st/stm32mp153c-lxa-fairytux2-gen1.dts>
+#include "stm32mp153c-lxa-fairytux2.dtsi"
diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts b/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts
new file mode 100644
index 000000000000..2040959965f3
--- /dev/null
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2024 Leonard Goehrs, Pengutronix
+ */
+
+#include <arm/st/stm32mp153c-lxa-fairytux2-gen2.dts>
+#include "stm32mp153c-lxa-fairytux2.dtsi"
+
+/ {
+	aliases {
+		io-board-factory-data = &io_board_factory_data;
+	};
+};
+
+&io_board_eeprom {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		io_board_factory_data: factory-data@0 {
+			reg = <0 0x100>;
+			label = "tlv";
+		};
+	};
+};
diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
new file mode 100644
index 000000000000..12a7c290dd0b
--- /dev/null
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
+ * Copyright (C) 2024 Leonard Goehrs, Pengutronix
+ */
+
+#include "stm32mp151.dtsi"
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &sdmmc2, "partname:barebox-environment";
+		};
+	};
+
+	aliases {
+		state = &state_emmc;
+		baseboard-factory-data = &baseboard_factory_data;
+	};
+
+	reserved-memory {
+		ramoops {
+			compatible = "ramoops";
+			/* Everything else will be fixed up at runtime */
+		};
+	};
+
+	state_emmc: state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0xfee2ea9b>;
+		backend-type = "raw";
+		backend = <&sdmmc2>;
+		backend-stridesize = <0x1000>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <0>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <0>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+};
+
+&usbh_ehci {
+	status = "disabled";
+};
+
+&usbh_ohci {
+	status = "okay";
+};
+
+&baseboard_eeprom {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		baseboard_factory_data: factory-data@0 {
+			reg = <0 0x400>;
+			label = "tlv";
+		};
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 8305de6f8020..ad6c4e202fc1 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -33,6 +33,10 @@ config MACH_LXA_TAC
 	select ARCH_STM32MP157
 	bool "Linux Automation TAC board"
 
+config MACH_LXA_FAIRYTUX2
+	select ARCH_STM32MP157
+	bool "Linux Automation FairyTux 2"
+
 config MACH_SEEED_ODYSSEY
 	select ARCH_STM32MP157
 	bool "Seeed Studio Odyssey"
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 6db595212391..70868b3c4808 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -27,6 +27,7 @@ endef
 $(call build_stm32mp_ssbl_image, CONFIG_ARCH_STM32MP, start_stm32mp_bl33, stm32mp-generic-bl33)
 
 $(call build_stm32mp_ssbl_image, CONFIG_MACH_LXA_TAC, start_stm32mp15xc_lxa_tac, stm32mp15xc-lxa-tac)
+$(call build_stm32mp_ssbl_image, CONFIG_MACH_LXA_FAIRYTUX2, start_stm32mp153c_lxa_fairytux2, stm32mp153c-lxa-fairytux2)
 
 # ------------ SSBL Images for FIP with builtin Device Trees -------------
 # These images all have a device tree builtin. This is useful for boards that
-- 
2.39.5



