Delivery-date: Tue, 09 Jan 2024 17:17:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEn5-00AUOS-06
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEn3-0000ls-Jr
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTMAXd5nar8kL4pa3yC+0kA+dKkkqxyfbqsGn7obVDQ=; b=q3Zlzu0YyNizys
	TtgZK6lOfMX+FP3b39iygeozpb4mngHSjKvVBLTDIcWZiV3wKcGoZ7exG0g6gkUppZKATnTQUyV+a
	rWscypunnQdljpr5HkE2aIMt/sVPFnc9gi3qusDQRIfWKLDNWvPL5Afrfe1QAlu8eZG9NjVc/hTRp
	sW8rWTK7BP5XKSigSp65HDZFgbceKjRx0y1N0qnaRvuxOEN7MCPr2nkZBADXRzLhKDPiIJIhih6EU
	n1yye8JhElloRAIMHpLhWf+MXNle3pKLlLUb9pwU5M/cV9WPT+6cHJt2P/ecHWHTfmh7YnrtCXQQJ
	0fu9OZmMiaLmepkztTmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElo-008oAM-1E;
	Tue, 09 Jan 2024 16:16:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElT-008nqD-0o
	for barebox@bombadil.infradead.org;
	Tue, 09 Jan 2024 16:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YTMAXd5nar8kL4pa3yC+0kA+dKkkqxyfbqsGn7obVDQ=; b=OP9F81tk1ik88F/6pp+RYzli2/
	BLiJqh4L3d8USJCeB0ijYgHcp4RkRlUuHMz1OXTZ0cV/r+zmlofhRac0SmsxTnu4B/HdBNQGr0DIA
	wH7Nt4UOAzaVhAgYEiD9OTJNWQ05+Pf7jnNsvNPo8pZvIqqSJfDo73mZcMTJ3PSgZXZ0miAPrEvnq
	8OkBy9KaP/APTS44tNx+2trGD1OkrxEr83imQgpY3pkfORMy2mWtd8BEc7LY1Mf2GXHSwrCiS6jD3
	qONApbGqhLTi9TnNpAGfCggQspQOhirUQh+y5I57HFdnMNiNWs89JQ3HqEpE5nG1v22wyFVwkNBs9
	lk3gOn7Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElL-008mGi-2V
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lu-LN; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WD6-Ts; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7SG-2Y;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:27 +0100
Message-Id: <20240109161527.3237581-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_161536_026288_3BCA9E75 
X-CRM114-Status: GOOD (  23.43  )
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
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 21/21] ARM: Layerscape: add basic support for NXP LS1028a RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

The NXP LS1028a RDB is a LS1028a Eval board. Currently supported are
SD/MMC, ethernet and SD image generation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1028ardb/Makefile           |   5 +
 arch/arm/boards/ls1028ardb/board.c            |  45 ++++++
 arch/arm/boards/ls1028ardb/lowlevel.c         | 142 ++++++++++++++++++
 arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg |  14 ++
 .../boards/ls1028ardb/ls1028ardb_rcw_sd.cfg   |  14 ++
 arch/arm/boards/ls1028ardb/start.S            |  19 +++
 arch/arm/configs/layerscape_defconfig         |   5 +-
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1028a-rdb.dts              |  59 ++++++++
 arch/arm/mach-layerscape/Kconfig              |  15 +-
 images/Makefile.layerscape                    |   9 ++
 12 files changed, 326 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/ls1028ardb/Makefile
 create mode 100644 arch/arm/boards/ls1028ardb/board.c
 create mode 100644 arch/arm/boards/ls1028ardb/lowlevel.c
 create mode 100644 arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg
 create mode 100644 arch/arm/boards/ls1028ardb/ls1028ardb_rcw_sd.cfg
 create mode 100644 arch/arm/boards/ls1028ardb/start.S
 create mode 100644 arch/arm/dts/fsl-ls1028a-rdb.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d27252c4a7..875d011573 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -187,6 +187,7 @@ obj-$(CONFIG_MACH_ZII_IMX8MQ_DEV)		+= zii-imx8mq-dev/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
 obj-$(CONFIG_MACH_ZII_IMX7D_DEV)		+= zii-imx7d-dev/
 obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
+obj-$(CONFIG_MACH_LS1028ARDB)			+= ls1028ardb/
 obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
 obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
 obj-$(CONFIG_MACH_LS1021AIOT)			+= ls1021aiot/
diff --git a/arch/arm/boards/ls1028ardb/Makefile b/arch/arm/boards/ls1028ardb/Makefile
new file mode 100644
index 0000000000..df60a21844
--- /dev/null
+++ b/arch/arm/boards/ls1028ardb/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
+lwl-y += start.o
+obj-y += board.o
diff --git a/arch/arm/boards/ls1028ardb/board.c b/arch/arm/boards/ls1028ardb/board.c
new file mode 100644
index 0000000000..094d72e6fc
--- /dev/null
+++ b/arch/arm/boards/ls1028ardb/board.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <deep-probe.h>
+#include <bootsource.h>
+#include <driver.h>
+#include <init.h>
+#include <of.h>
+#include <asm/memory.h>
+#include <mach/layerscape/layerscape.h>
+#include <mach/layerscape/bbu.h>
+#include <linux/sizes.h>
+
+static int ls1028ardb_probe(struct device *dev)
+{
+	unsigned long sd_bbu_flags = 0;
+	unsigned long emmc_bbu_flags = 0;
+
+	arm_add_mem_device("ram1", LS1028A_DDR_SDRAM_HIGHMEM_BASE, SZ_2G);
+
+	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 0) {
+		sd_bbu_flags = BBU_HANDLER_FLAG_DEFAULT;
+		of_device_enable_path("/chosen/environment-sd");
+	} else {
+		emmc_bbu_flags = BBU_HANDLER_FLAG_DEFAULT;
+		of_device_enable_path("/chosen/environment-emmc");
+	}
+
+	ls1028a_bbu_mmc_register_handler("sd", "/dev/mmc0.barebox", sd_bbu_flags);
+	ls1028a_bbu_mmc_register_handler("emmc", "/dev/mmc1.barebox", emmc_bbu_flags);
+
+	return 0;
+}
+
+static const struct of_device_id ls1028a_of_match[] = {
+	{ .compatible = "fsl,ls1028a-rdb" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(ls1028a_of_match);
+
+static struct driver ls1028ardb_board_driver = {
+	.name = "ls1028a-rdb",
+	.probe = ls1028ardb_probe,
+	.of_compatible = ls1028a_of_match,
+};
+device_platform_driver(ls1028ardb_board_driver);
diff --git a/arch/arm/boards/ls1028ardb/lowlevel.c b/arch/arm/boards/ls1028ardb/lowlevel.c
new file mode 100644
index 0000000000..00db0b1cf8
--- /dev/null
+++ b/arch/arm/boards/ls1028ardb/lowlevel.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <debug_ll.h>
+#include <ddr_spd.h>
+#include <image-metadata.h>
+#include <platform_data/mmc-esdhc-imx.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/syscounter.h>
+#include <asm/cache.h>
+#include <mach/layerscape/lowlevel.h>
+#include <mach/layerscape/xload.h>
+#include <mach/layerscape/errata.h>
+#include <mach/layerscape/layerscape.h>
+#include <linux/bitfield.h>
+
+static struct fsl_ddr_controller ddrc = {
+	.memctl_opts.ddrtype = SDRAM_TYPE_DDR4,
+	.base = IOMEM(LSCH2_DDR_ADDR),
+	.ddr_freq = 1600000000,
+	.erratum_A009942 = 1,
+	.erratum_A009663 = 1,
+	.chip_selects_per_ctrl = 4,
+	.fsl_ddr_config_reg = {
+		.cs[0].bnds		= 0x000000ff,
+		.cs[0].config		= 0x80040422,
+		.cs[0].config_2		= 0,
+		.cs[1].bnds		= 0,
+		.cs[1].config		= 0,
+		.cs[1].config_2		= 0,
+
+		.timing_cfg_3		= 0x01111000,
+		.timing_cfg_0		= 0xd0550018,
+		.timing_cfg_1		= 0xFAFC0C42,
+		.timing_cfg_2		= 0x0048c114,
+		.ddr_sdram_cfg		= 0xe50c000c,
+		.ddr_sdram_cfg_2	= 0x00401110,
+		.ddr_sdram_mode		= 0x01010230,
+		.ddr_sdram_mode_2	= 0x0,
+
+		.ddr_sdram_md_cntl	= 0x0600001f,
+		.ddr_sdram_interval	= 0x18600618,
+		.ddr_data_init		= 0xdeadbeef,
+
+		.ddr_sdram_clk_cntl	= 0x02000000,
+		.ddr_init_addr		= 0,
+		.ddr_init_ext_addr	= 0,
+
+		.timing_cfg_4		= 0x00000002,
+		.timing_cfg_5		= 0x07401400,
+		.timing_cfg_6		= 0x0,
+		.timing_cfg_7		= 0x23300000,
+
+		.ddr_zq_cntl		= 0x8A090705,
+		.ddr_wrlvl_cntl		= 0x86550607,
+		.ddr_sr_cntr		= 0,
+		.ddr_sdram_rcw_1	= 0,
+		.ddr_sdram_rcw_2	= 0,
+		.ddr_wrlvl_cntl_2	= 0x0708080A,
+		.ddr_wrlvl_cntl_3	= 0x0A0B0C09,
+
+		.ddr_sdram_mode_9	= 0x00000400,
+		.ddr_sdram_mode_10	= 0x04000000,
+
+		.timing_cfg_8		= 0x06115600,
+
+		.dq_map_0		= 0x5b65b658,
+		.dq_map_1		= 0xd96d8000,
+		.dq_map_2		= 0,
+		.dq_map_3		= 0x01600000,
+
+		.ddr_cdr1		= 0x80040000,
+		.ddr_cdr2		= 0x000000C1
+	},
+};
+
+extern char __dtb_z_fsl_ls1028a_rdb_start[];
+
+#define MEM_PLL_RAT	GENMASK(15, 10)
+
+static unsigned long get_ddr_freq(void)
+{
+	unsigned long freq = 100000000;
+	u32 rcwsr1 = readl(0x1e00100);
+	u32 mult;
+
+	mult = FIELD_GET(MEM_PLL_RAT, rcwsr1);
+
+	return freq * mult;
+}
+
+struct dram_regions_info dram_info = {
+	.num_dram_regions = 2,
+	.total_dram_size = SZ_4G,
+	.region = {
+		{
+			.addr = LS1028A_DDR_SDRAM_BASE,
+			.size = SZ_2G,
+		}, {
+			.addr = LS1028A_DDR_SDRAM_HIGHMEM_BASE,
+			.size = SZ_2G,
+		},
+	},
+};
+
+static noinline __noreturn void ls1028ardb_r_entry(unsigned long memsize)
+{
+	unsigned long membase = LS1028A_DDR_SDRAM_BASE;
+
+	if (get_pc() >= membase)
+		barebox_arm_entry(membase, SZ_2G - LS1028A_TFA_RESERVED_SIZE,
+				  __dtb_z_fsl_ls1028a_rdb_start);
+
+	arm_cpu_lowlevel_init();
+	ls1028a_init_lowlevel();
+	ddrc.ddr_freq = get_ddr_freq();
+
+	fsl_ddr_set_memctl_regs(&ddrc, 0, true);
+
+	ls1028a_tzc400_init(SZ_4G);
+
+	ls1028a_errata_post_ddr();
+
+	ls1028a_esdhc1_start_image(&dram_info);
+
+	hang();
+}
+
+void ls1028ardb_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+
+__noreturn void ls1028ardb_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+{
+	ls1028a_uart_setup(IOMEM(LSCH2_NS16550_COM1));
+
+	relocate_to_current_adr();
+	setup_c();
+
+	ls1028ardb_r_entry(r0);
+}
diff --git a/arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg b/arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg
new file mode 100644
index 0000000000..53cfb20327
--- /dev/null
+++ b/arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+31e00400 18010000
+31e00404 00000000
+33400890 00800401
+33500890 00800401
+334008bc 00000001
+33400154 47474747
+33400158 47474747
+335008bc 00000001
+33500154 47474747
+33500158 47474747
+334008bc 00000000
+335008bc 00000000
diff --git a/arch/arm/boards/ls1028ardb/ls1028ardb_rcw_sd.cfg b/arch/arm/boards/ls1028ardb/ls1028ardb_rcw_sd.cfg
new file mode 100644
index 0000000000..2183991112
--- /dev/null
+++ b/arch/arm/boards/ls1028ardb/ls1028ardb_rcw_sd.cfg
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+#PBL preamble and RCW header
+aa55aa55 80100000
+# RCW
+34004010 00000030 00000000 00000000
+00000000 00bf0000 0030c000 00000000
+01e03150 00002580 00000000 00003496
+00000000 00000010 00000000 00000000
+00000000 00000000 00000000 00000000
+00000000 00000000 00000000 00000000
+00000000 00000000 200e705a 00000000
+bb580000 00000000 00000000 00000000
+
diff --git a/arch/arm/boards/ls1028ardb/start.S b/arch/arm/boards/ls1028ardb/start.S
new file mode 100644
index 0000000000..fd410b744a
--- /dev/null
+++ b/arch/arm/boards/ls1028ardb/start.S
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+#include <asm/assembler64.h>
+
+#define STACK_TOP 0x18040000
+
+ENTRY_PROC(start_ls1028ardb)
+	switch_el x3, 3f, 2f, 1f
+3:
+	mov x3, #STACK_TOP
+	mov sp, x3
+	b ls1028ardb_entry
+2:
+1:
+	mov x3, 0x90000000
+	mov sp, x3
+	b ls1028ardb_entry
+ENTRY_PROC_END(start_ls1028ardb)
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 5a5ea784e1..8103da3226 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_LAYERSCAPE_PPA=y
+CONFIG_MACH_LS1028ARDB=y
 CONFIG_MACH_LS1046ARDB=y
 CONFIG_MACH_TQMLS1046A=y
 CONFIG_64BIT=y
@@ -83,6 +84,7 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_FSL_ENETC=y
 CONFIG_DRIVER_NET_FSL_FMAN=y
 CONFIG_DP83867_PHY=y
 CONFIG_REALTEK_PHY=y
@@ -112,12 +114,13 @@ CONFIG_WATCHDOG_IMX=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
+CONFIG_PCI_LAYERSCAPE=y
+CONFIG_PCI_ECAM_GENERIC=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_ZLIB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 04af3bd646..301014eaff 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -214,6 +214,7 @@ lwl-$(CONFIG_MACH_XILINX_ZCU106) += zynqmp-zcu106-revA.dtb.o
 
 lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
 lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
+lwl-$(CONFIG_MACH_LS1028ARDB) += fsl-ls1028a-rdb.dtb.o
 lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
diff --git a/arch/arm/dts/fsl-ls1028a-rdb.dts b/arch/arm/dts/fsl-ls1028a-rdb.dts
new file mode 100644
index 0000000000..671c97413b
--- /dev/null
+++ b/arch/arm/dts/fsl-ls1028a-rdb.dts
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/freescale/fsl-ls1028a-rdb.dts>
+#include "fsl-ls1028a.dtsi"
+
+/ {
+	chosen {
+		environment-sd {
+			status = "disabled";
+			compatible = "barebox,environment";
+			device-path = &part_env_sd;
+		};
+
+		environment-emmc {
+			status = "disabled";
+			compatible = "barebox,environment";
+			device-path = &part_env_emmc;
+		};
+	};
+
+	memory@80000000 {
+		/* Upstream dts has size 4GiB here which is wrong */
+		reg = <0x0 0x80000000 0x0 0x80000000>;
+	};
+};
+
+/* SD */
+&esdhc {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@1000 {
+		label = "barebox";
+		reg = <0x1000 0x1df000>;
+	};
+
+	part_env_sd: partition@1e0000 {
+		label = "barebox-environment";
+		reg = <0x1e0000 0x20000>;
+	};
+};
+
+/* eMMC */
+&esdhc1 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@1000 {
+		label = "barebox";
+		reg = <0x1000 0x1df000>;
+	};
+
+	part_env_emmc: partition@1e0000 {
+		label = "barebox-environment";
+		reg = <0x1e0000 0x20000>;
+	};
+};
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 52527f0c15..5658a63b33 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -7,7 +7,6 @@ config ARCH_LAYERSCAPE_PPA
 	select ARM_PSCI_OF
 	select ARM_SMCCC
 	select FITIMAGE
-	bool
 	help
 	  The "Primary Protected Application" (PPA) is a PSCI compliant firmware
 	  distributed by NXP. It is needed to start the secondary cores on
@@ -15,12 +14,24 @@ config ARCH_LAYERSCAPE_PPA
 	  work properly. The precompiled firmware images can be found here:
 	  https://github.com/NXP/qoriq-ppa-binary
 
-config ARCH_LS1046
+config ARCH_LS1028
+	bool
 	select CPU_V8
+	select SYS_SUPPORTS_64BIT_KERNEL
+	select ARM_ATF
+	select FIRMWARE_LS1028A_ATF
+
+config ARCH_LS1046
 	bool
+	select CPU_V8
+	select SYS_SUPPORTS_64BIT_KERNEL
 
 if 64BIT
 
+config MACH_LS1028ARDB
+	bool "QorIQ LS1028A Reference Design Board"
+	select ARCH_LS1028
+
 config MACH_LS1046ARDB
 	bool "QorIQ LS1046A Reference Design Board"
 	select ARCH_LS1046
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index e36dc5000a..9cb88270d7 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -21,6 +21,15 @@ quiet_cmd_lspbl_spi_image = LSPBL-SPI-IMG $@
 			    $(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) -s \
 			    -c $(2) -m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
 
+pbl-$(CONFIG_MACH_LS1028ARDB) += start_ls1028ardb.pbl
+
+$(obj)/barebox-ls1028ardb-sd.image: $(obj)/start_ls1028ardb.pblb \
+		$(board)/ls1028ardb/ls1028ardb_rcw_sd.cfg \
+		$(board)/ls1028ardb/ls1028ardb_pbi.cfg
+	$(call if_changed,lspbl_image,ls1028a)
+
+image-$(CONFIG_MACH_LS1028ARDB) += barebox-ls1028ardb-sd.image
+
 pbl-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb.pbl
 
 $(obj)/barebox-ls1046ardb-sd.image: $(obj)/start_ls1046ardb.pblb \
-- 
2.39.2



