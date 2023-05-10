Delivery-date: Thu, 11 May 2023 01:39:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOt-00DJIf-Sj
	for lore@lore.pengutronix.de; Thu, 11 May 2023 01:39:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOr-0000xP-Lk
	for lore@pengutronix.de; Thu, 11 May 2023 01:39:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crGVr1RMiD5eicXWFaVdvBBjEFJIfnf/eX7HJVQx4eQ=; b=kTa5qKPQlM998v07UDat8Ak9sZ
	+0GL4UvVqFVB2sE0U6+QGQZHo6Pbyr+wd5PqWun9EXod2d5vy13t0DulXdF+soqDPXNxz2cWgkm4T
	b9moAW6Me0R0RSqzp5tRwFrx5A/Oqbu9ad8CsCqVAr+QfFxl4U+X2EKziRDzGymOrnoY0nNTg3vAr
	KjnnCH5B319LBc/IL2e99ecbTj4DyfwQ2lU1x4swxLQvwDEbI7hARwQDml3i68J2rMh8zCONRl4HS
	G5UUfnT5RuSP+HHfkDNlGGXKufqQHUrKmwPFRtkGThcaxDMxe+3pMVrtkcct/MyVQ0Culvcxlh1uW
	CW5zyBnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNb-007Fx9-2s;
	Wed, 10 May 2023 23:37:56 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNS-007Fsc-0I
	for barebox@lists.infradead.org;
	Wed, 10 May 2023 23:37:51 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id C01D61C000E;
	Wed, 10 May 2023 23:37:39 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 11 May 2023 01:37:11 +0200
Message-Id: <20230510233711.37345-12-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510233711.37345-1-jmaselbas@zdiv.net>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_163746_428324_EDE915A8 
X-CRM114-Status: GOOD (  19.99  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 11/11] arm: boards: sunxi: Add pine64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/boards/Makefile                 |   1 +
 arch/arm/boards/pine64-pine64/Makefile   |   1 +
 arch/arm/boards/pine64-pine64/lowlevel.c | 148 +++++++++++++++++++++++
 arch/arm/dts/Makefile                    |   1 +
 arch/arm/dts/sun50i-a64-pine64-plus.dts  |  18 +++
 arch/arm/mach-sunxi/Kconfig              |   5 +
 images/Makefile.sunxi                    |  10 ++
 7 files changed, 184 insertions(+)
 create mode 100644 arch/arm/boards/pine64-pine64/Makefile
 create mode 100644 arch/arm/boards/pine64-pine64/lowlevel.c
 create mode 100644 arch/arm/dts/sun50i-a64-pine64-plus.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 083ec2dce6..1fa1f962b3 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -97,6 +97,7 @@ obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
 obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
 obj-$(CONFIG_MACH_PINE64_PINEPHONE)		+= pine64-pinephone/
+obj-$(CONFIG_MACH_PINE64_PINE64)		+= pine64-pine64/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
diff --git a/arch/arm/boards/pine64-pine64/Makefile b/arch/arm/boards/pine64-pine64/Makefile
new file mode 100644
index 0000000000..b08c4a93ca
--- /dev/null
+++ b/arch/arm/boards/pine64-pine64/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/pine64-pine64/lowlevel.c b/arch/arm/boards/pine64-pine64/lowlevel.c
new file mode 100644
index 0000000000..744f37a8e0
--- /dev/null
+++ b/arch/arm/boards/pine64-pine64/lowlevel.c
@@ -0,0 +1,148 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <debug_ll.h>
+#include <linux/sizes.h>
+#include <linux/bitops.h>
+#include <asm/barebox-arm.h>
+#include <asm/cache.h>
+#include <mach/sunxi/init.h>
+#include <mach/sunxi/xload.h>
+#include <mach/sunxi/egon.h>
+#include <mach/sunxi/rmr_switch.h>
+#include <mach/sunxi/sun50i-regs.h>
+#include <mach/sunxi/sunxi-pinctrl.h>
+
+#define STACK_TOP   CONFIG_SUNXI_PBL_STACK_TOP
+
+#if 0
+static void sun50i_pinmux_set(void __iomem *pio, u32 port, u32 pins, u8 func)
+{
+	u32 i, msk = 0, cfg = 0;
+	for (i = 0; i < 8; i++) {
+		if (pins & (1 << i)) {
+			cfg |= func << (i * 4);
+			msk |= 0xf << (i * 4);
+		}
+	}
+	clrsetbits_le32(pio + port, msk, cfg);
+}
+#endif
+
+static void setup_uart(void)
+{
+	void __iomem *pio = IOMEM(SUN50I_PIO_BASE_ADDR);
+
+	/// ... uuuuhh
+//	sun50i_pinmux_set(pio, PIO_PB_CFG1, BIT(0) | BIT(1), 4);
+	/* UART0 pinmux (PB8 + PB9) */
+	clrsetbits_le32(pio + PIO_PB_CFG1, 0x000000ff, 0x00000044);
+
+	debug_ll_init();
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_pine64_pine64, STACK_TOP, r0, r1, r2)
+{
+	extern char __dtb_z_sun50i_a64_pine64_plus_start[];
+	void *fdt;
+	u32 size;
+
+	sunxi_switch_to_aarch64();
+
+	sun50i_cpu_lowlevel_init();
+	setup_uart();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	/* Skip SDRAM initialization if we run from it */
+	if (get_pc() < SUN50I_DRAM_BASE_ADDR) {
+		size = sun50i_a64_ddr3_dram_init();
+		if (size == 0) {
+			puts_ll("FAIL: dram init\r\n");
+			goto reset;
+		}
+		puthex_ll(size);
+		putc_ll('\r');	putc_ll('\n');
+	}
+
+	puts_ll("now booting\r\n");
+	fdt = __dtb_z_sun50i_a64_pine64_plus_start + get_runtime_offset();
+	barebox_arm_entry(SUN50I_DRAM_BASE_ADDR, SZ_1G, fdt);
+
+reset:
+	sun50i_cpu_lowlevel_reset();
+}
+
+static void sun50i_mmc0_init(void)
+{
+	void __iomem *ccu = IOMEM(SUN50I_CCU_BASE_ADDR);
+	void __iomem *pio = IOMEM(SUN50I_PIO_BASE_ADDR);
+
+	/* - configure clock gate pinctrl controller */
+	/* PIO clock enable */
+	setbits_le32(ccu + CCU_BUS_CLK_GATE2, BIT(5));
+
+	/* - configure pinctrl for mmc controller */
+	/* set alt-function 2 for pins PF0 -> PF5 */
+	clrsetbits_le32(pio + PIO_PF_CFG0, 0x00ffffff, 0x00222222);
+//	sun50i_pinmux_set(pio, PIO_PF_CFG0, 0x3f, 2); TO BE REWORK'D
+
+	/* - configure clock gate mmc controller */
+	/* MMC0 and MMC2 clock un-gate and reset */
+	setbits_le32(ccu + 0x2c0, /* RST_BUS_MMC0 */ BIT(8) | /* RST_BUS_MMC2 */ BIT(10));
+	setbits_le32(ccu + 0x060, /* CLK_BUS_MMC0 */ BIT(8) | /* CLK_BUS_MMC2 */ BIT(10));
+
+	writel(BIT(31), ccu + 0x88); /* MMC0 clock gate */
+	writel(BIT(31), ccu + 0x90); /* MMC2 clock gate */
+}
+
+static void sunxi_fat_start_image(struct pbl_bio *bio, void *buf, size_t size)
+{
+	void (*start)(void) = buf;
+	int ret;
+
+	ret = pbl_fat_load(bio, "barebox.bin", buf, size);
+	if (ret < 0)
+		return;
+	sync_caches_for_execution();
+	start();
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_pine64_pine64_xload, STACK_TOP, r0, r1, r2)
+{
+	struct pbl_bio bio;
+	u32 size;
+	int ret;
+
+	sunxi_egon_header();
+	sunxi_switch_to_aarch64();
+
+	sun50i_cpu_lowlevel_init();
+	setup_uart();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	size = sun50i_a64_ddr3_dram_init();
+	if (size == 0) {
+		puts_ll("FAIL: dram init\r\n");
+		goto reset;
+	}
+
+	/* now let's boot from sd/mmc */
+	sun50i_mmc0_init();
+
+	/* - setup pbl mci driver */
+	ret = sunxi_mmc_bio_init(&bio, IOMEM(SUN50I_MMC0_BASE_ADDR), 24000000 /*osc24M */, 0);
+	if (ret)
+		goto reset;
+	puts_ll("bio init\r\n");
+
+	sunxi_fat_start_image(&bio, IOMEM(SUN50I_DRAM_BASE_ADDR), SZ_16M);
+	puts_ll("fat fail\r\n");
+
+reset:
+	sun50i_cpu_lowlevel_reset();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 564a60a0d8..b3de5ff54a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -82,6 +82,7 @@ lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1) += stm32mp157c-phycore-stm32mp1-3.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_PINE64_PINEPHONE) += sun50i-a64-pinephone-1_2.dtb.o
+lwl-$(CONFIG_MACH_PINE64_PINE64) += sun50i-a64-pine64-plus.dtb.o
 lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
diff --git a/arch/arm/dts/sun50i-a64-pine64-plus.dts b/arch/arm/dts/sun50i-a64-pine64-plus.dts
new file mode 100644
index 0000000000..b7856bcddf
--- /dev/null
+++ b/arch/arm/dts/sun50i-a64-pine64-plus.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <arm64/allwinner/sun50i-a64-pine64-plus.dts>
+/{
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x40000000>; /* 1 GB */
+	};
+};
+&mmc0 { /* SD */
+};
+&mmc1 { /* PIO */
+	max-frequency = <400000>;
+};
+&mmc2 { /* eMMC */
+	max-frequency = <400000>;
+	status = "ok";
+};
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
index e2d236f020..f101ae45ed 100644
--- a/arch/arm/mach-sunxi/Kconfig
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -41,6 +41,11 @@ config MACH_PINE64_PINEPHONE
 	select ARCH_SUN50I_A64
 	select ARM_USE_COMPRESSED_DTB
 
+config MACH_PINE64_PINE64
+	bool "Allwinner A64 based Pine64 PINE64"
+	select ARCH_SUN50I_A64
+	select ARM_USE_COMPRESSED_DTB
+
 endif
 
 endif
diff --git a/images/Makefile.sunxi b/images/Makefile.sunxi
index 070b1bf00d..75adba7f7f 100644
--- a/images/Makefile.sunxi
+++ b/images/Makefile.sunxi
@@ -20,3 +20,13 @@ image-$(CONFIG_MACH_PINE64_PINEPHONE) += barebox-pine64-pinephone_xload.img
 pblb-$(CONFIG_MACH_PINE64_PINEPHONE) += start_pine64_pinephone
 FILE_barebox-pine64-pinephone.img = start_pine64_pinephone.pblb
 image-$(CONFIG_MACH_PINE64_PINEPHONE) += barebox-pine64-pinephone.img
+
+pblb-$(CONFIG_MACH_PINE64_PINE64) += start_pine64_pine64
+FILE_barebox-pine64-pine64.img = start_pine64_pine64.pblb
+image-$(CONFIG_MACH_PINE64_PINE64) += barebox-pine64-pine64.img
+
+pblb-$(CONFIG_MACH_PINE64_PINE64) += start_pine64_pine64_xload
+MAX_PBL_IMAGE_SIZE_start_pine64_pine64_xload = 0x8000
+FILE_barebox-pine64-pine64_xload.img = start_pine64_pine64_xload.pblb.egonimg
+image-$(CONFIG_MACH_PINE64_PINE64) += barebox-pine64-pine64_xload.img
+
-- 
2.40.0



