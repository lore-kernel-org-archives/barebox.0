Delivery-date: Wed, 29 Jan 2025 14:14:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td7tS-005wJo-1l
	for lore@lore.pengutronix.de;
	Wed, 29 Jan 2025 14:14:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td7tS-0007Sj-8I
	for lore@pengutronix.de; Wed, 29 Jan 2025 14:14:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xmCVuhpiXxY8dDONQ97WlJzqecGhZ18i4QKmrnUWwCc=; b=ZbrI0oi0tgiy/u/VCYVS1bEH42
	ETUhZIcXPwZJFQLj6pX1j7dd5EJAiUZgiCveli12u8V5Ktqz1uPW6GXkvIaqWj4yDEqdbKWvLGdt4
	MRaEAzHtJgZkW8YQuQumSU/1/CTnk1jiQboHiIqifTp08Yb1Tiq1S/s2wi+DO9HOsNmJHIcnwk6vq
	2LF8elRz1lBOT4N585NbKfTEBNCmHWV5gVS0pAhTaD7yLuIh44b/EA/i+SXzhqjxisZhxVObFLVWO
	U9+b3at1+m8LW98IBcqd7CZW7dT3d6mVbJqF/NkbSDL6NadrBXHzf/wokuVOZ0LYECfgeN9k3hUVh
	Tb1EtZ6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td7sr-00000006zA8-30ck;
	Wed, 29 Jan 2025 13:13:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td7so-00000006z7f-1xnU
	for barebox@lists.infradead.org;
	Wed, 29 Jan 2025 13:13:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-0007GU-Sx; Wed, 29 Jan 2025 14:13:27 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-002TBm-1v;
	Wed, 29 Jan 2025 14:13:27 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-00CazB-1l;
	Wed, 29 Jan 2025 14:13:27 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michiel Schelfhout <michiel.schelfhout@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 Jan 2025 14:13:26 +0100
Message-Id: <20250129131326.3002089-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250129131326.3002089-1-o.rempel@pengutronix.de>
References: <20250129131326.3002089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_051330_659574_25E5388E 
X-CRM114-Status: GOOD (  23.92  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/3] ARM: protonic-stm32mp1: Add shift register support for board ID and revision
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Michiel Schelfhout <michiel.schelfhout@protonic.nl>

Introduce support for reading the board ID and hardware revision using a
74HC165BQ shift register.

Since all new designs are expected to include this shift register, support
is enabled by default. Boards that lack the shift register explicitly set
PRT_STM32_NO_SHIFT_REG to skip read of IDs

Signed-off-by: Michiel Schelfhout <michiel.schelfhout@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp1/board.c | 134 +++++++++++++++++++++-
 1 file changed, 129 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index cafdc20c2b42..86cda1676b48 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -4,22 +4,40 @@
 
 #include <bootsource.h>
 #include <common.h>
+#include <deep-probe.h>
+#include <gpio.h>
 #include <init.h>
+#include <linux/bitfield.h>
 #include <mach/stm32mp/bbu.h>
 #include <mach/stm32mp/bsec.h>
 #include <of_device.h>
-#include <deep-probe.h>
+#include <soc/stm32/gpio.h>
 #include <soc/stm32/stm32-bsec-optee-ta.h>
 
 /* board specific flags */
+/* PRT_STM32_NO_SHIFT_REG: Board does not have a shift register,
+ * this register is used to read board ID and hardware revision, and
+ * expected to be on all new boards.
+ */
+#define PRT_STM32_NO_SHIFT_REG		BIT(3)
 #define PRT_STM32_BOOTSRC_SD		BIT(2)
 #define PRT_STM32_BOOTSRC_EMMC		BIT(1)
 #define PRT_STM32_BOOTSRC_SPI_NOR	BIT(0)
 
+#define PRT_STM32_GPIO_HWID_PL_N	13 /* PA13 */
+#define PRT_STM32_GPIO_HWID_CP		14 /* PA14 */
+#define PRT_STM32_GPIO_HWID_Q7		45 /* PC13 */
+
 /* board specific serial number length is 10 characters without '\0' */
 #define PRT_STM32_SERIAL_LEN		10
 #define PRT_STM32_SERIAL_OFFSET		58
 
+#define PRT_STM32_REVISION_ID_MASK	GENMASK(2, 0)
+#define PRT_STM32_BOARD_ID_MASK		GENMASK(7, 3)
+
+/* defines for 74HC165BQ 8-bit parallel-in/serial out shift register */
+#define PRT_STM32_SHIFT_REG_SIZE	8
+
 struct prt_stm32_machine_data {
 	u32 flags;
 };
@@ -113,6 +131,105 @@ static int prt_stm32_read_serial(struct device *dev)
 	return ret;
 }
 
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
 static int prt_stm32_probe(struct device *dev)
 {
 	const struct prt_stm32_machine_data *dcfg;
@@ -127,6 +244,11 @@ static int prt_stm32_probe(struct device *dev)
 
 	prt_stm32_read_serial(dev);
 
+	if (!(dcfg->flags & PRT_STM32_NO_SHIFT_REG)) {
+		prt_stm32_init_shift_reg(dev);
+		prt_stm32_read_shift_reg(dev);
+	}
+
 	for (i = 0; i < ARRAY_SIZE(prt_stm32_boot_devs); i++) {
 		const struct prt_stm32_boot_dev *bd = &prt_stm32_boot_devs[i];
 		int bbu_flags = 0;
@@ -167,19 +289,21 @@ static int prt_stm32_probe(struct device *dev)
 }
 
 static const struct prt_stm32_machine_data prt_stm32_prtt1a = {
-	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_SPI_NOR,
+	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_SPI_NOR |
+		 PRT_STM32_NO_SHIFT_REG,
 };
 
 static const struct prt_stm32_machine_data prt_stm32_prtt1c = {
-	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_EMMC,
+	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_EMMC |
+		 PRT_STM32_NO_SHIFT_REG,
 };
 
 static const struct prt_stm32_machine_data prt_stm32_mecio1 = {
-	.flags = PRT_STM32_BOOTSRC_SPI_NOR,
+	.flags = PRT_STM32_BOOTSRC_SPI_NOR | PRT_STM32_NO_SHIFT_REG,
 };
 
 static const struct prt_stm32_machine_data prt_stm32_mect1s = {
-	.flags = PRT_STM32_BOOTSRC_SPI_NOR,
+	.flags = PRT_STM32_BOOTSRC_SPI_NOR | PRT_STM32_NO_SHIFT_REG,
 };
 
 static const struct prt_stm32_machine_data prt_stm32_plyaqm = {
-- 
2.39.5



