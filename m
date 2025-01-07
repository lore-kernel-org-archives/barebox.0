Delivery-date: Tue, 07 Jan 2025 12:33:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7pV-000IVY-33
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 12:33:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7pR-0001u5-PV
	for lore@pengutronix.de; Tue, 07 Jan 2025 12:33:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4v/MsNWPB3cVBig1qGYXXJQe1VgKBqQUN6XReZTQUUU=; b=4QdYL4htBk5XzXClZZOiJqYzDy
	Nt+OtvxZNDV8xw6A6BxHuAhWDLpJHWb8iD9bRXVnYqOgmV/k9tsAJiYpJBBqcCjiXcOc8VnDHm+AO
	wN5id1yCMCgR76QnhEP4wQgXNxID7/KhDFLUnXQizdv1NJqlbYkGNfB04bx5ismHtdlQ3UXovL+TV
	BTgfxsPnkE2rI/OEd4Nnh8KRHD3NFIp94cRDvRcBMM8w71cJ+2Sj0Wra/8BKsjfhL43ztz9WP//cl
	kCOiT/HSRxhOzfKWJw3fnupuF5n5GFasJqLRpMZBuhFmWJpOglst7N+M06K6RtQ6R11P/DO40QAe4
	CZ8Xbg4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7on-00000004ZDA-2w8Y;
	Tue, 07 Jan 2025 11:32:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7oi-00000004Z80-0ETx
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 11:32:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7og-0001dL-UR; Tue, 07 Jan 2025 12:32:10 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7of-007Kt4-2u;
	Tue, 07 Jan 2025 12:32:10 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7og-005APo-20;
	Tue, 07 Jan 2025 12:32:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roan van Dijk <roan@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  7 Jan 2025 12:32:09 +0100
Message-Id: <20250107113209.1231661-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107113209.1231661-1-o.rempel@pengutronix.de>
References: <20250107113209.1231661-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_033212_463570_E69A0FC8 
X-CRM114-Status: GOOD (  31.24  )
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
Subject: [PATCH v2 2/2] ARM: protonic-stm32mp1: Add Add Priva E-Measuringbox board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Roan van Dijk <roan@protonic.nl>

Add support for the Priva E-Measuringbox ('pri,prihmb') board based on
the ST STM32MP133 SoC.

Signed-off-by: Roan van Dijk <roan@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/protonic-stm32mp13/Makefile   |   4 +
 arch/arm/boards/protonic-stm32mp13/board.c    | 287 ++++++++++
 arch/arm/boards/protonic-stm32mp13/lowlevel.c |  22 +
 arch/arm/configs/stm32mp_defconfig            |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/stm32mp133c-prihmb.dts           |  86 +++
 arch/arm/dts/stm32mp133c-prihmb.dtsi          | 496 ++++++++++++++++++
 arch/arm/mach-stm32mp/Kconfig                 |   7 +
 images/Makefile.stm32mp                       |   1 +
 10 files changed, 906 insertions(+)
 create mode 100644 arch/arm/boards/protonic-stm32mp13/Makefile
 create mode 100644 arch/arm/boards/protonic-stm32mp13/board.c
 create mode 100644 arch/arm/boards/protonic-stm32mp13/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp133c-prihmb.dts
 create mode 100644 arch/arm/dts/stm32mp133c-prihmb.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 28391f175bc1..d8ca3fa1b590 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -90,6 +90,7 @@ obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
 obj-$(CONFIG_MACH_PROTONIC_IMX8M)		+= protonic-imx8m/
 obj-$(CONFIG_MACH_PROTONIC_MECSBC)		+= protonic-mecsbc/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
+obj-$(CONFIG_MACH_PROTONIC_STM32MP13)		+= protonic-stm32mp13/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
 obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
diff --git a/arch/arm/boards/protonic-stm32mp13/Makefile b/arch/arm/boards/protonic-stm32mp13/Makefile
new file mode 100644
index 000000000000..5678718188b9
--- /dev/null
+++ b/arch/arm/boards/protonic-stm32mp13/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/protonic-stm32mp13/board.c b/arch/arm/boards/protonic-stm32mp13/board.c
new file mode 100644
index 000000000000..ca035cc6773c
--- /dev/null
+++ b/arch/arm/boards/protonic-stm32mp13/board.c
@@ -0,0 +1,287 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
+
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <gpio.h>
+#include <init.h>
+#include <linux/bitfield.h>
+#include <linux/tee_drv.h>
+#include <mach/stm32mp/bbu.h>
+#include <mach/stm32mp/bsec.h>
+#include <of_device.h>
+#include <soc/stm32/gpio.h>
+#include <soc/stm32/stm32-bsec-optee-ta.h>
+
+/* board specific flags */
+#define PRT_STM32_BOOTSRC_SD		BIT(2)
+#define PRT_STM32_BOOTSRC_EMMC		BIT(1)
+#define PRT_STM32_BOOTSRC_SPI_NOR	BIT(0)
+
+#define PRT_STM32_GPIO_HWID_PL_N	13 /* PA13 */
+#define PRT_STM32_GPIO_HWID_CP		14 /* PA14 */
+#define PRT_STM32_GPIO_HWID_Q7		45 /* PC13 */
+
+/* board specific serial number length is 10 characters without '\0' */
+#define PRT_STM32_SERIAL_LEN		10
+#define PRT_STM32_SERIAL_OFFSET		60
+
+#define PRT_STM32_REVISION_ID_MASK	GENMASK(2, 0)
+#define PRT_STM32_BOARD_ID_MASK		GENMASK(7, 3)
+
+/* defines for 74HC165BQ 8-bit parallel-in/serial out shift register */
+#define PRT_STM32_SHIFT_REG_SIZE	8
+
+struct prt_stm32_machine_data {
+	u32 flags;
+};
+
+struct prt_stm32_boot_dev {
+	char *name;
+	char *env;
+	char *dev;
+	int flags;
+	int boot_idx;
+	enum bootsource boot_src;
+};
+
+static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
+	{
+		.name = "emmc",
+		.env = "/chosen/environment-emmc",
+		.dev = "/dev/mmc1.ssbl",
+		.flags = PRT_STM32_BOOTSRC_EMMC,
+		.boot_src = BOOTSOURCE_MMC,
+		.boot_idx = 1,
+	}, {
+		.name = "qspi",
+		.env = "/chosen/environment-qspi",
+		.dev = "/dev/flash.ssbl",
+		.flags = PRT_STM32_BOOTSRC_SPI_NOR,
+		.boot_src = BOOTSOURCE_SPI_NOR,
+		.boot_idx = -1,
+	}, {
+		/* SD is optional boot source and should be last device in the
+		 * list.
+		 */
+		.name = "sd",
+		.env = "/chosen/environment-sd",
+		.dev = "/dev/mmc0.ssbl",
+		.flags = PRT_STM32_BOOTSRC_SD,
+		.boot_src = BOOTSOURCE_MMC,
+		.boot_idx = 0,
+	},
+};
+
+static int prt_stm32_set_serial(struct device *dev, char *serial)
+{
+	dev_info(dev, "Serial number: %s\n", serial);
+	barebox_set_serial_number(serial);
+
+	return 0;
+}
+
+static int prt_stm32_read_serial(struct device *dev)
+{
+	/* board specific serial number + one char for '\0' */
+	char serial[PRT_STM32_SERIAL_LEN + 1];
+	struct tee_context *ctx;
+	int ret;
+
+	/* the ctx pointer will be set in the stm32_bsec_optee_ta_open */
+	ret = stm32_bsec_optee_ta_open(&ctx);
+	if (ret) {
+		dev_err(dev, "Failed to open BSEC TA: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	ret = stm32_bsec_optee_ta_read(ctx, PRT_STM32_SERIAL_OFFSET * 4,
+				       &serial, sizeof(serial) - 1);
+	if (ret)
+		goto exit_pta_read;
+
+	serial[PRT_STM32_SERIAL_LEN] = 0;
+
+	stm32_bsec_optee_ta_close(&ctx);
+
+	return prt_stm32_set_serial(dev, serial);
+
+exit_pta_read:
+	stm32_bsec_optee_ta_close(&ctx);
+	dev_err(dev, "Failed to read serial: %pe\n", ERR_PTR(ret));
+	return ret;
+}
+
+static int prt_stm32_init_shift_reg(struct device *dev)
+{
+	int ret;
+
+	ret = gpio_direction_output(PRT_STM32_GPIO_HWID_PL_N, 1);
+	if (ret)
+		goto error_out;
+
+	ret = gpio_direction_output(PRT_STM32_GPIO_HWID_CP, 1);
+	if (ret)
+		goto error_out;
+
+	ret = gpio_direction_input(PRT_STM32_GPIO_HWID_Q7);
+	if (ret)
+		goto error_out;
+
+	__stm32_pmx_set_output_type((void __iomem *)0x50002000, 13,
+					       STM32_PIN_OUT_PUSHPULL);
+	__stm32_pmx_set_output_type((void __iomem *)0x50002000, 14,
+					       STM32_PIN_OUT_PUSHPULL);
+
+	return 0;
+
+error_out:
+	dev_err(dev, "Failed to init shift register: %pe\n", ERR_PTR(ret));
+	return ret;
+}
+
+static int prt_stm32_of_fixup_hwrev(struct device *dev, uint8_t bid,
+				    uint8_t rid)
+{
+	const char *compat;
+	char *buf;
+
+	compat = of_device_get_match_compatible(dev);
+
+	buf = xasprintf("%s-m%u-r%u", compat, bid, rid);
+	barebox_set_of_machine_compatible(buf);
+
+	free(buf);
+
+	return 0;
+}
+
+
+/**
+ * prt_stm32_read_shift_reg - Reads board ID and hardware revision
+ * @dev: The device structure for logging and potential device-specific
+ *       operations.
+ * 
+ * This function reads an 8-bit value from a 74HC165BQ parallel-in/serial-out
+ * shift register to extract the board ID and hardware revision.
+ * 
+ * GPIO pins used:
+ * - PRT_STM32_GPIO_HWID_PL_N: Controls the latch operation.
+ * - PRT_STM32_GPIO_HWID_CP: Controls the clock pulses for shifting data.
+ * - PRT_STM32_GPIO_HWID_Q7: Reads the serial data output from the shift
+ *   register.
+ */
+static void prt_stm32_read_shift_reg(struct device *dev)
+{
+	uint8_t rid, bid;
+	uint8_t data = 0;
+	int i;
+
+	/* Initial state. PL (Parallel Load) is set in inactive state */
+	gpio_set_value(PRT_STM32_GPIO_HWID_PL_N, 1);
+	gpio_set_value(PRT_STM32_GPIO_HWID_CP, 0);
+	mdelay(1);
+
+	/* Activate PL to latch parallel interface */
+	gpio_set_value(PRT_STM32_GPIO_HWID_PL_N, 0);
+	/* Wait for the data to be stable. Works for me type of delay */
+	mdelay(1);
+	/* Deactivate PL */ 
+	gpio_set_value(PRT_STM32_GPIO_HWID_PL_N, 1);
+
+	/* Read data from the shift register using serial interface */
+	for (i = PRT_STM32_SHIFT_REG_SIZE - 1; i >= 0; i--) {
+		/* Shift the data */
+		data += (gpio_get_value(PRT_STM32_GPIO_HWID_Q7) << i);
+
+		/* Toggle the clock line */
+		gpio_set_value(PRT_STM32_GPIO_HWID_CP, 1);
+		mdelay(1);
+		gpio_set_value(PRT_STM32_GPIO_HWID_CP, 0);
+	}
+
+	rid = FIELD_GET(PRT_STM32_REVISION_ID_MASK, data);
+	bid = FIELD_GET(PRT_STM32_BOARD_ID_MASK, data);
+
+	pr_info("  Board ID:    %d\n", bid);
+	pr_info("  HW revision: %d\n", rid);
+	prt_stm32_of_fixup_hwrev(dev, bid, rid);
+
+	/* PL and CP pins are shared with LEDs. Make sure LEDs are turned off */
+	gpio_set_value(PRT_STM32_GPIO_HWID_PL_N, 1);
+	gpio_set_value(PRT_STM32_GPIO_HWID_CP, 1);
+}
+
+static int prt_stm32_probe(struct device *dev)
+{
+	const struct prt_stm32_machine_data *dcfg;
+	char *env_path_back = NULL, *env_path = NULL;
+	int ret, i;
+
+	dcfg = of_device_get_match_data(dev);
+	if (!dcfg) {
+		ret = -EINVAL;
+		goto exit_get_dcfg;
+	}
+
+	prt_stm32_read_serial(dev);
+	prt_stm32_init_shift_reg(dev);
+	prt_stm32_read_shift_reg(dev);
+
+	for (i = 0; i < ARRAY_SIZE(prt_stm32_boot_devs); i++) {
+		const struct prt_stm32_boot_dev *bd = &prt_stm32_boot_devs[i];
+		int bbu_flags = 0;
+
+		/* skip not supported boot sources */
+		if (!(bd->flags & dcfg->flags))
+			continue;
+
+		/* first device is build-in device */
+		if (!env_path_back)
+			env_path_back = bd->env;
+
+		if (bd->boot_src == bootsource_get() && (bd->boot_idx == -1 ||
+		    bd->boot_idx  == bootsource_get_instance())) {
+			bbu_flags = BBU_HANDLER_FLAG_DEFAULT;
+			env_path = bd->env;
+		}
+
+		ret = stm32mp_bbu_mmc_register_handler(bd->name, bd->dev,
+						       bbu_flags);
+		if (ret < 0)
+			dev_warn(dev, "Failed to enable %s bbu (%pe)\n",
+				 bd->name, ERR_PTR(ret));
+	}
+
+	if (!env_path)
+		env_path = env_path_back;
+	ret = of_device_enable_path(env_path);
+	if (ret < 0)
+		dev_warn(dev, "Failed to enable environment partition '%s' (%pe)\n",
+			 env_path, ERR_PTR(ret));
+
+	return 0;
+
+exit_get_dcfg:
+	dev_err(dev, "Failed to get dcfg: %pe\n", ERR_PTR(ret));
+	return ret;
+}
+
+static const struct prt_stm32_machine_data prt_stm32_prihmb = {
+	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_EMMC,
+};
+
+static const struct of_device_id prt_stm32_of_match[] = {
+	{ .compatible = "pri,prihmb", .data = &prt_stm32_prihmb },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
+
+static struct driver prt_stm32_board_driver = {
+	.name = "board-protonic-stm32",
+	.probe = prt_stm32_probe,
+	.of_compatible = prt_stm32_of_match,
+};
+postcore_platform_driver(prt_stm32_board_driver);
diff --git a/arch/arm/boards/protonic-stm32mp13/lowlevel.c b/arch/arm/boards/protonic-stm32mp13/lowlevel.c
new file mode 100644
index 000000000000..9de02402f518
--- /dev/null
+++ b/arch/arm/boards/protonic-stm32mp13/lowlevel.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
+
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/stm32mp/entry.h>
+
+extern char __dtb_z_stm32mp133c_prihmb_start[];
+
+ENTRY_FUNCTION(start_stm32mp133c_prihmb, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	/* first stage has set up the UART, so nothing to do here */
+	putc_ll('>');
+
+	fdt = __dtb_z_stm32mp133c_prihmb_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index df73102ba1c0..6ca11e5c2d7a 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -5,6 +5,7 @@ CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
+CONFIG_MACH_PROTONIC_STM32MP13=y
 CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1=y
 CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 702031bb8fee..b1c73b47aa40 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -115,6 +115,7 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1s.dtb.o \
 	stm32mp151-mecio1.dtb.o \
 	stm32mp151-mect1s.dtb.o
+lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += stm32mp133c-prihmb.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
diff --git a/arch/arm/dts/stm32mp133c-prihmb.dts b/arch/arm/dts/stm32mp133c-prihmb.dts
new file mode 100644
index 000000000000..4b7b85c5dae0
--- /dev/null
+++ b/arch/arm/dts/stm32mp133c-prihmb.dts
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+// SPDX-FileCopyrightText: 2024 Roan van Dijk, Protonic Holland
+/dts-v1/;
+
+#include "stm32mp133c-prihmb.dtsi"
+#include "stm32mp131.dtsi"
+
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
+
+/ {
+	aliases {
+		state = &state_emmc;
+	};
+
+	state_emmc: state {
+		magic = <0x72766467>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&state_backend_emmc>;
+		backend-stridesize = <0x400>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			last_chosen {
+				reg = <0x0 0x4>;
+				type = "uint32";
+			};
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x50 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x54 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x100 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x104 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+		};
+
+		priva-serial@1b0 {
+			reg = <0x1b0 0xa>;
+			type = "string";
+		};
+	};
+};
+
+&sdmmc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	state_backend_emmc: partition@c0000 {
+		label = "state";
+		reg = <0xf0000 0x10000>;
+	};
+};
diff --git a/arch/arm/dts/stm32mp133c-prihmb.dtsi b/arch/arm/dts/stm32mp133c-prihmb.dtsi
new file mode 100644
index 000000000000..3087610a0e57
--- /dev/null
+++ b/arch/arm/dts/stm32mp133c-prihmb.dtsi
@@ -0,0 +1,496 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/dts-v1/;
+
+// this file will be dropped after kernel upstreaming is done
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/regulator/st,stm32mp13-regulator.h>
+#include <arm/st/stm32mp133.dtsi>
+#include <arm/st/stm32mp13xc.dtsi>
+#include <arm/st/stm32mp13-pinctrl.dtsi>
+
+/ {
+	model = "Priva E-Measuringbox board";
+	compatible = "pri,prihmb", "st,stm32mp133";
+
+	aliases {
+		ethernet0 = &ethernet1;
+		mdio-gpio0 = &mdio0;
+		mmc0 = &sdmmc1;
+		mmc1 = &sdmmc2;
+		serial0 = &uart4;
+		serial1 = &usart6;
+		serial2 = &uart7;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	counter-0 {
+		compatible = "interrupt-counter";
+		gpios = <&gpioa 11 GPIO_ACTIVE_HIGH>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		button-reset {
+			label = "reset-button";
+			linux,code = <BTN_1>;
+			gpios = <&gpioi 7 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-blue {
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpioa 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+			default-state = "off";
+		};
+	};
+
+	led-controller-0 {
+		compatible = "pwm-leds-multicolor";
+
+		multi-led {
+			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_STATUS;
+			max-brightness = <255>;
+
+			led-red {
+				active-low;
+				color = <LED_COLOR_ID_RED>;
+				pwms = <&pwm2 2 1000000 1>;
+			};
+
+			led-green {
+				active-low;
+				color = <LED_COLOR_ID_GREEN>;
+				pwms = <&pwm1 1 1000000 1>;
+			};
+
+			led-blue {
+				active-low;
+				color = <LED_COLOR_ID_BLUE>;
+				pwms = <&pwm1 2 1000000 1>;
+			};
+		};
+	};
+
+	led-controller-1 {
+		compatible = "pwm-leds-multicolor";
+
+		multi-led {
+			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_STATUS;
+			max-brightness = <255>;
+
+			led-red {
+				active-low;
+				color = <LED_COLOR_ID_RED>;
+				pwms = <&pwm1 0 1000000 1>;
+			};
+
+			led-green {
+				active-low;
+				color = <LED_COLOR_ID_GREEN>;
+				pwms = <&pwm2 0 1000000 1>;
+			};
+
+			led-blue {
+				active-low;
+				color = <LED_COLOR_ID_BLUE>;
+				pwms = <&pwm2 1 1000000 1>;
+			};
+		};
+	};
+
+	/* DP83TD510E PHYs have max MDC rate of 1.75MHz. Since we can't reduce
+	 * stmmac MDC clock without reducing system bus rate, we need to use
+	 * gpio based MDIO bus.
+	 */
+	mdio0: mdio {
+		compatible = "virtual,mdio-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpios = <&gpiog 2 GPIO_ACTIVE_HIGH
+			 &gpioa 2 GPIO_ACTIVE_HIGH>;
+
+		/* TI DP83TD510E */
+		phy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-id2000.0181";
+			reg = <0>;
+			interrupts-extended = <&gpioa 4 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10>;
+			reset-deassert-us = <35>;
+		};
+	};
+
+	memory@c0000000 {
+		device_type = "memory";
+		reg = <0xc0000000 0x10000000>;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		optee@ce000000 {
+			reg = <0xce000000 0x02000000>;
+			no-map;
+		};
+	};
+};
+
+&adc_1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&adc_1_pins_a>;
+	vdda-supply = <&reg_3v3>;
+	vref-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&adc1 {
+	status = "okay";
+
+	channel@0 { /* Fan current PC0*/
+		reg = <0>;
+		st,min-sample-time-ns = <10000>;  /* 10µs sampling time */
+	};
+	channel@11 { /* Fan voltage */
+		reg = <11>;
+		st,min-sample-time-ns = <10000>;  /* 10µs sampling time */
+	};
+	channel@15 { /* Supply voltage */
+		reg = <15>;
+		st,min-sample-time-ns = <10000>;  /* 10µs sampling time */
+	};
+};
+
+&ethernet1 {
+	status = "okay";
+	pinctrl-0 = <&ethernet1_rmii_pins_a>;
+	pinctrl-1 = <&ethernet1_rmii_sleep_pins_a>;
+	pinctrl-names = "default", "sleep";
+	phy-mode = "rmii";
+	phy-handle = <&phy0>;
+	nvmem-cell-names = "mac-address";
+	nvmem-cells = <&ethernet_mac1_address>;
+};
+
+&i2c1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c1_pins_a>;
+	pinctrl-1 = <&i2c1_sleep_pins_a>;
+	clock-frequency = <100000>;
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+
+	board-sensor@48 {
+		compatible = "ti,tmp1075";
+		reg = <0x48>;
+		vs-supply = <&reg_3v3>;
+	};
+};
+
+&{i2c1_pins_a/pins} {
+	pinmux = <STM32_PINMUX('D', 3, AF5)>, /* I2C1_SCL */
+		 <STM32_PINMUX('B', 8, AF4)>; /* I2C1_SDA */
+	bias-disable;
+	drive-open-drain;
+	slew-rate = <0>;
+};
+
+&{i2c1_sleep_pins_a/pins} {
+	pinmux = <STM32_PINMUX('D', 3, ANALOG)>, /* I2C1_SCL */
+		 <STM32_PINMUX('B', 8, ANALOG)>; /* I2C1_SDA */
+};
+
+&iwdg2 {
+	timeout-sec = <32>;
+	status = "okay";
+};
+
+/* SD card without Card-detect */
+&sdmmc1 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_clk_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_clk_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	broken-cd;
+	no-sdio;
+	no-1-8-v;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+/* EMMC */
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a &sdmmc2_clk_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a &sdmmc2_clk_pins_a>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	no-1-8-v;
+	st,neg-edge;
+	mmc-ddr-3_3v;
+	bus-width = <8>;
+	vmmc-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&timers1 {
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	pwm1: pwm {
+		pinctrl-0 = <&pwm1_pins_a>;
+		pinctrl-1 = <&pwm1_sleep_pins_a>;
+		pinctrl-names = "default", "sleep";
+		status = "okay";
+	};
+};
+
+&timers4 {
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	pwm2: pwm {
+		pinctrl-0 = <&pwm4_pins_a>;
+		pinctrl-1 = <&pwm4_sleep_pins_a>;
+		pinctrl-names = "default", "sleep";
+		status = "okay";
+	};
+};
+
+/* Fan PWM */
+&timers5 {
+	status = "okay";
+
+	pwm3: pwm {
+		pinctrl-0 = <&pwm5_pins_a>;
+		pinctrl-1 = <&pwm5_sleep_pins_a>;
+		pinctrl-names = "default", "sleep";
+		status = "okay";
+	};
+};
+
+&timers2 {
+	status = "okay";
+
+	timer@1 {
+		status = "okay";
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart4_pins_a>;
+	pinctrl-1 = <&uart4_sleep_pins_a>;
+	pinctrl-2 = <&uart4_idle_pins_a>;
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+};
+
+&uart7 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart7_pins_a>;
+	pinctrl-1 = <&uart7_sleep_pins_a>;
+	pinctrl-2 = <&uart7_idle_pins_a>;
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+};
+
+&usart6 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&usart6_pins_a>;
+	pinctrl-1 = <&usart6_sleep_pins_a>;
+	pinctrl-2 = <&usart6_idle_pins_a>;
+	linux,rs485-enabled-at-boot-time;
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+};
+
+&pinctrl {
+	adc_1_pins_a: adc1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('C', 0, ANALOG)>, /* ADC1 in0 */
+				 <STM32_PINMUX('C', 2, ANALOG)>, /* ADC1 in15 */
+				 <STM32_PINMUX('F', 13, ANALOG)>; /* ADC1 in11 */
+		};
+	};
+
+	ethernet1_rmii_pins_a: rmii-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH1_RMII_TXD0 */
+				 <STM32_PINMUX('G', 14, AF11)>, /* ETH1_RMII_TXD1 */
+				 <STM32_PINMUX('B', 11, AF11)>, /* ETH1_RMII_TX_EN */
+				 <STM32_PINMUX('A', 1, AF11)>;   /* ETH1_RMII_REF_CLK */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>,  /* ETH1_RMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>,  /* ETH1_RMII_RXD1 */
+				 <STM32_PINMUX('A', 7, AF11)>;  /* ETH1_RMII_CRS_DV */
+			bias-disable;
+		};
+	};
+
+	ethernet1_rmii_sleep_pins_a: rmii-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* ETH1_RMII_TXD0 */
+				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH1_RMII_TXD1 */
+				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH1_RMII_TX_EN */
+				 <STM32_PINMUX('C', 4, ANALOG)>,  /* ETH1_RMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>,  /* ETH1_RMII_RXD1 */
+				 <STM32_PINMUX('A', 1, ANALOG)>,  /* ETH1_RMII_REF_CLK */
+				 <STM32_PINMUX('A', 7, ANALOG)>;  /* ETH1_RMII_CRS_DV */
+		};
+	};
+
+	pwm1_pins_a: pwm1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('E', 9, AF1)>, /* TIM1_CH1 */
+				 <STM32_PINMUX('E', 11, AF1)>, /* TIM1_CH2 */
+				 <STM32_PINMUX('E', 13, AF1)>; /* TIM1_CH3 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm1_sleep_pins_a: pwm1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('E', 9, ANALOG)>, /* TIM1_CH1 */
+				 <STM32_PINMUX('E', 11, ANALOG)>, /* TIM1_CH2 */
+				 <STM32_PINMUX('E', 13, ANALOG)>; /* TIM1_CH3 */
+		};
+	};
+
+	pwm4_pins_a: pwm4-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 12, AF2)>, /* TIM4_CH1 */
+				 <STM32_PINMUX('B', 7, AF2)>, /* TIM4_CH2 */
+				 <STM32_PINMUX('D', 14, AF2)>; /* TIM4_CH3 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm4_sleep_pins_a: pwm4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 12, ANALOG)>, /* TIM4_CH1 */
+				 <STM32_PINMUX('B', 7, ANALOG)>, /* TIM4_CH2 */
+				 <STM32_PINMUX('D', 14, ANALOG)>; /* TIM4_CH3 */
+		};
+	};
+	pwm5_pins_a: pwm5-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 0, AF2)>; /* TIM5_CH1 */
+		};
+	};
+
+	pwm5_sleep_pins_a: pwm5-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 0, ANALOG)>; /* TIM5_CH1 */
+		};
+	};
+
+	uart7_pins_a: uart7-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 10, AF7)>; /* UART7_RX */
+			bias-pull-up;
+		};
+	};
+
+	uart7_idle_pins_a: uart7-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('E', 8, ANALOG)>; /* UART7_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 10, AF7)>; /* UART7_RX */
+			bias-pull-up;
+		};
+	};
+
+	uart7_sleep_pins_a: uart7-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('E', 8, ANALOG)>, /* UART7_TX */
+				 <STM32_PINMUX('E', 10, ANALOG)>; /* UART7_RX */
+		};
+	};
+
+	usart6_pins_a: usart6-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 8, AF7)>, /* USART6_TX */
+				 <STM32_PINMUX('F', 10, AF7)>; /* USART6_DE */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('H', 11, AF7)>; /* USART6_RX */
+			bias-disable;
+		};
+	};
+
+	usart6_idle_pins_a: usart6-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 8, ANALOG)>; /* USART6_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('F', 10, AF7)>; /* USART6_DE */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('H', 11, AF7)>; /* USART6_RX */
+			bias-disable;
+		};
+	};
+
+	usart6_sleep_pins_a: usart6-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 8, ANALOG)>, /* USART6_TX */
+				 <STM32_PINMUX('F', 10, ANALOG)>, /* USART6_DE */
+				 <STM32_PINMUX('H', 11, ANALOG)>; /* USART6_RX */
+		};
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 5d60c7996786..7015a38bc121 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -48,6 +48,13 @@ config MACH_PROTONIC_STM32MP1
 	  Builds all barebox-*.stm32 that can be deployed as SSBL
 	  on the respective PRTT1L/MECIOx/MECT1S family board
 
+config MACH_PROTONIC_STM32MP13
+	select ARCH_STM32MP13
+	bool "Protonic-Holland stm32mp13x based boards"
+	help
+	  Builds all barebox-*.stm32 that can be deployed as SSBL
+	  on the respective stm32mp13x board
+
 config MACH_PHYTEC_PHYCORE_STM32MP1
 	select ARCH_STM32MP157
 	bool "phyCORE-STM32MP1"
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index cb01eb2555e8..8c41b8b74567 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -40,6 +40,7 @@ $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mecio1, mecio1)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mect1s, mect1s)
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP13, start_stm32mp133c_prihmb, stm32mp133c-prihmb)
 
 $(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
 
-- 
2.39.5



