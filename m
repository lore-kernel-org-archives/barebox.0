Delivery-date: Fri, 11 Apr 2025 09:31:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rH-00B9mz-0K
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rF-0002oE-KB
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HrCwdt553StswJfrbVCHVz6fbwV7Mi529owwvcWH8+o=; b=pLAOpILvUEjxJ1uVfiVq6EqmNW
	GcASYObKTJuV6tuM5cdlopdUVXAWlGGF1JDO+DyLDl7o98cQtMieRXgH4BKc4OTLROr37bIQLbnry
	+5Z+hZQ9uWyknZ+g93bJdz4+S8uURScxM/WXvanpZ/dJuhe7F65K0M24V3pggOY1NZ7QiQ+zQJ5zH
	aUocyHrEarOkVvKFYmogbZZ9ReLAtk5dm8jWjbLcuQFiekvDxbDyVCDU22zC4NrHK/S2KeHdlajku
	NP/1CsYGKLvbPlFDHpE6PXKfXagBRm4EkDiicV7NO1/h7K+V30ASG2oYu6aRX//pB8z3PVjJrUWJI
	uH2TjzLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qk-0000000CsVY-2sF1;
	Fri, 11 Apr 2025 07:30:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38no-0000000CrMJ-3MSC
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:27:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-0001Xc-Hp; Fri, 11 Apr 2025 09:27:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-004OcR-17;
	Fri, 11 Apr 2025 09:27:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-008TCU-0o;
	Fri, 11 Apr 2025 09:27:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:27:47 +0200
Message-Id: <20250411072748.2017367-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
References: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_002753_161168_3031EACC 
X-CRM114-Status: GOOD (  24.67  )
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
Subject: [PATCH 2/3] ARM: stm32mp: add Linux Automation TAC board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the Linux Automation GmbH Test Automation
Controller (TAC). The board boots from eMMC, but requires USB loading if
no previous barebox has been put into the eMMC boot partition.

Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/Makefile                  |   1 +
 arch/arm/boards/lxa-tac/Makefile          |   2 +
 arch/arm/boards/lxa-tac/board.c           |  33 ++++++
 arch/arm/boards/lxa-tac/lowlevel.c        |  71 ++++++++++++
 arch/arm/configs/multi_v7_defconfig       |   1 +
 arch/arm/configs/stm32mp_defconfig        |   1 +
 arch/arm/dts/Makefile                     |   2 +
 arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts |  38 ++++++
 arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts |   7 ++
 arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts |  38 ++++++
 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi     | 134 ++++++++++++++++++++++
 arch/arm/mach-stm32mp/Kconfig             |   4 +
 images/Makefile.stm32mp                   |   2 +
 include/mach/stm32mp/stm32.h              |   3 +
 14 files changed, 337 insertions(+)
 create mode 100644 arch/arm/boards/lxa-tac/Makefile
 create mode 100644 arch/arm/boards/lxa-tac/board.c
 create mode 100644 arch/arm/boards/lxa-tac/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts
 create mode 100644 arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts
 create mode 100644 arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts
 create mode 100644 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 1e67b304f185..187bfed46f91 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -126,6 +126,7 @@ obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
 obj-$(CONFIG_MACH_STM32MP15XX_DKX)		+= stm32mp15xx-dkx/
 obj-$(CONFIG_MACH_STM32MP13XX_DK)		+= stm32mp13xx-dk/
 obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
+obj-$(CONFIG_MACH_LXA_TAC)			+= lxa-tac/
 obj-$(CONFIG_MACH_STM32MP15X_EV1)		+= stm32mp15x-ev1/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
diff --git a/arch/arm/boards/lxa-tac/Makefile b/arch/arm/boards/lxa-tac/Makefile
new file mode 100644
index 000000000000..092c31d6b28d
--- /dev/null
+++ b/arch/arm/boards/lxa-tac/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/lxa-tac/board.c b/arch/arm/boards/lxa-tac/board.c
new file mode 100644
index 000000000000..96ffc46500bf
--- /dev/null
+++ b/arch/arm/boards/lxa-tac/board.c
@@ -0,0 +1,33 @@
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
+static int tac_probe(struct device *dev)
+{
+	barebox_set_hostname("lxatac");
+
+	stm32mp_bbu_mmc_fip_register("mmc", "/dev/mmc1", BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+
+static const struct of_device_id tac_of_match[] = {
+	{ .compatible = "lxa,stm32mp157c-tac-gen1" },
+	{ .compatible = "lxa,stm32mp157c-tac-gen2" },
+	{ .compatible = "lxa,stm32mp153c-tac-gen3" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(tac_of_match);
+
+static struct driver tac_board_driver = {
+	.name = "board-lxa-tac",
+	.probe = tac_probe,
+	.of_compatible = tac_of_match,
+};
+late_platform_driver(tac_board_driver);
diff --git a/arch/arm/boards/lxa-tac/lowlevel.c b/arch/arm/boards/lxa-tac/lowlevel.c
new file mode 100644
index 000000000000..eee7f8c0cead
--- /dev/null
+++ b/arch/arm/boards/lxa-tac/lowlevel.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/stm32mp/entry.h>
+#include <mach/stm32mp/stm32.h>
+#include <soc/stm32/gpio.h>
+
+extern char __dtb_z_stm32mp157c_lxa_tac_gen1_start[];
+extern char __dtb_z_stm32mp157c_lxa_tac_gen2_start[];
+extern char __dtb_z_stm32mp153c_lxa_tac_gen3_start[];
+
+/*
+ * Major board generation is set via traces in copper
+ * Minor board generation can be changed via resistors.
+ * The revision is available on GPIOs:
+ * [PZ0, PZ1, PZ2, PZ3, PZ6, PZ7]
+ */
+#define BOARD_GEN(major, minor)	(((major) << 2) | minor)
+#define BOARD_GEN1		BOARD_GEN(0, 0)
+#define BOARD_GEN2		BOARD_GEN(1, 0)
+#define BOARD_GEN3		BOARD_GEN(2, 0)
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
+		fdt = runtime_address(__dtb_z_stm32mp157c_lxa_tac_gen1_start);
+		break;
+	case BOARD_GEN2:
+		fdt = runtime_address(__dtb_z_stm32mp157c_lxa_tac_gen2_start);
+		break;
+	case BOARD_GEN3:
+		fdt = runtime_address(__dtb_z_stm32mp153c_lxa_tac_gen3_start);
+		break;
+	}
+
+	stm32mp1_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_stm32mp15xc_lxa_tac, r0, r1, r2)
+{
+	stm32mp_cpu_lowlevel_init();
+
+	/*
+	 * stm32mp_cpu_lowlevel_init sets up a stack. Do the remaining
+	 * init in a non-naked function. Register r2 points to the fdt
+	 * from the FIT image which can be used as a default.
+	 */
+	select_fdt_and_start((void *)r2);
+}
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 760a7aeca980..ccaf09efd449 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -80,6 +80,7 @@ CONFIG_MACH_PHYTEC_SOM_RK3288=y
 CONFIG_MACH_STM32MP13XX_DK=y
 CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
+CONFIG_MACH_LXA_TAC=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 41e6540c55a2..dfd2fc7e8f00 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_STM32MP=y
 CONFIG_MACH_STM32MP13XX_DK=y
 CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
+CONFIG_MACH_LXA_TAC=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 3922e0fb5c86..23655f2b21eb 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -156,6 +156,8 @@ lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.
 					stm32mp157c-dk2-scmi.dtb.o stm32mp157a-dk1-scmi.dtb.o
 lwl-$(CONFIG_MACH_STM32MP13XX_DK) += stm32mp135f-dk.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o stm32mp157c-lxa-mc1-scmi.dtb.o
+lwl-$(CONFIG_MACH_LXA_TAC) += stm32mp157c-lxa-tac-gen1.dtb.o stm32mp157c-lxa-tac-gen2.dtb.o \
+				stm32mp153c-lxa-tac-gen3.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o stm32mp157c-ev1-scmi.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
diff --git a/arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts b/arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts
new file mode 100644
index 000000000000..ab46e11d396d
--- /dev/null
+++ b/arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2024 Leonard Göhrs, Pengutronix
+ */
+
+#include <arm/st/stm32mp153c-lxa-tac-gen3.dts>
+#include "stm32mp15xc-lxa-tac.dtsi"
+
+/ {
+	led-controller-pwm {
+		compatible = "pwm-leds";
+
+		led-status-red {
+			label = "pwm:red:status";
+			pwms = <&led_pwm 0 1000000 0>;
+			active-low;
+			max-brightness = <255>;
+		};
+
+		led-status-green {
+			label = "pwm:green:status";
+			pwms = <&led_pwm 2 1000000 0>;
+			active-low;
+			max-brightness = <255>;
+		};
+
+		led-status-blue {
+			label = "pwm:blue:status";
+			pwms = <&led_pwm 1 1000000 0>;
+			active-low;
+			max-brightness = <255>;
+		};
+	};
+
+	led-controller-1 {
+		status = "disabled";
+	};
+};
diff --git a/arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts b/arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts
new file mode 100644
index 000000000000..47b764f13242
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2023 Leonard Göhrs, Pengutronix
+ */
+
+#include <arm/st/stm32mp157c-lxa-tac-gen1.dts>
+#include "stm32mp15xc-lxa-tac.dtsi"
diff --git a/arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts b/arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts
new file mode 100644
index 000000000000..f5261203f8ef
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2023 Leonard Göhrs, Pengutronix
+ */
+
+#include <arm/st/stm32mp157c-lxa-tac-gen2.dts>
+#include "stm32mp15xc-lxa-tac.dtsi"
+
+/ {
+	led-controller-pwm {
+		compatible = "pwm-leds";
+
+		led-status-red {
+			label = "pwm:red:status";
+			pwms = <&led_pwm 0 1000000 0>;
+			active-low;
+			max-brightness = <255>;
+		};
+
+		led-status-green {
+			label = "pwm:green:status";
+			pwms = <&led_pwm 2 1000000 0>;
+			active-low;
+			max-brightness = <255>;
+		};
+
+		led-status-blue {
+			label = "pwm:blue:status";
+			pwms = <&led_pwm 1 1000000 0>;
+			active-low;
+			max-brightness = <255>;
+		};
+	};
+
+	led-controller-1 {
+		status = "disabled";
+	};
+};
diff --git a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
new file mode 100644
index 000000000000..32f42e4b04d8
--- /dev/null
+++ b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
+ */
+
+#include "stm32mp151.dtsi"
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+		};
+	};
+
+	aliases {
+		state = &state_emmc;
+		baseboard-factory-data = &baseboard_factory_data;
+		powerboard-factory-data = &powerboard_factory_data;
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
+		backend = <&backend_state_emmc>;
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
+
+&powerboard_eeprom {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		powerboard_factory_data: factory-data@0 {
+			reg = <0 0x100>;
+			label = "tlv";
+		};
+	};
+};
+
+&sdmmc2 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@80000 {
+			label = "barebox-environment";
+			reg = <0 0x80000 0 0x40000>;
+		};
+
+		backend_state_emmc: partition@c0000 {
+			label = "barebox-state";
+			reg = <0 0xc0000 0 0x40000>;
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
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 7015a38bc121..8305de6f8020 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -29,6 +29,10 @@ config MACH_LXA_MC1
 	select ARCH_STM32MP157
 	bool "Linux Automation MC-1 board"
 
+config MACH_LXA_TAC
+	select ARCH_STM32MP157
+	bool "Linux Automation TAC board"
+
 config MACH_SEEED_ODYSSEY
 	select ARCH_STM32MP157
 	bool "Seeed Studio Odyssey"
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 68b65bd78afd..6db595212391 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -26,6 +26,8 @@ endef
 
 $(call build_stm32mp_ssbl_image, CONFIG_ARCH_STM32MP, start_stm32mp_bl33, stm32mp-generic-bl33)
 
+$(call build_stm32mp_ssbl_image, CONFIG_MACH_LXA_TAC, start_stm32mp15xc_lxa_tac, stm32mp15xc-lxa-tac)
+
 # ------------ SSBL Images for FIP with builtin Device Trees -------------
 # These images all have a device tree builtin. This is useful for boards that
 # support multiple hardware variants and need to ship multiple device trees.
diff --git a/include/mach/stm32mp/stm32.h b/include/mach/stm32mp/stm32.h
index a37d62cdaedb..ecbb7d824f54 100644
--- a/include/mach/stm32mp/stm32.h
+++ b/include/mach/stm32mp/stm32.h
@@ -13,6 +13,9 @@
 #define STM32_DDRCTL_BASE		0x5A003000
 #define STM32_TAMP_BASE			0x5C00A000
 
+#define STM32MP15_GPIOZ_BASE		IOMEM(0x54004000)
+#define STM32MP15_RCC_MP_AHB5ENSETR	IOMEM(0x50000210)
+
 #define STM32_USART1_BASE		0x5C000000
 #define STM32_USART2_BASE		0x4000E000
 #define STM32_USART3_BASE		0x4000F000
-- 
2.39.5



