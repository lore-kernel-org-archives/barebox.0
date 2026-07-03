Delivery-date: Fri, 03 Jul 2026 22:58:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfkyD-00CnqV-1M
	for lore@lore.pengutronix.de;
	Fri, 03 Jul 2026 22:58:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 966492026BF
	for <lore@pengutronix.de>; Fri, 03 Jul 2026 22:58:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y8HWCdd5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cTd25Ghxbm7DO87IznHtXbnJKqa7Qaz673903MUq3ok=; b=y8HWCdd5u+WjakW2iGol/dSm4+
	T4uLc9YGC2VQZkijGRFeeHEMXrqnJgWkacAivB63CMH1qpEUNbyVjf2Jdroj9HeAVsLWKPQ8QPJu0
	ZAc1685R95YSDPR7NXZUxqiHvg2QgAw01MQzKsN3+KRSkw+Jx9mJ+zo8Vwp47EXHemYdHfNyFVpqW
	z2kpqO3o7RtsT3Bk3ps+x8GuaLiKzmJ0wlFvf8x04F98wGAHdy+huJM3RVR2UkayUmzaqGCnsNzz3
	r2WFw4yOoylMuzdgDsTt5NGEPJl3Zx3RC+5Egqfwk7ed5ljqFdHMCZ+LezX57l+A9thim39mHVoLF
	CEp3yhGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfkgF-00000007ss9-1ep8;
	Fri, 03 Jul 2026 20:40:11 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfkgA-00000007sr1-45la
	for barebox@lists.infradead.org;
	Fri, 03 Jul 2026 20:40:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5363D2026B0
	for <barebox@lists.infradead.org>; Fri, 03 Jul 2026 22:40:02 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wfkg6-0062NL-0m
	for barebox@lists.infradead.org;
	Fri, 03 Jul 2026 22:40:02 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH] ARM: boards: add Gira NCP
Date: Fri,  3 Jul 2026 22:40:02 +0200
Message-ID: <20260703204002.2572586-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_134007_335310_639282B1 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This adds basic support for the Gira NCP panel with the following
    supported features: - serial console - SD card - eMMC with HS200 - ethernet
    - watchdog via PMIC Signed-off-by: Lucas Stach <l.stach@pengutronix.de> ---
    arch/arm/boards/Makefile | 1 + arch/arm/boards/gira-ncp/Makefile | 4 + arch/arm/boards/gira-ncp/board.c
    | 39 ++ .../gira-ncp/flash-header-gira-n [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 966492026BF
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.31:email,0.0.0.1:email];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 7ta5b5zeuqor4njfxr8igtacfiy68tur

This adds basic support for the Gira NCP panel with
the following supported features:
- serial console
- SD card
- eMMC with HS200
- ethernet
- watchdog via PMIC

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/gira-ncp/Makefile             |   4 +
 arch/arm/boards/gira-ncp/board.c              |  39 ++
 .../gira-ncp/flash-header-gira-ncp.imxcfg     |   9 +
 arch/arm/boards/gira-ncp/lowlevel.c           |  81 +++
 .../gira-ncp/nt5ad512m16c4-2gb-timing.c       | 540 ++++++++++++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx8mm-gira-ncp.dts              | 267 +++++++++
 arch/arm/mach-imx/Kconfig                     |   9 +
 images/Makefile.imx                           |   2 +
 10 files changed, 953 insertions(+)
 create mode 100644 arch/arm/boards/gira-ncp/Makefile
 create mode 100644 arch/arm/boards/gira-ncp/board.c
 create mode 100644 arch/arm/boards/gira-ncp/flash-header-gira-ncp.imxcfg
 create mode 100644 arch/arm/boards/gira-ncp/lowlevel.c
 create mode 100644 arch/arm/boards/gira-ncp/nt5ad512m16c4-2gb-timing.c
 create mode 100644 arch/arm/dts/imx8mm-gira-ncp.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f08983f4d23f..fbcf14748ad7 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -45,6 +45,7 @@ obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)	+= freescale-mx7-sabresd/
 obj-$(CONFIG_MACH_MEERKAT96)			+= meerkat96/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
+obj-$(CONFIG_MACH_GIRA_NCP)			+= gira-ncp/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
 obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
diff --git a/arch/arm/boards/gira-ncp/Makefile b/arch/arm/boards/gira-ncp/Makefile
new file mode 100644
index 000000000000..7ea6cee6a08b
--- /dev/null
+++ b/arch/arm/boards/gira-ncp/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o nt5ad512m16c4-2gb-timing.o
+obj-y += board.o
diff --git a/arch/arm/boards/gira-ncp/board.c b/arch/arm/boards/gira-ncp/board.c
new file mode 100644
index 000000000000..6e369fe60487
--- /dev/null
+++ b/arch/arm/boards/gira-ncp/board.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <mach/imx/bbu.h>
+
+static int gira_ncp_probe(struct device *dev)
+{
+	int emmc_bbu_flag = 0;
+	int sd_bbu_flag = 0;
+
+	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 1) {
+		of_device_enable_path("/chosen/environment-sd");
+		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	} else {
+		of_device_enable_path("/chosen/environment-emmc");
+		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
+
+	return 0;
+}
+
+static const struct of_device_id gira_ncp_of_match[] = {
+	{ .compatible = "gira,ncp" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(gira_ncp_of_match);
+
+static struct driver gira_ncp_board_driver = {
+	.name = "board-gira-ncp",
+	.probe = gira_ncp_probe,
+	.of_compatible = DRV_OF_COMPAT(gira_ncp_of_match),
+};
+coredevice_platform_driver(gira_ncp_board_driver);
diff --git a/arch/arm/boards/gira-ncp/flash-header-gira-ncp.imxcfg b/arch/arm/boards/gira-ncp/flash-header-gira-ncp.imxcfg
new file mode 100644
index 000000000000..8aff991618ec
--- /dev/null
+++ b/arch/arm/boards/gira-ncp/flash-header-gira-ncp.imxcfg
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+soc imx8mm
+
+loadaddr 0x007e1000
+max_load_size 0x3f000
+ivtofs 0x400
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/gira-ncp/lowlevel.c b/arch/arm/boards/gira-ncp/lowlevel.c
new file mode 100644
index 000000000000..81b2fc0eb4fb
--- /dev/null
+++ b/arch/arm/boards/gira-ncp/lowlevel.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/iomux-mx8mm.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/xload.h>
+#include <soc/imx8m/ddr.h>
+
+#define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
+
+static void setup_uart(void)
+{
+	void __iomem *uart = IOMEM(MX8M_UART1_BASE_ADDR);
+
+	imx8m_early_setup_uart_clock();
+
+	imx8mm_setup_pad(IMX8MM_PAD_UART1_TXD_UART1_TX | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+/*
+ * Power-on execution flow of start_gira_ncp() might not be
+ * obvious for a very first read, so here's, hopefully helpful,
+ * summary:
+ *
+ * 1. MaskROM uploads PBL into OCRAM and that's where this function is
+ *    executed for the first time. At entry the exception level is EL3.
+ *
+ * 2. DDR is initialized and the image is loaded from storage into DRAM. The PBL
+ *    part is copied from OCRAM to the TF-A return address in DRAM.
+ *
+ * 3. TF-A is executed and exits into the PBL code in DRAM. TF-A has taken us
+ *    from EL3 to EL2.
+ *
+ * 4. Standard barebox boot flow continues
+ */
+extern struct dram_timing_info nt5ad512m16c4_2gb_timing;
+extern char __dtb_z_imx8mm_gira_ncp_start[];
+
+static __noreturn noinline void gira_ncp_start(void)
+{
+	setup_uart();
+
+	/*
+	 * If we are in EL3 we are running for the first time and need to
+	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
+	 * to DRAM in EL2.
+	 */
+	if (current_el() == 3) {
+		imx8mm_early_clock_init();
+		imx8mm_ddr_init(&nt5ad512m16c4_2gb_timing, DRAM_TYPE_DDR4);
+		imx8mm_load_and_start_image_via_tfa();
+	}
+
+	/*
+	 * Standard entry we hit once we initialized both DDR and ATF. I2C pad
+	 * and clock setup already done during power_init_board().
+	 */
+	imx8mm_barebox_entry(__dtb_z_imx8mm_gira_ncp_start);
+}
+
+ENTRY_FUNCTION(start_gira_ncp, r0, r1, r2)
+{
+	imx8mm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	gira_ncp_start();
+}
diff --git a/arch/arm/boards/gira-ncp/nt5ad512m16c4-2gb-timing.c b/arch/arm/boards/gira-ncp/nt5ad512m16c4-2gb-timing.c
new file mode 100644
index 000000000000..725c78bd6d17
--- /dev/null
+++ b/arch/arm/boards/gira-ncp/nt5ad512m16c4-2gb-timing.c
@@ -0,0 +1,540 @@
+/*
+ * Copyright 2019 NXP
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ *
+ * Generated code from MX8M_DDR_tool
+ */
+
+#include <common.h>
+#include <soc/imx8m/ddr.h>
+
+static struct dram_cfg_param ddr_ddrc_cfg[] = {
+	/** Initialize DDRC registers **/
+	{ 0x3d400304, 0x1 },
+	{ 0x3d400030, 0x1 },
+	{ 0x3d400000, 0x81040010 },
+	{ 0x3d400030, 0xaa },
+	{ 0x3d400034, 0x221306 },
+	{ 0x3d400050, 0x210070 },
+	{ 0x3d400054, 0x10008 },
+	{ 0x3d400060, 0x0 },
+	{ 0x3d400064, 0x9200d2 },
+	{ 0x3d4000c0, 0x0 },
+	{ 0x3d4000c4, 0x1000 },
+	{ 0x3d4000d0, 0xc0030126 },
+	{ 0x3d4000d4, 0x770000 },
+	{ 0x3d4000dc, 0x8640105 },
+	{ 0x3d4000e0, 0x180200 },
+	{ 0x3d4000e4, 0x110000 },
+	{ 0x3d4000e8, 0x2000600 },
+	{ 0x3d4000ec, 0x814 },
+	{ 0x3d4000f0, 0x20 },
+	{ 0x3d4000f4, 0xec7 },
+	{ 0x3d400100, 0x11122914 },
+	{ 0x3d400104, 0x4051c },
+	{ 0x3d400108, 0x609050d },
+	{ 0x3d40010c, 0x400c },
+	{ 0x3d400110, 0x9030409 },
+	{ 0x3d400114, 0x6060403 },
+	{ 0x3d40011c, 0x606 },
+	{ 0x3d400120, 0x5050d08 },
+	{ 0x3d400124, 0x2040a },
+	{ 0x3d40012c, 0x1409010e },
+	{ 0x3d400130, 0x8 },
+	{ 0x3d40013c, 0x0 },
+	{ 0x3d400180, 0x1000040 },
+	{ 0x3d400184, 0x493e },
+	{ 0x3d400190, 0x38c8207 },
+	{ 0x3d400194, 0x2020303 },
+	{ 0x3d400198, 0x7f04011 },
+	{ 0x3d40019c, 0xb0 },
+	{ 0x3d4001a0, 0xe0400018 },
+	{ 0x3d4001a4, 0x48005a },
+	{ 0x3d4001a8, 0x80000000 },
+	{ 0x3d4001b0, 0x1 },
+	{ 0x3d4001b4, 0xc07 },
+	{ 0x3d4001b8, 0x4 },
+	{ 0x3d4001c0, 0x1 },
+	{ 0x3d4001c4, 0x0 },
+	{ 0x3d400200, 0x3f1f },
+	{ 0x3d400204, 0x3f0909 },
+	{ 0x3d400208, 0x700 },
+	{ 0x3d40020c, 0x0 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400214, 0x7070707 },
+	{ 0x3d400218, 0x7070707 },
+	{ 0x3d40021c, 0xf0f },
+	{ 0x3d400220, 0x3f01 },
+	{ 0x3d400240, 0x6000614 },
+	{ 0x3d400244, 0x1323 },
+	{ 0x3d400400, 0x100 },
+	{ 0x3d402050, 0x210070 },
+	{ 0x3d402064, 0x510075 },
+	{ 0x3d4020dc, 0x40105 },
+	{ 0x3d4020e0, 0x0 },
+	{ 0x3d4020e8, 0x2000600 },
+	{ 0x3d4020ec, 0x414 },
+	{ 0x3d402100, 0xc0b160b },
+	{ 0x3d402104, 0x30310 },
+	{ 0x3d402108, 0x505030a },
+	{ 0x3d40210c, 0x400c },
+	{ 0x3d402110, 0x5030306 },
+	{ 0x3d402114, 0x4040302 },
+	{ 0x3d40211c, 0x404 },
+	{ 0x3d402120, 0x3030d05 },
+	{ 0x3d402124, 0x20208 },
+	{ 0x3d40212c, 0x1106010e },
+	{ 0x3d402130, 0x8 },
+	{ 0x3d40213c, 0x0 },
+	{ 0x3d402180, 0x1000040 },
+	{ 0x3d402190, 0x3858204 },
+	{ 0x3d402194, 0x2020303 },
+	{ 0x3d4021b4, 0x504 },
+	{ 0x3d4021b8, 0x4 },
+	{ 0x3d402240, 0x6000604 },
+	{ 0x3d4020f4, 0xec7 },
+};
+
+/* PHY Initialize Configuration */
+static struct dram_cfg_param ddr_ddrphy_cfg[] = {
+	{ 0x1005f, 0x2fd },
+	{ 0x1015f, 0x2fd },
+	{ 0x1105f, 0x2fd },
+	{ 0x1115f, 0x2fd },
+	{ 0x1205f, 0x2fd },
+	{ 0x1215f, 0x2fd },
+	{ 0x1305f, 0x2fd },
+	{ 0x1315f, 0x2fd },
+	{ 0x11005f, 0x2fd },
+	{ 0x11015f, 0x2fd },
+	{ 0x11105f, 0x2fd },
+	{ 0x11115f, 0x2fd },
+	{ 0x11205f, 0x2fd },
+	{ 0x11215f, 0x2fd },
+	{ 0x11305f, 0x2fd },
+	{ 0x11315f, 0x2fd },
+	{ 0x55, 0x355 },
+	{ 0x1055, 0x355 },
+	{ 0x2055, 0x355 },
+	{ 0x3055, 0x355 },
+	{ 0x4055, 0x55 },
+	{ 0x5055, 0x55 },
+	{ 0x6055, 0x355 },
+	{ 0x7055, 0x355 },
+	{ 0x8055, 0x355 },
+	{ 0x9055, 0x355 },
+	{ 0x200c5, 0xa },
+	{ 0x1200c5, 0xb },
+	{ 0x2002e, 0x2 },
+	{ 0x12002e, 0x1 },
+	{ 0x20024, 0x8 },
+	{ 0x2003a, 0x2 },
+	{ 0x120024, 0x8 },
+	{ 0x2003a, 0x2 },
+	{ 0x20056, 0x6 },
+	{ 0x120056, 0xa },
+	{ 0x1004d, 0x1a },
+	{ 0x1014d, 0x1a },
+	{ 0x1104d, 0x1a },
+	{ 0x1114d, 0x1a },
+	{ 0x1204d, 0x1a },
+	{ 0x1214d, 0x1a },
+	{ 0x1304d, 0x1a },
+	{ 0x1314d, 0x1a },
+	{ 0x11004d, 0x1a },
+	{ 0x11014d, 0x1a },
+	{ 0x11104d, 0x1a },
+	{ 0x11114d, 0x1a },
+	{ 0x11204d, 0x1a },
+	{ 0x11214d, 0x1a },
+	{ 0x11304d, 0x1a },
+	{ 0x11314d, 0x1a },
+	{ 0x10049, 0xe38 },
+	{ 0x10149, 0xe38 },
+	{ 0x11049, 0xe38 },
+	{ 0x11149, 0xe38 },
+	{ 0x12049, 0xe38 },
+	{ 0x12149, 0xe38 },
+	{ 0x13049, 0xe38 },
+	{ 0x13149, 0xe38 },
+	{ 0x110049, 0xe38 },
+	{ 0x110149, 0xe38 },
+	{ 0x111049, 0xe38 },
+	{ 0x111149, 0xe38 },
+	{ 0x112049, 0xe38 },
+	{ 0x112149, 0xe38 },
+	{ 0x113049, 0xe38 },
+	{ 0x113149, 0xe38 },
+	{ 0x43, 0x63 },
+	{ 0x1043, 0x63 },
+	{ 0x2043, 0x63 },
+	{ 0x3043, 0x63 },
+	{ 0x4043, 0x63 },
+	{ 0x5043, 0x63 },
+	{ 0x6043, 0x63 },
+	{ 0x7043, 0x63 },
+	{ 0x8043, 0x63 },
+	{ 0x9043, 0x63 },
+	{ 0x20018, 0x5 },
+	{ 0x20075, 0x2 },
+	{ 0x20050, 0x0 },
+	{ 0x20008, 0x258 },
+	{ 0x120008, 0x14e },
+	{ 0x20088, 0x9 },
+	{ 0x200b2, 0x268 },
+	{ 0x10043, 0x5b1 },
+	{ 0x10143, 0x5b1 },
+	{ 0x11043, 0x5b1 },
+	{ 0x11143, 0x5b1 },
+	{ 0x12043, 0x5b1 },
+	{ 0x12143, 0x5b1 },
+	{ 0x13043, 0x5b1 },
+	{ 0x13143, 0x5b1 },
+	{ 0x1200b2, 0x268 },
+	{ 0x110043, 0x5b1 },
+	{ 0x110143, 0x5b1 },
+	{ 0x111043, 0x5b1 },
+	{ 0x111143, 0x5b1 },
+	{ 0x112043, 0x5b1 },
+	{ 0x112143, 0x5b1 },
+	{ 0x113043, 0x5b1 },
+	{ 0x113143, 0x5b1 },
+	{ 0x200fa, 0x1 },
+	{ 0x1200fa, 0x1 },
+	{ 0x20019, 0x5 },
+	{ 0x120019, 0x5 },
+	{ 0x200f0, 0x5555 },
+	{ 0x200f1, 0x5555 },
+	{ 0x200f2, 0x5555 },
+	{ 0x200f3, 0x5555 },
+	{ 0x200f4, 0x5555 },
+	{ 0x200f5, 0x5555 },
+	{ 0x200f6, 0x5555 },
+	{ 0x200f7, 0xf000 },
+	{ 0x20025, 0x0 },
+	{ 0x2002d, 0x0 },
+	{ 0x12002d, 0x0 },
+	{ 0x200c7, 0x21 },
+	{ 0x1200c7, 0x21 },
+	{ 0x200ca, 0x24 },
+	{ 0x1200ca, 0x24 },
+};
+
+/* P0 message block paremeter for training firmware */
+static struct dram_cfg_param ddr_fsp0_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0x960 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x2830 },
+	{ 0x54006, 0x25e },
+	{ 0x54007, 0x2000 },
+	{ 0x54008, 0x101 },
+	{ 0x5400b, 0x31f },
+	{ 0x5400c, 0xc8 },
+	{ 0x54012, 0x1 },
+	{ 0x5402f, 0x864 },
+	{ 0x54030, 0x105 },
+	{ 0x54031, 0x18 },
+	{ 0x54032, 0x200 },
+	{ 0x54033, 0x200 },
+	{ 0x54034, 0x600 },
+	{ 0x54035, 0x814 },
+	{ 0x54036, 0x101 },
+	{ 0x5403f, 0x1323 },
+	{ 0x541fc, 0x100 },
+	{ 0xd0000, 0x1 },
+};
+
+
+/* P1 message block paremeter for training firmware */
+static struct dram_cfg_param ddr_fsp1_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54002, 0x1 },
+	{ 0x54003, 0x538 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x2830 },
+	{ 0x54006, 0x25e },
+	{ 0x54007, 0x2000 },
+	{ 0x54008, 0x101 },
+	{ 0x5400b, 0x21f },
+	{ 0x5400c, 0xc8 },
+	{ 0x54012, 0x1 },
+	{ 0x5402f, 0x4 },
+	{ 0x54030, 0x105 },
+	{ 0x54033, 0x200 },
+	{ 0x54034, 0x600 },
+	{ 0x54035, 0x414 },
+	{ 0x54036, 0x101 },
+	{ 0x5403f, 0x1323 },
+	{ 0x541fc, 0x100 },
+	{ 0xd0000, 0x1 },
+};
+
+
+/* P0 2D message block paremeter for training firmware */
+static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0x960 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x2830 },
+	{ 0x54006, 0x25e },
+	{ 0x54007, 0x2000 },
+	{ 0x54008, 0x101 },
+	{ 0x5400b, 0x61 },
+	{ 0x5400c, 0xc8 },
+	{ 0x5400d, 0x100 },
+	{ 0x5400e, 0x1f7f },
+	{ 0x54012, 0x1 },
+	{ 0x5402f, 0x864 },
+	{ 0x54030, 0x105 },
+	{ 0x54031, 0x18 },
+	{ 0x54032, 0x200 },
+	{ 0x54033, 0x200 },
+	{ 0x54034, 0x600 },
+	{ 0x54035, 0x814 },
+	{ 0x54036, 0x101 },
+	{ 0x5403f, 0x1323 },
+	{ 0x541fc, 0x100 },
+	{ 0xd0000, 0x1 },
+};
+
+/* DRAM PHY init engine image */
+static struct dram_cfg_param ddr_phy_pie[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x90000, 0x10 },
+	{ 0x90001, 0x400 },
+	{ 0x90002, 0x10e },
+	{ 0x90003, 0x0 },
+	{ 0x90004, 0x0 },
+	{ 0x90005, 0x8 },
+	{ 0x90029, 0xb },
+	{ 0x9002a, 0x480 },
+	{ 0x9002b, 0x109 },
+	{ 0x9002c, 0x8 },
+	{ 0x9002d, 0x448 },
+	{ 0x9002e, 0x139 },
+	{ 0x9002f, 0x8 },
+	{ 0x90030, 0x478 },
+	{ 0x90031, 0x109 },
+	{ 0x90032, 0x2 },
+	{ 0x90033, 0x10 },
+	{ 0x90034, 0x139 },
+	{ 0x90035, 0xf },
+	{ 0x90036, 0x7c0 },
+	{ 0x90037, 0x139 },
+	{ 0x90038, 0x44 },
+	{ 0x90039, 0x630 },
+	{ 0x9003a, 0x159 },
+	{ 0x9003b, 0x14f },
+	{ 0x9003c, 0x630 },
+	{ 0x9003d, 0x159 },
+	{ 0x9003e, 0x47 },
+	{ 0x9003f, 0x630 },
+	{ 0x90040, 0x149 },
+	{ 0x90041, 0x4f },
+	{ 0x90042, 0x630 },
+	{ 0x90043, 0x179 },
+	{ 0x90044, 0x8 },
+	{ 0x90045, 0xe0 },
+	{ 0x90046, 0x109 },
+	{ 0x90047, 0x0 },
+	{ 0x90048, 0x7c8 },
+	{ 0x90049, 0x109 },
+	{ 0x9004a, 0x0 },
+	{ 0x9004b, 0x1 },
+	{ 0x9004c, 0x8 },
+	{ 0x9004d, 0x0 },
+	{ 0x9004e, 0x45a },
+	{ 0x9004f, 0x9 },
+	{ 0x90050, 0x0 },
+	{ 0x90051, 0x448 },
+	{ 0x90052, 0x109 },
+	{ 0x90053, 0x40 },
+	{ 0x90054, 0x630 },
+	{ 0x90055, 0x179 },
+	{ 0x90056, 0x1 },
+	{ 0x90057, 0x618 },
+	{ 0x90058, 0x109 },
+	{ 0x90059, 0x40c0 },
+	{ 0x9005a, 0x630 },
+	{ 0x9005b, 0x149 },
+	{ 0x9005c, 0x8 },
+	{ 0x9005d, 0x4 },
+	{ 0x9005e, 0x48 },
+	{ 0x9005f, 0x4040 },
+	{ 0x90060, 0x630 },
+	{ 0x90061, 0x149 },
+	{ 0x90062, 0x0 },
+	{ 0x90063, 0x4 },
+	{ 0x90064, 0x48 },
+	{ 0x90065, 0x40 },
+	{ 0x90066, 0x630 },
+	{ 0x90067, 0x149 },
+	{ 0x90068, 0x10 },
+	{ 0x90069, 0x4 },
+	{ 0x9006a, 0x18 },
+	{ 0x9006b, 0x0 },
+	{ 0x9006c, 0x4 },
+	{ 0x9006d, 0x78 },
+	{ 0x9006e, 0x549 },
+	{ 0x9006f, 0x630 },
+	{ 0x90070, 0x159 },
+	{ 0x90071, 0xd49 },
+	{ 0x90072, 0x630 },
+	{ 0x90073, 0x159 },
+	{ 0x90074, 0x94a },
+	{ 0x90075, 0x630 },
+	{ 0x90076, 0x159 },
+	{ 0x90077, 0x441 },
+	{ 0x90078, 0x630 },
+	{ 0x90079, 0x149 },
+	{ 0x9007a, 0x42 },
+	{ 0x9007b, 0x630 },
+	{ 0x9007c, 0x149 },
+	{ 0x9007d, 0x1 },
+	{ 0x9007e, 0x630 },
+	{ 0x9007f, 0x149 },
+	{ 0x90080, 0x0 },
+	{ 0x90081, 0xe0 },
+	{ 0x90082, 0x109 },
+	{ 0x90083, 0xa },
+	{ 0x90084, 0x10 },
+	{ 0x90085, 0x109 },
+	{ 0x90086, 0x9 },
+	{ 0x90087, 0x3c0 },
+	{ 0x90088, 0x149 },
+	{ 0x90089, 0x9 },
+	{ 0x9008a, 0x3c0 },
+	{ 0x9008b, 0x159 },
+	{ 0x9008c, 0x18 },
+	{ 0x9008d, 0x10 },
+	{ 0x9008e, 0x109 },
+	{ 0x9008f, 0x0 },
+	{ 0x90090, 0x3c0 },
+	{ 0x90091, 0x109 },
+	{ 0x90092, 0x18 },
+	{ 0x90093, 0x4 },
+	{ 0x90094, 0x48 },
+	{ 0x90095, 0x18 },
+	{ 0x90096, 0x4 },
+	{ 0x90097, 0x58 },
+	{ 0x90098, 0xa },
+	{ 0x90099, 0x10 },
+	{ 0x9009a, 0x109 },
+	{ 0x9009b, 0x2 },
+	{ 0x9009c, 0x10 },
+	{ 0x9009d, 0x109 },
+	{ 0x9009e, 0x7 },
+	{ 0x9009f, 0x7c0 },
+	{ 0x900a0, 0x109 },
+	{ 0x900a1, 0x10 },
+	{ 0x900a2, 0x10 },
+	{ 0x900a3, 0x109 },
+	{ 0x900a4, 0x0 },
+	{ 0x900a5, 0x8140 },
+	{ 0x900a6, 0x10c },
+	{ 0x900a7, 0x10 },
+	{ 0x900a8, 0x8138 },
+	{ 0x900a9, 0x10c },
+	{ 0x900aa, 0x8 },
+	{ 0x900ab, 0x7c8 },
+	{ 0x900ac, 0x101 },
+	{ 0x900ad, 0x8 },
+	{ 0x900ae, 0x0 },
+	{ 0x900af, 0x8 },
+	{ 0x900b0, 0x8 },
+	{ 0x900b1, 0x448 },
+	{ 0x900b2, 0x109 },
+	{ 0x900b3, 0xf },
+	{ 0x900b4, 0x7c0 },
+	{ 0x900b5, 0x109 },
+	{ 0x900b6, 0x47 },
+	{ 0x900b7, 0x630 },
+	{ 0x900b8, 0x109 },
+	{ 0x900b9, 0x8 },
+	{ 0x900ba, 0x618 },
+	{ 0x900bb, 0x109 },
+	{ 0x900bc, 0x8 },
+	{ 0x900bd, 0xe0 },
+	{ 0x900be, 0x109 },
+	{ 0x900bf, 0x0 },
+	{ 0x900c0, 0x7c8 },
+	{ 0x900c1, 0x109 },
+	{ 0x900c2, 0x8 },
+	{ 0x900c3, 0x8140 },
+	{ 0x900c4, 0x10c },
+	{ 0x900c5, 0x0 },
+	{ 0x900c6, 0x1 },
+	{ 0x900c7, 0x8 },
+	{ 0x900c8, 0x8 },
+	{ 0x900c9, 0x4 },
+	{ 0x900ca, 0x8 },
+	{ 0x900cb, 0x8 },
+	{ 0x900cc, 0x7c8 },
+	{ 0x900cd, 0x101 },
+	{ 0x90006, 0x0 },
+	{ 0x90007, 0x0 },
+	{ 0x90008, 0x8 },
+	{ 0x90009, 0x0 },
+	{ 0x9000a, 0x0 },
+	{ 0x9000b, 0x0 },
+	{ 0xd00e7, 0x400 },
+	{ 0x90017, 0x0 },
+	{ 0x90026, 0x2c },
+	{ 0x2000b, 0x2a3 },
+	{ 0x2000c, 0x96 },
+	{ 0x2000d, 0x5dc },
+	{ 0x2000e, 0x2c },
+	{ 0x12000b, 0x177 },
+	{ 0x12000c, 0x53 },
+	{ 0x12000d, 0x343 },
+	{ 0x12000e, 0x2c },
+	{ 0x9000c, 0x0 },
+	{ 0x9000d, 0x173 },
+	{ 0x9000e, 0x60 },
+	{ 0x9000f, 0x6110 },
+	{ 0x90010, 0x2152 },
+	{ 0x90011, 0xdfbd },
+	{ 0x90012, 0xffff },
+	{ 0x90013, 0x6152 },
+	{ 0xc0080, 0x0 },
+	{ 0xd0000, 0x1 }
+};
+
+static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
+	{
+		/* P0 2400mts 1D */
+		.drate = 2400,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp0_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
+	},
+	{
+		/* P1 400mts 1D */
+		.drate = 400,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp1_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_cfg),
+	},
+	{
+		/* P0 2400mts 2D */
+		.drate = 2400,
+		.fw_type = FW_2D_IMAGE,
+		.fsp_cfg = ddr_fsp0_2d_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
+	},
+};
+
+/* ddr timing config params */
+struct dram_timing_info nt5ad512m16c4_2gb_timing = {
+	.ddrc_cfg = ddr_ddrc_cfg,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 2400, 400, },
+};
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f6c243c2532c..6ef2c43f3ccd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -34,6 +34,7 @@ lwl-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
 lwl-$(CONFIG_MACH_MEERKAT96) += imx7d-meerkat96.dtb.o
+lwl-$(CONFIG_MACH_GIRA_NCP) += imx8mm-gira-ncp.dtb.o
 lwl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 lwl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
 lwl-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
diff --git a/arch/arm/dts/imx8mm-gira-ncp.dts b/arch/arm/dts/imx8mm-gira-ncp.dts
new file mode 100644
index 000000000000..27df500e8575
--- /dev/null
+++ b/arch/arm/dts/imx8mm-gira-ncp.dts
@@ -0,0 +1,267 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2026 Pengutronix
+ */
+
+/dts-v1/;
+
+#include <arm64/freescale/imx8mm.dtsi>
+#include <dt-bindings/net/ti-dp83867.h>
+#include "imx8mm.dtsi"
+
+/ {
+	model = "Gira NCP";
+	compatible = "gira,ncp", "fsl,imx8mm";
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &env_usdhc2;
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &env_usdhc3;
+			status = "disabled";
+		};
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		off-on-delay-us = <100000>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy1>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-id2000.a231";
+			reg = <1>;
+			max-speed = <100>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_75_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+		};
+	};
+};
+
+&gpio4 {
+	/* This reset gpio affects an unknown number of peripherals, as it
+	 * is derived from the SM2 module standard reset output, but we
+	 * have no schematics to validate which peripherals it connects to
+	 * in the NCP custom design.
+	 */
+	reset-out-hog {
+		gpio-hog;
+		gpios = <27 GPIO_ACTIVE_LOW>;
+		line-name = "reset-out";
+		output-low;
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@31 {
+		compatible = "ricoh,rn5t567";
+		reg = <0x31>;
+		system-power-controller;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&usdhc2 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_usdhc2>;
+        bus-width = <4>;
+        cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+        wp-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+        vmmc-supply = <&reg_usdhc2_vmmc>;
+        no-1-8-v;
+        status = "okay";
+
+        partitions {
+		compatible = "barebox,fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x0 0x0 0xe0000>;
+		};
+
+		env_usdhc2: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0x0 0xe0000 0x0 0x20000>;
+		};
+	};
+};
+
+&usdhc3 {
+	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+
+	partitions {
+		compatible = "barebox,fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x0 0x0 0xe0000>;
+		};
+
+		env_usdhc3: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0x0 0xe0000 0x0 0x20000>;
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x3
+			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x3
+			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
+			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
+			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
+			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
+			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
+			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
+			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
+			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
+			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
+			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
+			MX8MM_IOMUXC_SAI5_RXC_GPIO3_IO20		0x19
+		>;
+	};
+
+	pinctrl_gpio4: gpio4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI2_MCLK_GPIO4_IO27		0x100
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c3
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX		0x40
+			MX8MM_IOMUXC_UART1_TXD_UART1_DCE_TX		0x40
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x190
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d0
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d0
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d0
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d0
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d0
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x41
+			MX8MM_IOMUXC_SD2_WP_GPIO2_IO20			0x41
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x190
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
+			MX8MM_IOMUXC_NAND_READY_B_SD3_RESET_B		0x40
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x194     
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x196     
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
+		>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19		0x41
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9d198e540645..5a5931f1a33d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -628,6 +628,15 @@ config MACH_CONGATEC_QMX8P_SOM
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 
+config MACH_GIRA_NCP
+	bool "Gira NCP"
+	select ARCH_IMX8MM
+	select ARM_SMCCC
+	select FIRMWARE_IMX_DDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MM_ATF
+	select MCI_IMX_ESDHC_PBL
+	select IMX8M_DRAM
+
 config MACH_HGS_GS05
 	bool "Hexagon Geosystems GS05 Board"
 	select ARCH_IMX8MM
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 7ff130f6e59f..d7ce75541b3b 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -495,6 +495,8 @@ $(call build_imx8m_habv4img, CONFIG_MACH_INNOCOMM_WB15, start_innocomm_wb15_evk,
 
 $(call build_imx8m_habv4img, CONFIG_MACH_HGS_GS05, start_hgs_gs05, hgs-gs05/flash-header-gs05, hgs-gs05)
 
+$(call build_imx8m_habv4img, CONFIG_MACH_GIRA_NCP, start_gira_ncp, gira-ncp/flash-header-gira-ncp, gira-ncp)
+
 # ----------------------- i.MX8mn based boards --------------------------
 $(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MN_EVK, start_nxp_imx8mn_evk, nxp-imx8mn-evk/flash-header-imx8mn-evk, nxp-imx8mn-evk)
 

base-commit: ed4d06aaf6d063c8b10b703be52ebd7e3bfb924e
-- 
2.47.3



