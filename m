Delivery-date: Thu, 13 Aug 2026 17:34:00 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXRP-002isK-2N
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:34:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C23DE201EB9
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:33:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ghsFnFzT;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UD45yEwH;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y9YgK/V/yWDGdSvfBW+R5Ju0eqmYnhg2hNLZOb12Clg=; b=ghsFnFzT17w9Q3KoEnZxW6OT7q
	t+zJmp/qAG4e0T5OTk55wthilgPQWQ+Gh+xTabt8S50q5dC5J7W+g8MrgcEGu/YYY9BI9o+sLHEQ+
	myf9uKoKtCKF6Ae4Zaev5Vx6Y5vF7p4ROgN2a9ukxp16grskfjKcS7GHQoX+X4ZWIlesv6xzGigJR
	P4pJW2KZfTGZZx3gWnTAFyA7aaBgcipDPbU0spULP/np/YJyKdGFeLLzjkfBFt3J+pVa9IYCU1Z9X
	uP+/2osIXS2BRfqKjqJyXm2otA7xqbxjSxe3I9HClqDf74W6+1lT+WlNbP4jOhg/RflgNguzwd80N
	K0iQCqmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK9-000000010Vr-2avH;
	Thu, 13 Aug 2026 15:26:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK7-000000010TB-1wIP
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 93C1B601DE;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4B4E1C2BCF5;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=/1idqtFDK+Mw2R1I/o4v42T00aYRu+3KafdgGkPX4kY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=UD45yEwHIcxcJuLz450wi3BwAdfDRoH6x78Ajh2zYUuyOFH2GtbEoaVb0vKeCJHCw
	 efZ32k21apmANA1Tf6+j+GiG4Rbr5RvUGG9HjsplZJjM+8ov/WBIbNogEvJLwBd6Th
	 sXDY8qcPeKhf5l21QIeo5u1YdufVshpbc9wJP+RvI/+UzQ+aQ044LfAYu8EmGnys5p
	 DA5YlxHleNME4ovCRyW/j53shYtON++3FeeTSxFerHFYIPeieQU0iDQEcwlwso8ycq
	 HfeU7opVTeyD/3UBKURpmZ7sTwI/M0FrL2aTaP2DF3/EGsKOck6RNyoyFRZ+4AN0n+
	 a+54UApXwASVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C785C5CFEB;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:21 +0200
Subject: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260813-rn102-rn104-series-v4-1-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=14072;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=Ymh/Q/MsLdq+eK6wS3cgha1YNwe9uWELEb7pBgR11VA=;
 b=JUWdoSHK/Pi7wFdauX6o3AfY1EF2NRkRcIu/ANO14pV1Qd0LxipbHCtzoPZ551EIGlGqiZEjg
 UjBtvwlxzI6BTC0epa4uPPfr3HjI7IpdWwbqjxcpauwpmrq4klaag27
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 4p4we56yueg5b5hbjwe51uq6awkxmxp4
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	DBL_PROHIBIT(0.00)[0.7.83.0:email,0.0.0.0:email,0.28.253.224:email,0.7.161.32:email,0.6.26.128:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: C23DE201EB9

From: Luca Lauro <famlauro93l@gmail.com>

This adds full support for the Netgear ReadyNAS 102, including:

	- board driver matching on "netgear,rn102"
	- deep-probe use to ensure early GPIO availability
	- lowlevel initialization
	- barebox overlay with environment, state backend,
		NAND partition layout and fastboot node
	- Kconfig entry
	- image support

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 arch/arm/boards/Makefile                 |   1 +
 arch/arm/boards/netgear-rn102/Makefile   |   4 +
 arch/arm/boards/netgear-rn102/board.c    | 219 +++++++++++++++++++++++++++++++
 arch/arm/boards/netgear-rn102/lowlevel.c |  58 ++++++++
 arch/arm/dts/Makefile                    |   1 +
 arch/arm/dts/armada-370-rn102-bb.dts     |  96 ++++++++++++++
 arch/arm/mach-mvebu/Kconfig              |   4 +
 images/Makefile.mvebu                    |  10 ++
 8 files changed, 393 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index dd2f2c324e..aca1b45a81 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -64,6 +64,7 @@ obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB)		+= marvell-armada-xp-db/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
 obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
+obj-$(CONFIG_MACH_NETGEAR_RN102)		+= netgear-rn102/
 obj-$(CONFIG_MACH_NETGEAR_RN104)		+= netgear-rn104/
 obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
 obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
diff --git a/arch/arm/boards/netgear-rn102/Makefile b/arch/arm/boards/netgear-rn102/Makefile
new file mode 100644
index 0000000000..da63d2625f
--- /dev/null
+++ b/arch/arm/boards/netgear-rn102/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/netgear-rn102/board.c b/arch/arm/boards/netgear-rn102/board.c
new file mode 100644
index 0000000000..651ce27ffa
--- /dev/null
+++ b/arch/arm/boards/netgear-rn102/board.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <driver.h>
+#include <of.h>
+#include <linux/device.h>
+#include <linux/mbus.h>
+#include <mach/mvebu/armada-370-xp-regs.h>
+#include <bbu.h>
+
+#define GPIO_BLINK_EN			0x08
+#define GPIO_BLINK_CNT_SEL		0x20
+#define GPIO_BLINK_CNT_A_ON		0xc0
+#define GPIO_BLINK_CNT_A_OFF	0xc4
+
+/*
+ * we use GPIO for:
+ *	- reading disk presence monitoring pins
+ *	- enable powerup for bays that detect disk presence
+ *	- display bay status with dedicated LEDs
+ */
+static void gpio_blink(struct device *dev, int pin, int on_ms, int off_ms)
+{
+	struct device_node *np;
+	struct regmap *map;
+	u32 v;
+
+	np = of_find_node_by_alias(NULL, "gpio0");
+	if (!np) {
+		pr_warn("gpio0 alias not found\n");
+		return;
+	}
+
+	map = syscon_node_to_regmap(np);
+	if (IS_ERR(map)) {
+		pr_warn("gpio0 regmap not available\n");
+		return;
+	}
+
+	/* set blink counter A on and off time in core clok cycles */
+	regmap_write(map, GPIO_BLINK_CNT_A_ON, 10 * on_ms);
+	regmap_write(map, GPIO_BLINK_CNT_A_OFF, 10 * off_ms);
+
+	/* select blink counter A for this pin */
+	regmap_read(map, GPIO_BLINK_CNT_SEL, &v);
+	v &= ~(1 << pin);
+	regmap_write(map, GPIO_BLINK_CNT_SEL, v);
+
+	/* enable blink */
+	regmap_read(map, GPIO_BLINK_EN, &v);
+	v |= (1 << pin);
+	regmap_write(map, GPIO_BLINK_EN, v);
+}
+
+static void gpio_blink_disable(struct device *dev, int pin)
+{
+	struct device_node *np;
+	struct regmap *map;
+	u32 v;
+
+	np = of_find_node_by_alias(NULL, "gpio0");
+	if (!np)
+		return;
+
+	map = syscon_node_to_regmap(np);
+	if (IS_ERR(map))
+		return;
+
+	regmap_read(map, GPIO_BLINK_EN, &v);
+	v &= ~(1 << pin);
+	regmap_write(map, GPIO_BLINK_EN, v);
+}
+
+/* HDD bays description */
+
+enum disk_state {
+	DISK_ABSENT = 0,
+	DISK_PRESENT,
+	DISK_READY,
+};
+
+struct rn102_disk_bay {
+	int gpio_detect;		/* input, active-low */
+	int gpio_power;		 	/* output */
+	int gpio_led;		   	/* output, active-low */
+	enum disk_state state;
+};
+
+#define RN102_NUM_DISK_BAYS 2
+
+static struct rn102_disk_bay rn102_bays[RN102_NUM_DISK_BAYS] = {
+	{ 12, 13, 15, DISK_ABSENT }, /* Bay 1, default to disk absent */
+	{ 10, 11, 14, DISK_ABSENT }, /* Bay 2, default to disk absent */
+};
+
+static void setup_bays(struct device *dev)
+{
+	pr_info("Early disk power-on...\n");
+
+	for (int i = 0; i < RN102_NUM_DISK_BAYS; i++) {
+		int present;
+
+		gpio_direction_input(rn102_bays[i].gpio_detect);
+		present = !gpio_get_value(rn102_bays[i].gpio_detect);
+
+		if (present) {
+			pr_info("Bay %d: disk detected, powering on\n", i + 1);
+			gpio_blink(dev, rn102_bays[i].gpio_led, 500, 500);
+			gpio_direction_output(rn102_bays[i].gpio_power, 1);
+			rn102_bays[i].state = DISK_PRESENT;
+		} else {
+			pr_info("Bay %d empty\n", i + 1);
+			gpio_direction_output(rn102_bays[i].gpio_led, 0);
+			gpio_direction_output(rn102_bays[i].gpio_power, 0);
+			rn102_bays[i].state = DISK_ABSENT;
+		}
+	}
+}
+
+/*
+ * After waiting for present disks spinup,
+ * we ask explicitly for corresponding ATA devices probe.
+ */
+static void init_disks(struct device *dev)
+{
+	pr_info("Waiting for disks spinup...\n");
+	mdelay(8000);
+
+	pr_info("Detecting ATA devices:\n");
+	for (int i = 0; i < RN102_NUM_DISK_BAYS; i++) {
+		char name[8];
+		struct device *dev;
+
+		if (rn102_bays[i].state != DISK_PRESENT) {
+			gpio_direction_output(rn102_bays[i].gpio_power, 0);
+			gpio_blink_disable(dev, rn102_bays[i].gpio_led);
+			gpio_direction_output(rn102_bays[i].gpio_led, 0);
+			continue;
+		}
+
+		snprintf(name, sizeof(name), "ata%d", i);
+
+		dev = get_device_by_name(name);
+		if (!dev) {
+			pr_warn("%s not found\n", name);
+			gpio_direction_output(rn102_bays[i].gpio_power, 0);
+			gpio_blink(dev, rn102_bays[i].gpio_led, 1000, 1000);
+			continue;
+		}
+
+		pr_info("Connecting %s to disk %d\n", name, i + 1);
+		device_detect(dev);
+		gpio0_blink_disable(rn102_bays[i].gpio_led);
+		gpio0_write(rn102_bays[i].gpio_led, 1);
+		rn102_bays[i].state = DISK_READY;
+	}
+}
+
+/*
+ *  USB0 → DRAM MBUS windows
+ *
+ * frontal USB 2.0 port of RN102 is connected to the SoC usb0.
+ * Here we enable MBUS windows toward all the DRAM using
+ * informations already gathered by mvebu_mbus_dram_info().
+ * 
+ * NOTE: Armada 370-XP EHCI controller shows instability when the periodic
+ * schedule is enabled.
+ */
+static void setup_usb0(void)
+{
+	writel(0x2, 0xf1051404);	/* enable force suspend */
+	u32 pwr = readl(0xf1051400);
+	pwr &= ~BIT(2);
+	writel(pwr, 0xf1051400);	/* force SUSPENDM=0 */
+}
+
+/*
+ * RN102 board driver
+ *
+ * Preferred pattern: board-specific code as a platform driver
+ * matching on the root DT node ("netgear,rn102").
+ */
+static int rn102_probe(struct device *dev)
+{
+	of_device_ensure_probed_by_alias("gpio0");
+	of_device_ensure_probed_by_alias("gpio1");
+	of_device_ensure_probed_by_alias("gpio2");
+
+
+	/* CFU configuration */
+	writel(0xC6, 0xf1020228);
+
+	setup_usb0();
+	setup_bays(dev);
+	init_disks(dev);
+
+	/* Barebox Update handlers */
+	bbu_register_std_file_update("bootloader", 0,
+					 "/dev/nand0.bootloader",
+					 filetype_kwbimage_v1);
+
+	return 0;
+}
+
+static const struct of_device_id rn102_of_match[] = {
+	{ .compatible = "netgear,rn102" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, rn102_of_match);
+
+static struct driver rn102_driver = {
+	.name = "rn102",
+	.probe = rn102_probe,
+	.of_match_table = rn102_of_match,
+};
+
+device_platform_driver(rn102_driver);
diff --git a/arch/arm/boards/netgear-rn102/lowlevel.c b/arch/arm/boards/netgear-rn102/lowlevel.c
new file mode 100644
index 0000000000..c1680cee82
--- /dev/null
+++ b/arch/arm/boards/netgear-rn102/lowlevel.c
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/mvebu/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/armada-370-xp-regs.h>
+
+extern char __dtb_armada_370_rn102_bb_start[];
+
+#define INTERNAL_REG_BASE_ADDR	0x20080
+
+static __always_inline void mvebu_remap_registers(void)
+{
+	void __iomem *base = mvebu_get_initial_int_reg_base();
+
+	writel(MVEBU_REMAP_INT_REG_BASE, base + INTERNAL_REG_BASE_ADDR);
+}
+
+/*
+ * NOTE:
+ * armada_370_xp_barebox_entry() cannot be used here because the
+ * upstream SDRAM size detection for Armada 370-XP misinterprets
+ * the DDR_SIZE_CSn registers on this board and reports an incorrect
+ * memory size (256MB instead of 512MB on RN102).
+ *
+ * Until the generic detection code is fixed, we compute the SDRAM
+ * size manually using the DDR_SIZE_CSn values.
+ */
+static unsigned long armada_370_xp_memory_find(void)
+{
+	unsigned long mem_size = 0;
+
+	for (int cs = 0; cs < 4; cs++) {
+		u32 ctrl = readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
+
+		/* Skip non-enabled CS */
+		if ((ctrl & DDR_SIZE_ENABLED) != DDR_SIZE_ENABLED)
+			continue;
+
+		mem_size += (ctrl | ~DDR_SIZE_MASK) + 1;
+	}
+
+	return mem_size;
+}
+
+ENTRY_FUNCTION_MVEBU(start_netgear_rn102, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_armada_370_rn102_bb_start +
+		get_runtime_offset();
+
+	mvebu_remap_registers();
+	barebox_arm_entry(0, armada_370_xp_memory_find(), fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a84e09e388..5d1b21b615 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -51,6 +51,7 @@ lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
 lwl-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
 lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o am335x-myirtech-myd-mlo.dtb.o
+lwl-$(CONFIG_MACH_NETGEAR_RN102) += armada-370-rn102-bb.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
 lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
diff --git a/arch/arm/dts/armada-370-rn102-bb.dts b/arch/arm/dts/armada-370-rn102-bb.dts
new file mode 100644
index 0000000000..3947b365fe
--- /dev/null
+++ b/arch/arm/dts/armada-370-rn102-bb.dts
@@ -0,0 +1,96 @@
+/*
+ * Barebox specific DT overlay for Netgear ReadyNAS 102
+ */
+
+#include "arm/marvell/armada-370-netgear-rn102.dts"
+
+/ {
+	barebox,deep-probe;
+	
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	aliases {
+		state = &state_nand;
+	};
+
+	/* configure nand partition to store barebox environment */
+	environment {
+		compatible = "barebox,environment";
+		device-path = &nand_controller, "partname:environment";
+	};
+
+	/* configure nand partition to store barebox-state backend */
+	state_nand: nand_state_memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0xab67421f>;
+		backend-type = "raw";
+		backend = <&backend_state_nand>;
+		backend-storage-type = "circular";
+		backend-stridesize = <32>;
+
+		variable@0 {
+			reg = <0x0 0x1>;
+			type = "uint8";
+			default = <0x1>;
+		};
+	};
+};
+
+&nand_controller {
+	compatible = "marvell,armada370-nand", "marvell,pxa3xx-nand";
+	status = "okay";
+
+	nand-rb = <0>;
+	marvell,nand-keep-config;
+	nand-on-flash-bbt;
+
+	nand-ecc-strength = <4>;
+	nand-ecc-step-size = <512>;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "bootloader";
+			reg = <0x0 0x400000>;
+		};
+
+		partition@400000 {
+			label = "environment";
+			reg = <0x400000 0x80000>;
+		};
+
+		backend_state_nand: partition@480000 {
+			label = "state";
+			reg = <0x480000 0x80000>;
+		};
+
+		partition@500000 {
+			label = "kernel";
+			reg = <0x500000 0x1400000>;
+		};
+
+		partition@1900000 {
+			label = "minirootfs";
+			reg = <0x1900000 0x6000000>;
+		};
+	};
+};
+
+fastboot {
+	partition@kernel {
+		label = "kernel";
+		reg = <0x500000 0x1400000>;
+	};
+
+	partition@minirootfs {
+		label = "minirootfs";
+		reg = <0x1900000 0x6000000>;
+	};
+};
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index ed1302af65..046d539656 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -37,6 +37,10 @@ config MACH_GLOBALSCALE_MIRABOX
 	bool "Globalscale Mirabox"
 	select ARCH_ARMADA_370
 
+config MACH_NETGEAR_RN102
+	bool "Netgear ReadyNAS 102"
+	select ARCH_ARMADA_370
+
 config MACH_NETGEAR_RN104
 	bool "Netgear ReadyNAS 104"
 	select ARCH_ARMADA_370
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 7c918cb9f1..1741f0e9a5 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -27,6 +27,16 @@ image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox.img
 FILE_barebox-globalscale-mirabox-2nd.img = start_globalscale_mirabox.pblb
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-2nd.img
 
+BOOTSRC_start_netgear_rn102.pblb.mvebu1img = nand
+BINHDR_start_netgear_rn102.pblb.mvebu1img = $(board)/netgear-rn102/binary.0
+FLAGS_start_netgear_rn102.pblb.mvebu1img = -B 0x20000:1 -d 0x0 -e 0x0
+FILE_barebox-netgear-rn102.img = start_netgear_rn102.pblb.mvebu1img
+pblb-$(CONFIG_MACH_NETGEAR_RN102) += start_netgear_rn102
+image-$(CONFIG_MACH_NETGEAR_RN102) += barebox-netgear-rn102.img
+
+FILE_barebox-netgear-rn102-2nd.img = start_netgear_rn102.pblb
+image-$(CONFIG_MACH_NETGEAR_RN102) += barebox-netgear-rn102-2nd.img
+
 FLAGS_start_netgear_rn104.pblb.mvebu1img = -d 0x600000 -e 0x6e0000
 BOOTSRC_start_netgear_rn104.pblb.mvebu1img = nand
 BINHDR_start_netgear_rn104.pblb.mvebu1img = $(board)/netgear-rn104/binary.0

-- 
2.47.3




