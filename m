Delivery-date: Tue, 22 Oct 2024 09:49:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39db-007Ngq-03
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dZ-0006Eu-HB
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SsxY8xVNBb5V8Ce7fs40AnHni74s2EJAxhg/teXaulM=; b=Cnw2rQFRfQx3rEJFIe6RmX/UpO
	imDsK6TZixIOumX80P1v0Vu6wPH1Egvc39uprv9pbpEgqYVXeddYYsD00Ed8KFXbd7ULMBkCG2Ryn
	5F4ZvPGyRUZRLXmcxY4WhbadWIqwfAxEzHJIBdBzdJ6+UA8cw4IAAPccyhXN7wXIN3KOoEdb2BkG2
	tQooOkXC1YRJPhbzaEkxuO8DlqdvUL/NXKHuqxii9RgWDHXREoG1/FBuvDbUW2uvRjQhqrvYh/u/P
	SYbsRtRq6hBQ+1bxR/2YwI4xPA4EWYly0mYHB+fEnHpKToQtUFEbn6NMvYnYXXK14i1GjktiZalVn
	YGx9/xpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39cu-0000000A2XG-3peS;
	Tue, 22 Oct 2024 07:48:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39bH-0000000A2LU-23nM
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39b0-0005hq-7n; Tue, 22 Oct 2024 09:46:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-000pLM-34;
	Tue, 22 Oct 2024 09:46:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2r;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-4-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=13415;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/uneKH0oelAgcqSbE+x+k+cVL1n+jYk1AXhHweD6yLU=;
 b=Y3eGg92usaOy6Xmi3Eh7tubWIkY9eKmO9r4x+g4AFGqse/gLauEJ5oRy+YxDIX1K+G4E4WiPQ
 oO/yorc4VG7BJVgN+vG3nO0ku+NFYRCSnScx0cpgKR2BSVuX3mWGgHB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004643_905304_7D3A79FC 
X-CRM114-Status: GOOD (  22.41  )
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
Subject: [PATCH v2 04/12] ARM: Layerscape: TQMLS1046a: add support for 8GiB
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The tqmls1046a also has a 8GiB DDR variant. This patch adds support for
this variant as an additional image with suffix _8g in the name.

The 8GiB boards use two different types of DDR chips which can be
distinguished by reading the EEPROM. There is one regular version which
has the string "TQMLS1046A-P2.0201" is the EEPROM. The other one is
possibly only used for Arkona and has the string "TQMLS1046A-CA.0202"
in the EEPROM. There might be other possible strings we are currently
not aware of, we fall back to the P2 variant in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/board.c    |  32 ++++-
 arch/arm/boards/tqmls1046a/lowlevel.c | 237 +++++++++++++++++++++++++++++++++-
 arch/arm/boards/tqmls1046a/start.S    |   5 +
 images/Makefile.layerscape            |  16 ++-
 include/mach/layerscape/layerscape.h  |   1 +
 5 files changed, 278 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index 36bcae6bc0..d30cd37747 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -13,22 +13,38 @@
 #include <mach/layerscape/bbu.h>
 #include <mach/layerscape/layerscape.h>
 
-static int tqmls1046a_mem_init(void)
+static void ls1046a_add_memory(void)
 {
+	u32 cs0_bnds;
+	u64 memsize, lower, upper;
 	int ret;
 
-	if (!of_machine_is_compatible("tq,ls1046a-tqmls1046a"))
-		return 0;
+	cs0_bnds = in_be32(LS1046A_DDRC_BASE);
+	switch (cs0_bnds) {
+	case 0x1ff:
+		memsize = SZ_8G;
+		break;
+	case 0x7f:
+		memsize = SZ_2G;
+		break;
+	default:
+		pr_err("Unexpected cs0_bnds: 0x%08x\n", cs0_bnds);
+		memsize = SZ_2G;
+		break;
+	}
+
+	lower = min_t(u64, memsize, SZ_2G);
+	arm_add_mem_device("ram0", 0x80000000, lower);
 
-	arm_add_mem_device("ram0", 0x80000000, SZ_2G);
+	if (memsize > lower) {
+		upper = memsize - lower;
+		arm_add_mem_device("ram1", 0x880000000, upper);
+	}
 
 	ret = ls1046a_ppa_init(0x100000000 - SZ_64M, SZ_64M);
 	if (ret)
 		pr_err("Failed to initialize PPA firmware: %s\n", strerror(-ret));
-
-        return 0;
 }
-mem_initcall(tqmls1046a_mem_init);
 
 static int tqmls1046a_postcore_init(void)
 {
@@ -39,6 +55,8 @@ static int tqmls1046a_postcore_init(void)
 	if (!of_machine_is_compatible("tq,ls1046a-tqmls1046a"))
 		return 0;
 
+	ls1046a_add_memory();
+
 	defaultenv_append_directory(defaultenv_tqmls1046a);
 
 	/* Configure iomux for i2c4 */
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 6d25b5cda8..9f471d001e 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/layerscape/xload.h>
 #include <mach/layerscape/layerscape.h>
 
-static struct fsl_ddr_controller ddrc[] = {
+static struct fsl_ddr_controller tqmls1046a_ddrc[] = {
 	{
 		.memctl_opts.ddrtype = SDRAM_TYPE_DDR4,
 		.base = IOMEM(LSCH2_DDR_ADDR),
@@ -90,11 +90,222 @@ static struct fsl_ddr_controller ddrc[] = {
 	},
 };
 
+static struct fsl_ddr_controller tqmls1046a_ddrc_8g[] = {
+	{
+		.memctl_opts.ddrtype = SDRAM_TYPE_DDR4,
+		.base = IOMEM(LSCH2_DDR_ADDR),
+		.ddr_freq = LS1046A_DDR_FREQ,
+		.erratum_A008511 = 1,
+		.erratum_A009803 = 1,
+		.erratum_A010165 = 1,
+		.erratum_A009801 = 1,
+		.erratum_A009942 = 1,
+		.chip_selects_per_ctrl = 4,
+		.fsl_ddr_config_reg = {
+	.cs[0].bnds         = 0x000001FF,
+	.cs[0].config       = 0x80010422,
+	.cs[0].config_2     = 0x00000000,
+	.cs[1].bnds         = 0x00000000,
+	.cs[1].config       = 0x00000000,
+	.cs[1].config_2     = 0x00000000,
+	.cs[2].bnds         = 0x00000000,
+	.cs[2].config       = 0x00000000,
+	.cs[2].config_2     = 0x00000000,
+	.cs[3].bnds         = 0x00000000,
+	.cs[3].config       = 0x00000000,
+	.cs[3].config_2     = 0x00000000,
+	.timing_cfg_3       = 0x020F1100,
+	.timing_cfg_0       = 0xF7660008,
+	.timing_cfg_1       = 0xF1FCC178,
+	.timing_cfg_2       = 0x00590160,
+	.ddr_sdram_cfg      = 0x65000008,
+	.ddr_sdram_cfg_2    = 0x00401150,
+	.ddr_sdram_cfg_3    = 0x40000000,
+	.ddr_sdram_mode     = 0x01030631,
+	.ddr_sdram_mode_2   = 0x00100200,
+	.ddr_sdram_mode_3   = 0x00000000,
+	.ddr_sdram_mode_4   = 0x00000000,
+	.ddr_sdram_mode_5   = 0x00000000,
+	.ddr_sdram_mode_6   = 0x00000000,
+	.ddr_sdram_mode_7   = 0x00000000,
+	.ddr_sdram_mode_8   = 0x00000000,
+	.ddr_sdram_mode_9   = 0x00000500,
+	.ddr_sdram_mode_10  = 0x08800000,
+	.ddr_sdram_mode_11  = 0x00000000,
+	.ddr_sdram_mode_12  = 0x00000000,
+	.ddr_sdram_mode_13  = 0x00000000,
+	.ddr_sdram_mode_14  = 0x00000000,
+	.ddr_sdram_mode_15  = 0x00000000,
+	.ddr_sdram_mode_16  = 0x00000000,
+	.ddr_sdram_interval = 0x0F3C079E,
+	.ddr_data_init      = 0xDEADBEEF,
+	.ddr_sdram_clk_cntl = 0x03000000,
+	.ddr_init_addr      = 0x00000000,
+	.ddr_init_ext_addr  = 0x00000000,
+	.timing_cfg_4       = 0x00220002,
+	.timing_cfg_5       = 0x00000000,
+	.timing_cfg_6       = 0x00000000,
+	.timing_cfg_7       = 0x25500000,
+	.timing_cfg_8       = 0x05447A00,
+	.timing_cfg_9       = 0x00000000,
+	.ddr_zq_cntl        = 0x8A090705,
+	.ddr_wrlvl_cntl     = 0x8605070A,
+	.ddr_wrlvl_cntl_2   = 0x0A080807,
+	.ddr_wrlvl_cntl_3   = 0x0706060A,
+	.ddr_sr_cntr        = 0x00000000,
+	.ddr_sdram_rcw_1    = 0x00000000,
+	.ddr_sdram_rcw_2    = 0x00000000,
+	.ddr_sdram_rcw_3    = 0x00000000,
+	.ddr_cdr1           = 0x80080000,
+	.ddr_cdr2           = 0x000000C0,
+	.dq_map_0           = 0x00000000,
+	.dq_map_1           = 0x00000000,
+	.dq_map_2           = 0x00000000,
+	.dq_map_3           = 0x00000000,
+	.debug[28]          = 0x00700046,
+		},
+	},
+};
+
+static struct fsl_ddr_controller tqmls1046a_ddrc_8g_ca[] = {
+	{
+		.memctl_opts.ddrtype = SDRAM_TYPE_DDR4,
+		.base = IOMEM(LSCH2_DDR_ADDR),
+		.ddr_freq = LS1046A_DDR_FREQ,
+		.erratum_A008511 = 1,
+		.erratum_A009803 = 1,
+		.erratum_A010165 = 1,
+		.erratum_A009801 = 1,
+		.erratum_A009942 = 1,
+		.chip_selects_per_ctrl = 4,
+		.fsl_ddr_config_reg = {
+	.cs[0].bnds         = 0x000001FF,
+	.cs[0].config       = 0x80010422,
+	.cs[0].config       = 0x80010512,
+	.cs[0].config_2     = 0x00000000,
+	.cs[1].bnds         = 0x00000000,
+	.cs[1].config       = 0x00000000,
+	.cs[1].config_2     = 0x00000000,
+	.cs[2].bnds         = 0x00000000,
+	.cs[2].config       = 0x00000000,
+	.cs[2].config_2     = 0x00000000,
+	.cs[3].bnds         = 0x00000000,
+	.cs[3].config       = 0x00000000,
+	.cs[3].config_2     = 0x00000000,
+	.timing_cfg_3       = 0x12551100,
+	.timing_cfg_0       = 0xA0660008,
+	.timing_cfg_1       = 0x060E6278,
+	.timing_cfg_2       = 0x0058625E,
+	.ddr_sdram_cfg      = 0x65200008,
+	.ddr_sdram_cfg_2    = 0x00401070,
+	.ddr_sdram_cfg_3    = 0x40000000,
+	.ddr_sdram_mode     = 0x05030635,
+	.ddr_sdram_mode_2   = 0x00100000,
+	.ddr_sdram_mode_3   = 0x00000000,
+	.ddr_sdram_mode_4   = 0x00000000,
+	.ddr_sdram_mode_5   = 0x00000000,
+	.ddr_sdram_mode_6   = 0x00000000,
+	.ddr_sdram_mode_7   = 0x00000000,
+	.ddr_sdram_mode_8   = 0x00000000,
+	.ddr_sdram_mode_9   = 0x00000701,
+	.ddr_sdram_mode_10  = 0x08800000,
+	.ddr_sdram_mode_11  = 0x00000000,
+	.ddr_sdram_mode_12  = 0x00000000,
+	.ddr_sdram_mode_13  = 0x00000000,
+	.ddr_sdram_mode_14  = 0x00000000,
+	.ddr_sdram_mode_15  = 0x00000000,
+	.ddr_sdram_mode_16  = 0x00000000,
+	.ddr_sdram_interval = 0x0F3C079E,
+	.ddr_data_init      = 0xDEADBEEF,
+	.ddr_sdram_clk_cntl = 0x02400000,
+	.ddr_init_addr      = 0x00000000,
+	.ddr_init_ext_addr  = 0x00000000,
+	.timing_cfg_4       = 0x00224502,
+	.timing_cfg_5       = 0x06401400,
+	.timing_cfg_6       = 0x00000000,
+	.timing_cfg_7       = 0x25540000,
+	.timing_cfg_8       = 0x06445A00,
+	.timing_cfg_9       = 0x00000000,
+	.ddr_zq_cntl        = 0x8A090705,
+	.ddr_wrlvl_cntl     = 0x86750608,
+	.ddr_wrlvl_cntl_2   = 0x07070605,
+	.ddr_wrlvl_cntl_3   = 0x05040407,
+	.ddr_sr_cntr        = 0x00000000,
+	.ddr_sdram_rcw_1    = 0x00000000,
+	.ddr_sdram_rcw_2    = 0x00000000,
+	.ddr_sdram_rcw_3    = 0x00000000,
+	.ddr_cdr1           = 0x80080000,
+	.ddr_cdr2           = 0x00000080,
+	.dq_map_0           = 0x06106104,
+	.dq_map_1           = 0x84184184,
+	.dq_map_2           = 0x06106104,
+	.dq_map_3           = 0x84184000,
+	.debug[28]          = 0x00700046,
+		},
+	},
+};
+
+#define TQ_VARIANT_LEN	18
+#define TQ_VARIANT_TQMLS1046A_P2	0
+#define TQ_VARIANT_TQMLS1046A_CA	1
+
+static int tqmls1046a_get_variant(void)
+{
+	struct pbl_i2c *i2c;
+	unsigned char buf[TQ_VARIANT_LEN + 1] = { 0 };
+	uint8_t pos = 0x40;
+	int ret;
+	int variant = TQ_VARIANT_TQMLS1046A_P2;
+	struct i2c_msg msg[] = {
+		{
+			.addr = 0x50,
+			.len = 1,
+			.buf = &pos,
+		}, {
+			.addr = 0x50,
+			.len = TQ_VARIANT_LEN,
+			.flags = I2C_M_RD,
+			.buf = (void *)&buf,
+		}
+	};
+
+	i2c = ls1046_i2c_init(IOMEM(LSCH2_I2C1_BASE_ADDR));
+
+	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
+	if (ret != ARRAY_SIZE(msg)) {
+		pr_err("I2C EEPROM read failed: %d\n", ret);
+		goto out;
+	}
+
+	if (buf[0] == 0xff) {
+		pr_err("Erased EEPROM detected\n");
+		goto out;
+	}
+
+	pr_debug("Board Variant: %s\n", buf);
+
+	if (!strcmp(buf, "TQMLS1046A-CA.0202")) {
+		variant = TQ_VARIANT_TQMLS1046A_CA;
+		goto out;
+	}
+
+	if (!strcmp(buf, "TQMLS1046A-P2.0201")) {
+		variant = TQ_VARIANT_TQMLS1046A_P2;
+		goto out;
+	}
+
+	pr_err("Unknown board variant, using default\n");
+
+out:
+	return variant;
+}
+
 extern char __dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start[];
 
-static noinline __noreturn void tqmls1046a_r_entry(void)
+static noinline __noreturn void tqmls1046a_r_entry(bool is_8g)
 {
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
+	int board_variant = 0;
 
 	if (get_pc() >= membase)
 		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
@@ -108,7 +319,15 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 	udelay(500);
 	putc_ll('>');
 
-	fsl_ddr_set_memctl_regs(&ddrc[0], 0, false);
+	if (is_8g) {
+		board_variant = tqmls1046a_get_variant();
+		if (board_variant == TQ_VARIANT_TQMLS1046A_CA)
+			fsl_ddr_set_memctl_regs(&tqmls1046a_ddrc_8g_ca[0], 0, false);
+		else
+			fsl_ddr_set_memctl_regs(&tqmls1046a_ddrc_8g[0], 0, false);
+	} else {
+		fsl_ddr_set_memctl_regs(&tqmls1046a_ddrc[0], 0, false);
+	}
 
 	ls1046a_errata_post_ddr();
 
@@ -126,5 +345,15 @@ __noreturn void tqmls1046a_entry(unsigned long r0, unsigned long r1, unsigned lo
 	relocate_to_current_adr();
 	setup_c();
 
-	tqmls1046a_r_entry();
+	tqmls1046a_r_entry(false);
+}
+
+void tqmls1046a_8g_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+
+__noreturn void tqmls1046a_8g_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+{
+	relocate_to_current_adr();
+	setup_c();
+
+	tqmls1046a_r_entry(true);
 }
diff --git a/arch/arm/boards/tqmls1046a/start.S b/arch/arm/boards/tqmls1046a/start.S
index 12b785af54..84c4626880 100644
--- a/arch/arm/boards/tqmls1046a/start.S
+++ b/arch/arm/boards/tqmls1046a/start.S
@@ -10,3 +10,8 @@ ENTRY_PROC(start_tqmls1046a)
 	b tqmls1046a_entry
 ENTRY_PROC_END(start_tqmls1046a)
 
+ENTRY_PROC(start_tqmls1046a_8g)
+	mov x3, #STACK_TOP
+	mov sp, x3
+	b tqmls1046a_8g_entry
+ENTRY_PROC_END(start_tqmls1046a_8g)
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 4e0c659d51..f62d8fe826 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -50,7 +50,7 @@ $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
 image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
 	barebox-ls1046ardb-emmc.image
 
-pblb-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a
+pblb-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a start_tqmls1046a_8g
 
 $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
@@ -62,8 +62,20 @@ $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
 	$(call if_changed,lspbl_spi_image,ls1046a)
 
+$(obj)/barebox-tqmls1046a-8g-sd.image: $(obj)/start_tqmls1046a_8g.pblb \
+		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
+	$(call if_changed,lspbl_image,ls1046a)
+
+$(obj)/barebox-tqmls1046a-8g-qspi.image: $(obj)/start_tqmls1046a_8g.pblb \
+		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
+	$(call if_changed,lspbl_spi_image,ls1046a)
+
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
-	barebox-tqmls1046a-qspi.image
+	barebox-tqmls1046a-qspi.image \
+	barebox-tqmls1046a-8g-sd.image \
+	barebox-tqmls1046a-8g-qspi.image
 
 pblb-$(CONFIG_MACH_LS1021AIOT) += start_ls1021aiot
 
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index bf4a751b92..7f9dc7d8a1 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -7,6 +7,7 @@
 
 #define LS1046A_DDR_SDRAM_BASE		0x80000000
 #define LS1046A_DDR_FREQ		2100000000
+#define LS1046A_DDRC_BASE		0x01080000
 
 #define LS1021A_DDR_SDRAM_BASE		0x80000000
 #define LS1021A_DDR_FREQ		1600000000

-- 
2.39.5



