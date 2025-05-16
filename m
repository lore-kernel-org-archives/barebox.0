Delivery-date: Fri, 16 May 2025 19:19:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFyie-006FHb-38
	for lore@lore.pengutronix.de;
	Fri, 16 May 2025 19:19:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFyid-0006ri-Jo
	for lore@pengutronix.de; Fri, 16 May 2025 19:19:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lZozApU91EC4afsAJiqtixT1qcwE897UEIFPGqZu5gs=; b=R1g3axGyFqRvLdKsZzztjKB8VL
	4yQc29Jo0Xm2+QICZpA8B7FpJLRnTGP6Jv4TgYLg9NiEhhdIjiJttpjT7T0Lr1kvQfiTO2I5KyFxR
	8Jbu4L1GR4zkqpZrQ4Pj9+W3Jv/9cm9EXYEdzL8dXghU5qHTs5KKn5xfzUmf99cWouJqzXTro0dku
	ZiMXsV6f9U07TUcmjnEeDZn4Rs9ycsgvt6BwAOgYuUyKpcGlfzWvdEdlipu/9CKXTQBoVdnuX01/o
	J2doOiEwVVxUJ4TvzC9tU1fJGWSh5E4CpM5iKs39Gc8ygsKWBXKUesc8ciWj+SCDqaWtvkjvUIhxa
	eP/fwdKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFyhv-000000049OI-38Ab;
	Fri, 16 May 2025 17:18:51 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFyhc-000000049JZ-3TMk
	for barebox@lists.infradead.org;
	Fri, 16 May 2025 17:18:34 +0000
Received: from Precision-T3610.Speedport_W_723V_1_49_000 ([93.239.129.162]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M4KFF-1uFhaK1MB7-00ELXI; Fri, 16 May 2025 19:18:26 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Johannes Roith <johannes@gnu-linux.rocks>
Date: Fri, 16 May 2025 19:18:02 +0200
Message-Id: <20250516171802.33936-1-johannes@gnu-linux.rocks>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:dJoVJaJDoc0/C1EUevuBMFXYIRKNY1rVHtm/bZDOrDGxlxQuczZ
 dOuxnsJ8c0H+0tcuwCtlNmRB3ufkoq5bkOXd3xlSApGn4Udo2X0RDa71bfHGR01f2cpifeQ
 smIg5afd58487arDuxXlRL+urnW91DIzhvkPUhp/1jZhfRLbRO4COTlYPF6keYA7E5zer6C
 IVCs2Ngs9vKURLBgy0beg==
UI-OutboundReport: notjunk:1;M01:P0:aS2VncYV5RM=;NqBcwKm/thutHB+gl0t1uIDFMDX
 PhUTCJMGYIvnxH8igBlXJKZq+QXYo+6BpRvk8MN+zfTzfMI0oM+7ZrxRQQsdF8xZASloFt2LY
 ADOWN1qY/PgDiC/l7KoYGGlwFuUrznsEysksE5JB1u6MtzVcvq5zQ2UuVTQAaqEEfnL0Kh28L
 jjmSsxFFGQvo05F0n/3PBo/doOfl224vo1Dlj3cYO++bBtnLU2eVVpSxotwHvgLlhW/D4gfzj
 OhylvPrlVfR7a0Vw191SSOqdv+DZRR/wmt89b1zqQ082FRvl4waIw5XA1JGjeeRjPo7yAM1zU
 kdxQXgFyy99xUcmP3PXCLVQZT7cHBwpu/k+o99VUtZQdQSfY2c1DCwVIwpKmqTJjyYNygj9d9
 uj76oejOpWa90mag/QNufokFQhQgp9IlizBuPiBXdqwScu0i6dM8HMeZHH18KpRHr6424UeVR
 r9+iillkyHAPZv5fMH0aPswvlHrpEATBd61Epkuz9fgqAX15mP3yrD/gdLf0ax99HIh14rjRF
 ssCkZ7aS7hT6tPrJJGU4CwVAmKwK7N1ex20ilXl2MFkAu55K95oJoWBNDOWwrpAQVGenQiaf0
 rM1DyJMiYtwhZiHazVIOXo3HyZ1+ryErMNi+a22g5JhsaVnaVU3nkL/trTAkY3cV9iabVqpTK
 WvUExnfC4DirlIHrFUEgLWSzW6pTlbR1PowsqCp2R/6N/tX9jvuuXA+H3+FJOdlHgIboU5lxX
 ZjsXya09r7UDcJ6dbNCblmEwVXwfR/g0rUOWQWqJmyhbhn7dD3iLTeNHOYf2Uxd8VK2vEHYgb
 H6dzc+sDghuw7AC/eSuLPrFPJpHFoLkSZDkSoJqQydVSczzVPjZhpqYf9aEH4x+8W4w42JeOm
 flYA8cEwnkmKEu9y2V0Jh8cLojemZuI+n1j6xPL5Ttlcx2X2/UrH6C48CsJrt25GDwAjHHAyC
 yFZYl47c39qDL2iQXkocO+SHUkqfQ92SPwB9Gc53obd4n6rkDuggqycUxEaG22VjMYb4kwJ97
 aa7lcXH93B1RYRwzoQd11tBw0LA+u9TBt+SGn2L9zEXC0FHK5/MzQ6eaZqc6D0rivdXzEo6cH
 sTRw2dhlnqgeIwEio7XvoK8w+XjdR/gtggIk4YeePunr1oa8Jb8E8heFGj9bn8+7fVvVkbvR4
 Hx4WufV93rzBrlmDWEIVUqKWAdZXSWUrMCNoV/+3ft0fzTA85oD4Ro/c9V67Omt65rt3xYe8p
 wgtqzgcAE5/QGD/fL2yXZc5vxjWrKFzDPqTvO2Uw4rztA/ICE8XMQvXeX1j9ISBd6o/hAPoUr
 UhlwYBcislRQwxiHE8+nlOUM+egvFVAZn2Py5gXOBt0WZfuUHH0mKG5po3xgw13QszmXDCWQl
 7aDDu//eWuVtwmqD2nV5YROeRUGgilxuNqpriLf3mhx+iQdjXeK1vmMKACb8R7yi3HmtCIP/v
 X1AnUbg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_101833_178712_78433866 
X-CRM114-Status: GOOD (  22.28  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Added support for Digilent Cora Z7 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds support for the Digilent Cora Z7 board to barebox.

This patch includes a PBL initializing the DDR memory and the most important
hardware and barebox proper which is loaded from the mmc but uses network
boot as the default boot source. mmc boot is also working.

This patch only brings support for booting the PS side, loading a bitstream
on the PL side is nit supported.

Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/digilent-cora/Makefile        |   4 +
 arch/arm/boards/digilent-cora/board.c         |  33 ++
 arch/arm/boards/digilent-cora/cora.zynqcfg    |   4 +
 .../env/nv/linux.bootargs.console             |   1 +
 arch/arm/boards/digilent-cora/lowlevel.c      | 296 ++++++++++++++++++
 arch/arm/configs/zynq_defconfig               |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/zynq-cora-linux.dts              |  62 ++++
 arch/arm/dts/zynq-cora.dts                    |  29 ++
 arch/arm/mach-zynq/Kconfig                    |   5 +
 images/Makefile.zynq                          |   6 +
 12 files changed, 443 insertions(+)
 create mode 100644 arch/arm/boards/digilent-cora/Makefile
 create mode 100644 arch/arm/boards/digilent-cora/board.c
 create mode 100644 arch/arm/boards/digilent-cora/cora.zynqcfg
 create mode 100644 arch/arm/boards/digilent-cora/env/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/digilent-cora/lowlevel.c
 create mode 100644 arch/arm/dts/zynq-cora-linux.dts
 create mode 100644 arch/arm/dts/zynq-cora.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 908497cd8b..fcf4d393a1 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -154,6 +154,7 @@ obj-$(CONFIG_MACH_USI_TOPKICK)			+= usi-topkick/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
+obj-$(CONFIG_MACH_CORA_Z7)			+= digilent-cora/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VARISCITE_SOM_MX7)		+= variscite-som-mx7/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
diff --git a/arch/arm/boards/digilent-cora/Makefile b/arch/arm/boards/digilent-cora/Makefile
new file mode 100644
index 0000000000..d653aa1f4b
--- /dev/null
+++ b/arch/arm/boards/digilent-cora/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/digilent-cora/board.c b/arch/arm/boards/digilent-cora/board.c
new file mode 100644
index 0000000000..1e70137352
--- /dev/null
+++ b/arch/arm/boards/digilent-cora/board.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2025 Johannes Roith <johannes@gnu-linux.rocks>
+
+#include <asm/armlinux.h>
+#include <bbu.h>
+#include <common.h>
+#include <environment.h>
+#include <asm/mach-types.h>
+#include <init.h>
+#include <mach/zynq/zynq7000-regs.h>
+#include <linux/sizes.h>
+#include <deep-probe.h>
+
+static int cora_probe(struct device *dev)
+{
+	barebox_set_hostname("cora");
+
+	return bbu_register_std_file_update("SD", BBU_HANDLER_FLAG_DEFAULT,
+				     "/boot/BOOT.bin", filetype_zynq_image);
+}
+
+static const struct of_device_id cora_of_match[] = {
+	{ .compatible = "xlnx,zynq-cora" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(cora_of_match);
+
+static struct driver cora_board_driver = {
+	.name = "board-digilent-cora",
+	.probe = cora_probe,
+	.of_compatible = cora_of_match,
+};
+coredevice_platform_driver(cora_board_driver);
diff --git a/arch/arm/boards/digilent-cora/cora.zynqcfg b/arch/arm/boards/digilent-cora/cora.zynqcfg
new file mode 100644
index 0000000000..8e68bbf618
--- /dev/null
+++ b/arch/arm/boards/digilent-cora/cora.zynqcfg
@@ -0,0 +1,4 @@
+#include <zynq/zynq7000-header-regs.h>
+
+/* stop */
+wm 32 0xFFFFFFFF			0x00000000
diff --git a/arch/arm/boards/digilent-cora/env/nv/linux.bootargs.console b/arch/arm/boards/digilent-cora/env/nv/linux.bootargs.console
new file mode 100644
index 0000000000..903e90f870
--- /dev/null
+++ b/arch/arm/boards/digilent-cora/env/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttyPS1,115200 root=/dev/mmcblk0p2 rootwait
diff --git a/arch/arm/boards/digilent-cora/lowlevel.c b/arch/arm/boards/digilent-cora/lowlevel.c
new file mode 100644
index 0000000000..adaf80a858
--- /dev/null
+++ b/arch/arm/boards/digilent-cora/lowlevel.c
@@ -0,0 +1,296 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2025 Johannes Roith <johannes@gnu-linux.rocks>
+
+#include <common.h>
+#include <io.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/zynq/init.h>
+#include <mach/zynq/zynq7000-regs.h>
+#include <serial/cadence.h>
+
+#define DCI_DONE	(1 << 13)
+#define PLL_ARM_LOCK	(1 << 0)
+#define PLL_DDR_LOCK	(1 << 1)
+#define PLL_IO_LOCK	(1 << 2)
+#define DDR_NORMAL_OP   (1 << 0)
+
+extern char __dtb_z_zynq_cora_start[];
+
+static void cora_z7_ps7_init(void)
+{
+	/*
+	 * Read OCM mapping configuration, if only the upper 64 KByte are
+	 * mapped to the high address, it's very likely that we just got control
+	 * from the BootROM. If the mapping is changed something other than the
+	 * BootROM was running before us. Skip PS7 init to avoid cutting the
+	 * branch we are sitting on in that case.
+	 */
+	if ((readl(0xf8000910) & 0xf) != 0x8)
+		return;
+	/* Do something!!! */
+	/* open sesame */
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
+
+	/* ps7_clock_init_data */
+	writel(0x1F000200, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_CLK_CTRL);
+	writel(0x00203401, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DCI_CLK_CTRL);
+	writel(0x00001401, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
+	writel(0x00000401, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_SDIO_CLK_CTRL);
+	writel(0x00000A03, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DBG_CLK_CTRL);
+	writel(0x00000501, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PCAP_CLK_CTRL);
+	writel(0x00000000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_TOPSW_CLK_CTRL);
+	writel(0x00400500, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA0_CLK_CTRL);
+	writel(0x00100700, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA1_CLK_CTRL);
+	writel(0x00101400, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA2_CLK_CTRL);
+	writel(0x00101400, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA3_CLK_CTRL);
+	/* 6:2:1 mode */
+	writel(0x00000001, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_CLK_621_TRUE);
+	writel(0x015C044D, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_APER_CLK_CTRL);
+
+	/* configure the PLLs */
+	/* ARM PLL */
+	writel(0x0001A008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+	writel(0x001772c0, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CFG);
+	writel(0x0001A010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+	writel(0x0001A011, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+	writel(0x0001A010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+
+	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_ARM_LOCK))
+		;
+	writel(0x0001A000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+
+	/* DDR PLL */
+	/* set to bypass mode */
+	writel(0x0001A018, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	/* assert reset */
+	writel(0x0001A019, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	/* set feedback divs */
+	writel(0x00015019, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	writel(0x001db2c0, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CFG);
+	/* set ddr2xclk and ddr3xclk: 3,2 */
+	writel(0x0C200003, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_CLK_CTRL);
+	/* deassert reset */
+	writel(0x00015018, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	/* wait pll lock */
+	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_DDR_LOCK))
+		;
+	/* remove bypass mode */
+	writel(0x00015008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+
+	/* IO PLL */
+	writel(0x0001a008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+	writel(0x001f42C0, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CFG);
+	writel(0x00014010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+	writel(0x00014011, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+	writel(0x00014010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+
+	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_IO_LOCK))
+		;
+	writel(0x00014000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+
+	/*
+	 * INP_TYPE[1:2] = {off, vref, diff, lvcmos}
+	 * DCI_UPDATE[3], TERM_EN[4]
+	 * DCI_TYPE[5:6] = {off, drive, res, term}
+	 * IBUF_DISABLE_MODE[7] = {ibuf, ibuf_disable}
+	 * TERM_DISABLE_MODE[8] = {always, dynamic}
+	 * OUTPUT_EN[9:10] = {ibuf, res, res, obuf}
+	 * PULLUP_EN[11]
+	 */
+	writel(0x00000600, ZYNQ_DDRIOB_ADDR0);
+	writel(0x00000600, ZYNQ_DDRIOB_ADDR1);
+	writel(0x00000672, ZYNQ_DDRIOB_DATA0);
+	writel(0x00000800, ZYNQ_DDRIOB_DATA1);
+	writel(0x00000674, ZYNQ_DDRIOB_DIFF0);
+	writel(0x00000800, ZYNQ_DDRIOB_DIFF1);
+	writel(0x00000600, ZYNQ_DDRIOB_CLOCK);
+	/*
+	 * Drive_P[0:6], Drive_N[7:13]
+	 * Slew_P[14:18], Slew_N[19:23]
+	 * GTL[24:26], RTerm[27:31]
+	 */
+	writel(0x0018c61C, ZYNQ_DDRIOB_DRIVE_SLEW_ADDR);
+	writel(0x00F9861C, ZYNQ_DDRIOB_DRIVE_SLEW_DATA);
+	writel(0x00F9861C, ZYNQ_DDRIOB_DRIVE_SLEW_DIFF);
+	writel(0x00f9861C, ZYNQ_DDRIOB_DRIVE_SLEW_CLOCK);
+	/*
+	 * VREF_INT_EN[0]
+	 * VREF_SEL[1:4] = {0001=0.6V, 0100=0.75V, 1000=0.9V}
+	 * VREF_EXT_EN[5:6] = {dis/dis, dis/en, en/dis, en/en}
+	 * RES[7:8], REFIO_EN[9]
+	 */
+	/* FIXME: Xilinx sets this to internal, but Zedboard should support
+	   external VRef, too */
+	writel(0x00000220, ZYNQ_DDRIOB_DDR_CTRL);
+	/*
+	 * RESET[0], ENABLE[1]
+	 * NREF_OPT1[6:7], NREF_OPT2[8:10], NREF_OPT4[11:13]
+	 * PREF_OPT1[14:15], PREF_OPT2[17:19], UPDATE_CONTROL[20]
+	 */
+	writel(0x00000021, ZYNQ_DDRIOB_DCI_CTRL);
+	writel(0x00000020, ZYNQ_DDRIOB_DCI_CTRL);
+	writel(0x00000823, ZYNQ_DDRIOB_DCI_CTRL);
+
+	while (!(readl(ZYNQ_DDRIOB_DCI_STATUS) & DCI_DONE))
+		;
+
+	writel(0x00000000, 0xF8007000);
+
+	/* ps7_ddr_init_data */
+	writel(0x00000084, 0XF8006000);
+	writel(0x0000107f, 0XF8006004);
+	writel(0x03c0780f, 0XF8006008);
+	writel(0x02001001, 0XF800600C);
+	writel(0x00014001, 0XF8006010);
+	writel(0x0004279a, 0XF8006014);
+	writel(0x44e354d2, 0XF8006018);
+	writel(0x720238e5, 0XF800601C);
+	writel(0x270872d0, 0XF8006020);
+	writel(0x00000000, 0XF8006024);
+	writel(0x00002007, 0XF8006028);
+	writel(0x00000008, 0XF800602C);
+	writel(0x00040930, 0XF8006030);
+	writel(0x00011674, 0XF8006034);
+	writel(0x00000000, 0XF8006038);
+	writel(0x00000666, 0XF800603C);
+	writel(0xffff0000, 0XF8006040);
+	writel(0x0f555555, 0XF8006044);
+	writel(0x0003c008, 0XF8006048);
+	writel(0x77010800, 0XF8006050);
+	writel(0x00000000, 0XF8006058);
+	writel(0x00005003, 0XF800605C);
+	writel(0x0000003e, 0XF8006060);
+	writel(0x00020000, 0XF8006064);
+	writel(0x00284141, 0XF8006068);
+	writel(0x00001610, 0XF800606C);
+	writel(0x00466111, 0XF8006078);
+	writel(0x00032222, 0XF800607C);
+	writel(0x10200802, 0XF80060A4);
+	writel(0x0670c845, 0XF80060A8);
+	writel(0x000001fe, 0XF80060AC);
+	writel(0x1cffffff, 0XF80060B0);
+	writel(0x00000200, 0XF80060B4);
+	writel(0x00200066, 0XF80060B8);
+	writel(0x00000000, 0XF80060C4);
+	writel(0x00000000, 0XF80060C8);
+	writel(0x00000000, 0XF80060DC);
+	writel(0x00000000, 0XF80060F0);
+	writel(0x00000008, 0XF80060F4);
+	writel(0x00000000, 0XF8006114);
+	writel(0x40000001, 0XF8006118);
+	writel(0x40000001, 0XF800611C);
+	writel(0x40000000, 0XF8006120);
+	writel(0x40000000, 0XF8006124);
+	writel(0x00026c05, 0XF800612C);
+	writel(0x00026007, 0XF8006130);
+	writel(0x0001d800, 0XF8006134);
+	writel(0x0001e000, 0XF8006138);
+	writel(0x00000035, 0XF8006140);
+	writel(0x00000035, 0XF8006144);
+	writel(0x00000035, 0XF8006148);
+	writel(0x00000035, 0XF800614C);
+	writel(0x00000085, 0XF8006154);
+	writel(0x00000087, 0XF8006158);
+	writel(0x0000007f, 0XF800615C);
+	writel(0x0000007c, 0XF8006160);
+	writel(0x000000f0, 0XF8006168);
+	writel(0x000000ed, 0XF800616C);
+	writel(0x000000cb, 0XF8006170);
+	writel(0x000000cd, 0XF8006174);
+	writel(0x000000c5, 0XF800617C);
+	writel(0x000000c7, 0XF8006180);
+	writel(0x000000bf, 0XF8006184);
+	writel(0x000000bc, 0XF8006188);
+	writel(0x00040080, 0XF8006190);
+	writel(0x0001fc82, 0XF8006194);
+	writel(0x00000000, 0XF8006204);
+	writel(0x000003ff, 0XF8006208);
+	writel(0x000003ff, 0XF800620C);
+	writel(0x000003ff, 0XF8006210);
+	writel(0x000003ff, 0XF8006214);
+	writel(0x000003ff, 0XF8006218);
+	writel(0x000003ff, 0XF800621C);
+	writel(0x000003ff, 0XF8006220);
+	writel(0x000003ff, 0XF8006224);
+	writel(0x00000000, 0XF80062A8);
+	writel(0x00000000, 0XF80062AC);
+	writel(0x00005125, 0XF80062B0);
+	writel(0x000012a6, 0XF80062B4);
+	writel(0x00000085, 0XF8006000);
+
+	/* Wait for DDR init to finish */
+	while ((readl(0xF8006054) &  0x00000007U) != DDR_NORMAL_OP)
+		;
+
+	/* pinmux: UART0 RxD: MIO_PIN_14, TxD: MIO_PIN_15 */
+	writel(0x000006E1, ZYNQ_MIO_BASE + 0x38);
+	writel(0x000006E0, ZYNQ_MIO_BASE + 0x3C);
+
+	/* set UART Clock to 50 MHz */
+	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
+
+	/* GEM0 */
+	writel(0x00000001, 0xf8000138);
+	writel(0x00100801, 0xf8000140);
+	writel(0x00000302, 0xf8000740);
+	writel(0x00000302, 0xf8000744);
+	writel(0x00000302, 0xf8000748);
+	writel(0x00000302, 0xf800074C);
+	writel(0x00000302, 0xf8000750);
+	writel(0x00000302, 0xf8000754);
+	writel(0x00001303, 0xf8000758);
+	writel(0x00001303, 0xf800075C);
+	writel(0x00001303, 0xf8000760);
+	writel(0x00001303, 0xf8000764);
+	writel(0x00001303, 0xf8000768);
+	writel(0x00001303, 0xf800076C);
+	writel(0x00000280, 0xf80007D0);
+	writel(0x00000280, 0xf80007D4);
+
+	writel(0x00000001, 0xf8000B00);
+
+	/* Set SD Detect and Write Protect Pin to 47 */
+	writel(0x002f002f, 0xF8000830);
+
+	/* FPGA Clock Control */
+	writel(0x00400500, 0xf8000170);
+	writel(0x00101400, 0xf8000180);
+	writel(0x00101400, 0xf8000190);
+	writel(0x00101400, 0xf80001a0);
+
+	/* PCAP Clock Control */
+	writel(0x00000501, 0xf8000168);
+
+	/* lock up. secure, secure */
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+}
+
+static void cora_z7_pbl_console_init(void)
+{
+	cadence_uart_init((void *)ZYNQ_UART0_BASE_ADDR);
+	pbl_set_putc(cadence_uart_putc, (void *)ZYNQ_UART0_BASE_ADDR);
+
+	pr_debug("\nDigilent Cora Z7 PBL\n");
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_digilent_cora, 0xfffff000, r0, r1, r2)
+{
+	/* MIO_07 in GPIO Mode 3.3V VIO, can be uncomented because it is the default value */
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
+	writel(0x00000600, 0xF800071C);
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+
+	zynq_cpu_lowlevel_init();
+
+	cora_z7_ps7_init();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	if (IS_ENABLED(CONFIG_PBL_CONSOLE))
+		cora_z7_pbl_console_init();
+
+	barebox_arm_entry(0, SZ_512M, __dtb_z_zynq_cora_start);
+}
diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 1a1378d3e0..71bc5eaba7 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_ZYNQ=y
 CONFIG_MACH_ZEDBOARD=y
+CONFIG_MACH_CORA_Z7=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 3044c9bf12..8ba6385bd6 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -240,6 +240,7 @@ lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-ls1046a-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
+lwl-$(CONFIG_MACH_CORA_Z7) += zynq-cora.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
 lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcustomboard.dtb.o
 lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
diff --git a/arch/arm/dts/zynq-cora-linux.dts b/arch/arm/dts/zynq-cora-linux.dts
new file mode 100644
index 0000000000..a75837011f
--- /dev/null
+++ b/arch/arm/dts/zynq-cora-linux.dts
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *  Copyright (C) 2011 - 2014 Xilinx
+ *  Copyright (C) 2012 National Instruments Corp.
+ */
+/dts-v1/;
+#include <arm/xilinx/zynq-7000.dtsi>
+
+/ {
+	model = "Digilent Cora Z7";
+	compatible = "digilent,zynq-cora", "xlnx,zynq-cora", "xlnx,zynq-7000";
+
+	aliases {
+		ethernet0 = &gem0;
+		serial0 = &uart0;
+		mmc0 = &sdhci0;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x20000000>;
+	};
+
+	chosen {
+		bootargs = "";
+		stdout-path = "serial0:115200n8";
+	};
+
+	usb_phy0: phy0 {
+		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
+	};
+};
+
+&clkc {
+	ps-clk-frequency = <50000000>;
+};
+
+&gem0 {
+	status = "okay";
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethernet_phy>;
+
+	ethernet_phy: ethernet-phy@0 {
+		reg = <0>;
+		device_type = "ethernet-phy";
+	};
+};
+
+&sdhci0 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	dr_mode = "host";
+	usb-phy = <&usb_phy0>;
+};
diff --git a/arch/arm/dts/zynq-cora.dts b/arch/arm/dts/zynq-cora.dts
new file mode 100644
index 0000000000..4375e840a6
--- /dev/null
+++ b/arch/arm/dts/zynq-cora.dts
@@ -0,0 +1,29 @@
+#include "zynq-cora-linux.dts"
+#include "zynq-7000.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart0;
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdhci0, "partname:0";
+			file-path = "barebox.env";
+		};
+	};
+};
+
+&clkc {
+	ps-clk-frequency = <50000000>;
+};
+
+&sdhci0 {
+	bootph-all;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&uart0 {
+	bootph-all;
+	status = "okay";
+};
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 1d6218d407..936e41f1fc 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -5,6 +5,7 @@ if ARCH_ZYNQ
 config ZYNQ_DEBUG_LL_UART_BASE
 	hex
 	default 0xe0001000 if MACH_ZEDBOARD
+	default 0xe0000000 if MACH_CORA_Z7
 
 config ARCH_ZYNQ7000
 	bool
@@ -22,6 +23,10 @@ config MACH_ZEDBOARD
 	bool "Avnet Zynq-7000 ZedBoard"
 	select ARCH_ZYNQ7000
 
+config MACH_CORA_Z7
+	bool "Digilent Cora Z7"
+	select ARCH_ZYNQ7000
+
 endmenu
 
 endif
diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index ac9ce8157b..b2a584bb15 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -22,3 +22,7 @@ $(obj)/%.zynqimg: $(obj)/% FORCE
 CFG_start_avnet_zedboard.pblb.zynqimg = $(board)/avnet-zedboard/zedboard.zynqcfg
 FILE_barebox-avnet-zedboard.img = start_avnet_zedboard.pblb.zynqimg
 image-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard.img
+
+CFG_start_digilent_cora.pblb.zynqimg = $(board)/digilent-cora/cora.zynqcfg
+FILE_barebox-digilent-cora.img = start_digilent_cora.pblb.zynqimg
+image-$(CONFIG_MACH_CORA_Z7) += barebox-digilent-cora.img
-- 
2.34.1



