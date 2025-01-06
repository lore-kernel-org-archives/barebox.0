Delivery-date: Mon, 06 Jan 2025 15:05:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjv-00HVz6-35
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjs-0000si-OO
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XUSkPo/Q7CCgMgSEVjQSf0vCd/SPYkVsOxIMlfuE+oM=; b=tZoF3bJabfQEjuLw0LWJtHj33h
	oFqJ+XoqqRBZDO8SvhDzjjeoKtlIRQWzfmf6DvpEsY0NAtLq+l7bO4wtyc4zI+qGYJ6HaYm8XDduW
	KINFjO0/xA7yf0gK+MToxkmnVVnOAVqz6Y37PGIYlgxN+pjzM5nFMH9Y+VLP7MzR2w2v7SZI3VzxC
	onCa1NTAfiKMZdNufRQqEeOH/shW3EvR3XnSPxtsuwvmF5ME+clUC4mlLJ4PNvdJHd0AyogXi5h+a
	fh0+uGruIiPuczKqB51U2Q/Cu494f9L3rE1NOUhCcN4cF/92eO8Dt6WSVD9Dm639+w5QaMHzJE41A
	EPTB85WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnjD-00000001V5m-0h6V;
	Mon, 06 Jan 2025 14:05:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngW-00000001UYM-0xlc
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngV-0008AY-3h; Mon, 06 Jan 2025 15:02:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-007B6g-0L;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1w;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-16-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=13285;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Re6SglOAFn++zFKiFPnTpLNGBLsn4OtJ6nzEOMig0/Y=;
 b=Kj64A0hqesuffZMpp9t2fcFeQFXh74eGKbUw+hDTiQ62CT12ajqyRh3m8tJj/cN46lTOZWLp3
 lqZd3TaOJAiBtHbr6pXuQSOTpmrMR4QFmJqGBnaWlGQntBFOquChJGb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060224_582252_ECB3EF93 
X-CRM114-Status: GOOD (  25.37  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 16/22] ARM: k3: Add initial r5 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

K3 SoCs initially boot from a Cortex-R5 processor. This patch adds
initial support for this processor along with a dtsi file to make some
adjustments to the regular device trees needed to describe the
differences between the A53 and the R5 processors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig              |   2 -
 arch/arm/dts/k3-am625-r5.dtsi | 103 ++++++++++++++++
 arch/arm/mach-k3/Kconfig      |  21 ++++
 arch/arm/mach-k3/Makefile     |   1 +
 arch/arm/mach-k3/r5.c         | 277 ++++++++++++++++++++++++++++++++++++++++++
 include/mach/k3/r5.h          |   9 ++
 6 files changed, 411 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 516cc721a5..7abd3720ab 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -160,8 +160,6 @@ config ARCH_IMX
 
 config ARCH_K3
 	bool "Texas Instruments Inc. K3 multicore SoC architecture"
-	depends on 64BIT
-	select CPU_V8
 	select GPIOLIB
 	select COMMON_CLK
 	select HAS_DEBUG_LL
diff --git a/arch/arm/dts/k3-am625-r5.dtsi b/arch/arm/dts/k3-am625-r5.dtsi
new file mode 100644
index 0000000000..e6e9d135b4
--- /dev/null
+++ b/arch/arm/dts/k3-am625-r5.dtsi
@@ -0,0 +1,103 @@
+
+&a53_timer0 {
+	status = "disabled";
+};
+
+&main_timer0 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&main_timer1 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&main_timer2 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&main_timer3 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&main_timer4 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&main_timer5 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&main_timer6 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&main_timer7 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&cbass_main {
+	sysctrler: sysctrler {
+		compatible = "ti,am654-system-controller";
+		mboxes= <&secure_proxy_main 1>, <&secure_proxy_main 0>, <&secure_proxy_sa3 0>;
+		mbox-names = "tx", "rx", "boot_notify";
+	};
+};
+
+&secure_proxy_sa3 {
+	/* We require this for boot handshake */
+	status = "okay";
+};
+
+/ {
+	a53_0: a53@0 {
+		compatible = "ti,am654-rproc";
+		reg = <0x00 0x00a90000 0x00 0x10>;
+		power-domains = <&k3_pds 61 TI_SCI_PD_EXCLUSIVE>,
+				<&k3_pds 135 TI_SCI_PD_EXCLUSIVE>;
+		resets = <&k3_reset 135 0>;
+		clocks = <&k3_clks 61 0>, <&k3_clks 135 0>;
+		clock-names = "gtc", "core";
+		assigned-clocks = <&k3_clks 61 0>, <&k3_clks 135 0>;
+		assigned-clock-parents = <&k3_clks 61 2>;
+		assigned-clock-rates = <200000000>, <1250000000>;
+		ti,sci = <&dmsc>;
+		ti,sci-proc-id = <32>;
+		ti,sci-host-id = <10>;
+	};
+
+	dm_tifs: dm-tifs {
+		compatible = "ti,j721e-dm-sci";
+		ti,host-id = <36>;
+		ti,secure-host;
+		mbox-names = "rx", "tx";
+		mboxes= <&secure_proxy_main 22>,
+			<&secure_proxy_main 23>;
+	};
+};
+
+&dmsc {
+	mboxes = <&secure_proxy_main 0>,
+		 <&secure_proxy_main 1>,
+		 <&secure_proxy_main 0>;
+	mbox-names = "rx", "tx", "notify";
+	ti,host-id = <35>;
+	ti,secure-host;
+};
+
+&sdhci2 {
+	/* Doesn't work currently, no clocks defined */
+	status = "disabled";
+};
+
+&dss_vp1_clk {
+	/* Doesn't work, no support for input clock */
+	status = "disabled";
+};
diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 152d231a56..2ea9f32696 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -3,6 +3,27 @@
 menu "K3 boards"
         depends on ARCH_K3
 
+config MACH_K3_CORTEX_R5
+	bool
+	select CPU_V7
+	select CLOCKSOURCE_TI_DM
+	select REMOTEPROC
+	select REMOTEPROC_TI_K3_ARM64
+	select REMOTEPROC_K3_SYSTEM_CONTROLLER
+	select PM_GENERIC_DOMAINS
+	select TI_K3_PM_DOMAINS
+	select ARMV7R_MPU
+	select ELF
+	select K3_DDRSS
+	depends on 32BIT
+	default y
+
+config MACH_K3_CORTEX_A
+	bool
+	select CPU_V8
+	depends on 64BIT
+	default y
+
 config MACH_BEAGLEPLAY
 	bool "BeagleBoard BeaglePlay"
 	help
diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index f95691b59a..0efc1e0239 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -1 +1,2 @@
 obj-y += common.o
+obj-pbl-$(CONFIG_MACH_K3_CORTEX_R5) += r5.o
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
new file mode 100644
index 0000000000..6fc1bdf661
--- /dev/null
+++ b/arch/arm/mach-k3/r5.c
@@ -0,0 +1,277 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <io.h>
+#include <linux/kernel.h>
+#include <mach/k3/r5.h>
+#include <asm/armv7r-mpu.h>
+#include <init.h>
+#include <libfile.h>
+#include <fs.h>
+#include <firmware.h>
+#include <linux/remoteproc.h>
+#include <soc/ti/ti_sci_protocol.h>
+#include <linux/clk.h>
+#include <elf.h>
+#include <asm/cache.h>
+#include <linux/sizes.h>
+#include <barebox.h>
+
+#define CTRLMMR_LOCK_KICK0_UNLOCK_VAL	0x68ef3490
+#define CTRLMMR_LOCK_KICK1_UNLOCK_VAL	0xd172bc5a
+#define CTRLMMR_LOCK_KICK0		0x1008
+#define CTRLMMR_LOCK_KICK1		0x100c
+#define CTRL_MMR0_PARTITION_SIZE	0x4000
+#define WKUP_CTRL_MMR0_BASE		0x43000000
+#define CTRL_MMR0_BASE			0x00100000
+#define MCU_CTRL_MMR0_BASE		0x04500000
+#define PADCFG_MMR0_BASE		0x04080000
+#define PADCFG_MMR1_BASE		0x000f0000
+
+static void mmr_unlock(uintptr_t base, u32 partition)
+{
+	/* Translate the base address */
+	uintptr_t part_base = base + partition * CTRL_MMR0_PARTITION_SIZE;
+
+	/* Unlock the requested partition if locked using two-step sequence */
+	writel(CTRLMMR_LOCK_KICK0_UNLOCK_VAL, part_base + CTRLMMR_LOCK_KICK0);
+	writel(CTRLMMR_LOCK_KICK1_UNLOCK_VAL, part_base + CTRLMMR_LOCK_KICK1);
+}
+
+void k3_ctrl_mmr_unlock(void)
+{
+	/* Unlock all WKUP_CTRL_MMR0 module registers */
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 0);
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 1);
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 2);
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 3);
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 4);
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 5);
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 6);
+	mmr_unlock(WKUP_CTRL_MMR0_BASE, 7);
+
+	/* Unlock all CTRL_MMR0 module registers */
+	mmr_unlock(CTRL_MMR0_BASE, 0);
+	mmr_unlock(CTRL_MMR0_BASE, 1);
+	mmr_unlock(CTRL_MMR0_BASE, 2);
+	mmr_unlock(CTRL_MMR0_BASE, 4);
+	mmr_unlock(CTRL_MMR0_BASE, 6);
+
+	/* Unlock all MCU_CTRL_MMR0 module registers */
+	mmr_unlock(MCU_CTRL_MMR0_BASE, 0);
+	mmr_unlock(MCU_CTRL_MMR0_BASE, 1);
+	mmr_unlock(MCU_CTRL_MMR0_BASE, 2);
+	mmr_unlock(MCU_CTRL_MMR0_BASE, 3);
+	mmr_unlock(MCU_CTRL_MMR0_BASE, 4);
+	mmr_unlock(MCU_CTRL_MMR0_BASE, 6);
+
+	/* Unlock PADCFG_CTRL_MMR padconf registers */
+	mmr_unlock(PADCFG_MMR0_BASE, 1);
+	mmr_unlock(PADCFG_MMR1_BASE, 1);
+}
+
+#define CONFIG_SPL_TEXT_BASE	0x43c00000 /* FIXME */
+#define CFG_SYS_SDRAM_BASE	0x80000000 /* FIXME */
+
+static struct mpu_region_config k3_mpu_regions[16] = {
+	/*
+	 * Make all 4GB as Device Memory and not executable. We are overriding
+	 * it with next region for any requirement.
+	 */
+	{0x00000000, REGION_0, XN_EN, PRIV_RW_USR_RW, SHARED_WRITE_BUFFERED,
+	 REGION_4GB},
+
+	/* SPL code area marking it as WB and Write allocate. */
+	{CONFIG_SPL_TEXT_BASE, REGION_1, XN_DIS, PRIV_RW_USR_RW,
+	 O_I_WB_RD_WR_ALLOC, REGION_8MB},
+
+	/* U-Boot's code area marking it as WB and Write allocate */
+	{CFG_SYS_SDRAM_BASE, REGION_2, XN_DIS, PRIV_RW_USR_RW,
+	 O_I_WB_RD_WR_ALLOC, REGION_2GB},
+	/* mcu_r5fss0_core0 BTCM area marking it as WB and Write allocate. */
+	{0x41010000, 3, XN_DIS, PRIV_RW_USR_RW, O_I_WB_RD_WR_ALLOC,
+	 REGION_8MB},
+	{0x0, 4, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 5, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 6, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 7, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 8, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 9, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 10, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 11, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 12, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 13, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 14, 0x0, 0x0, 0x0, 0x0},
+	{0x0, 15, 0x0, 0x0, 0x0, 0x0},
+};
+
+void k3_mpu_setup_regions(void)
+{
+	armv7r_mpu_setup_regions(k3_mpu_regions, ARRAY_SIZE(k3_mpu_regions));
+}
+
+#include <soc/k3/clk.h>
+
+#define PSC_PTCMD               0x120
+#define PSC_PTCMD_H             0x124
+#define PSC_PTSTAT              0x128
+#define PSC_PTSTAT_H            0x12C
+#define PSC_PDSTAT              0x200
+#define PSC_PDCTL               0x300
+#define PSC_MDSTAT              0x800
+#define PSC_MDCTL               0xa00
+
+#define MDSTAT_STATE_MASK               0x3f
+#define MDSTAT_BUSY_MASK                0x30
+#define MDSTAT_STATE_SWRSTDISABLE       0x0
+#define MDSTAT_STATE_ENABLE             0x3
+
+static void ti_pd_wait(void __iomem *base, int id)
+{
+	u32 pdoffset = 0;
+	u32 ptstatreg = PSC_PTSTAT;
+
+	if (id > 31) {
+		pdoffset = 32;
+		ptstatreg = PSC_PTSTAT_H;
+	}
+
+	while (readl(base + ptstatreg) & BIT(id - pdoffset));
+}
+
+void am625_early_init(void)
+{
+	void __iomem *pd_base = (void *)0x400000;
+	u32 val;
+	volatile int i;
+
+	ti_k3_pll_init((void *)0x68c000);
+
+	/* hsdiv0_16fft_main_12_hsdivout0_clk divide by 2 */
+	val = readl(0x68c080);
+	val &= ~0xff;
+	val |= 31;
+	writel(val, 0x68c080);
+
+	/* PLL needs a rest, barebox would hang during PLL setup without this delay */
+	for (i = 0; i < 1000000; i++);
+
+	/*
+	 * configure PLL to 800MHz, with the above divider DDR frequency
+	 * results in 400MHz.
+	 */
+	ti_k3_pll_set_rate((void *)0x68c000, 800000000, 25000000);
+
+	/* Enable DDR controller power domains */
+	writel(0x103, pd_base + 0x00000a24);
+	writel(0x1, pd_base + 0x00000120);
+	ti_pd_wait(pd_base, 0);
+	writel(0x103, pd_base + 0x00000a28);
+	writel(0x1, pd_base + 0x00000120);
+	ti_pd_wait(pd_base, 0);
+	writel(0x103, pd_base + 0x00000a2c);
+	writel(0x1, pd_base + 0x00000120);
+	ti_pd_wait(pd_base, 0);
+}
+
+/*
+ * The bl31 and optee binaries are relocatable, but these addresses
+ * are hardcoded as reserved mem regions in the upstream device trees.
+ */
+#define BL31_ADDRESS 0x9e780000
+#define OPTEE_ADDRESS 0x9e800000
+
+static int k3_r5_start_image(void)
+{
+	int err;
+	void *ti_dm_buf;
+	ssize_t size;
+	struct firmware fw;
+	const struct ti_sci_handle *ti_sci;
+	void *bl31 = (void *)BL31_ADDRESS;
+	void *barebox = (void *)0x80080000;
+	void *optee = (void *)OPTEE_ADDRESS;
+	struct elf_image *elf;
+	void __noreturn (*ti_dm)(void);
+	struct rproc *arm64_rproc;
+
+	ti_sci = ti_sci_get_handle(NULL);
+	if (IS_ERR(ti_sci))
+		return -EINVAL;
+
+	arm64_rproc = ti_k3_am64_get_handle();
+	if (!arm64_rproc) {
+		pr_err("Cannot get rproc handle\n");
+		return -EINVAL;
+	}
+
+	size = read_file_into_buf("/boot/optee.bin", optee, SZ_32M);
+	if (size < 0) {
+		pr_err("Cannot load optee.bin: %pe\n", ERR_PTR(size));
+		return size;
+	}
+	pr_debug("Loaded optee.bin (size %u) to 0x%p\n", size, optee);
+
+	size = read_file_into_buf("/boot/barebox.bin", barebox, optee - barebox);
+	if (size < 0) {
+		pr_err("Cannot load barebox.bin: %pe\n", ERR_PTR(size));
+		return size;
+	}
+	pr_debug("Loaded barebox.bin (size %u) to 0x%p\n", size, barebox);
+
+	size = read_file_into_buf("/boot/bl31.bin", bl31, barebox - optee);
+	if (size < 0) {
+		pr_err("Cannot load bl31.bin: %pe\n", ERR_PTR(size));
+		return size;
+	}
+	pr_debug("Loaded bl31.bin (size %u) to 0x%p\n", size, bl31);
+
+	err = read_file_2("/boot/ti-dm.bin", &size, &ti_dm_buf, FILESIZE_MAX);
+	if (err) {
+		pr_err("Cannot load ti-dm.bin: %pe\n", ERR_PTR(err));
+		return err;
+	}
+	pr_debug("Loaded ti-dm.bin (size %u)\n", size);
+
+	elf = elf_open_binary(ti_dm_buf);
+	if (IS_ERR(elf)) {
+		pr_err("Cannot open ELF image %pe\n", elf);
+		return PTR_ERR(elf);
+	}
+
+	err = elf_load(elf);
+	if (err) {
+		pr_err("Cannot load ELF image %pe\n", ERR_PTR(err));
+		elf_close(elf);
+	}
+
+	free(ti_dm_buf);
+
+	fw.data = bl31;
+
+	/* Release all the exclusive devices held by SPL before starting ATF */
+	pr_info("Starting TF-A on A53 core\n");
+
+	ti_sci->ops.dev_ops.release_exclusive_devices(ti_sci);
+	arm64_rproc->ops->load(arm64_rproc, &fw);
+	arm64_rproc->ops->start(arm64_rproc);
+
+	pr_debug("Starting ti-dm at 0x%08llx\n", elf->entry);
+
+	sync_caches_for_execution();
+
+	ti_dm = (void *)(unsigned long)elf->entry;
+
+	ti_dm();
+}
+
+static int xload(void)
+{
+	int ret;
+
+	ret = k3_r5_start_image();
+
+	pr_crit("Starting image failed with: %pe\n", ERR_PTR(ret));
+	pr_crit("Nothing left to do\n");
+
+	hang();
+}
+postenvironment_initcall(xload);
diff --git a/include/mach/k3/r5.h b/include/mach/k3/r5.h
new file mode 100644
index 0000000000..f40639ed5b
--- /dev/null
+++ b/include/mach/k3/r5.h
@@ -0,0 +1,9 @@
+#ifndef __MACH_K3_R5_H
+#define __MACH_K3_R5_H
+
+void k3_ctrl_mmr_unlock(void);
+void k3_mpu_setup_regions(void);
+void am625_early_init(void);
+struct rproc *ti_k3_am64_get_handle(void);
+
+#endif /* __MACH_K3_R5_H */

-- 
2.39.5



