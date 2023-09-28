Delivery-date: Thu, 28 Sep 2023 14:12:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlpsl-00F6Fv-LD
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 14:12:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlpsj-0007pG-O8
	for lore@pengutronix.de; Thu, 28 Sep 2023 14:12:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G/slzjGSeC2sPRp5XhM1GblAjEc6kYtZ5OpcwtN34m4=; b=XhHGBMknaGxHtqWBI/LRDIZORf
	nhdwkjZtscEZd8+PLdun6AvvpqkhZAE80ImmXMrgOY7TJ+PJvELQnzWd5ZytUda2K+7UX6Fw0q/0L
	z2j37laZSXABP0080GCpjXiOjPOwBwYMO1Zj3Iq3vRY3+WZnBHZr0lJ09z1NiVJCQW4PkKFnTVXqe
	n8dY+wV3UrtttGuJ4EFjpmeCMCO+imn0HRC+1zjlf1rZJ8crvjGGNLXr4h/M7cFmJuuBBcu7rkuId
	FMzapzFjSr4OPebMSsYl6tx/L44eeWPmmD72O3GEWU1JQuoJ1QKVrF4WDzkMFcQm5m66t+HYod9Le
	1yYmZgOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlprW-003aqM-2B;
	Thu, 28 Sep 2023 12:11:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlprR-003an3-34
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 12:11:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qlprI-0007bG-QF; Thu, 28 Sep 2023 14:11:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qlprI-009Zdz-Dh; Thu, 28 Sep 2023 14:11:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qlprI-00AqPh-1D;
	Thu, 28 Sep 2023 14:11:08 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 28 Sep 2023 14:11:06 +0200
Message-Id: <20230928121106.2584743-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928121106.2584743-1-o.rempel@pengutronix.de>
References: <20230928121106.2584743-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_051117_995945_945D1141 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/2] ARM: skov-imx6: Remove unused board variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

The board variants 12 and 18 are no longer used. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/skov-imx6/lowlevel.c | 136 ---------------------------
 1 file changed, 136 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/lowlevel.c b/arch/arm/boards/skov-imx6/lowlevel.c
index c9a695ced4..16809dd4a6 100644
--- a/arch/arm/boards/skov-imx6/lowlevel.c
+++ b/arch/arm/boards/skov-imx6/lowlevel.c
@@ -28,122 +28,6 @@ static void __udelay(int us)
 
 /* ------------------------------------------------------------------------ */
 
-/*
- * Micron MT41K512M16HA-125 IT:E ->  8 GBit = 64 Meg x 16 x 8 banks
- *
- * Speed Grade   Data Rate (MT/s)  tRCD-tRP-CL   tRCD(ns)  tRP(ns)  CL(ns)
- *    -125          1600            11-11-11      13.75     13.75   13.75
- *               (=800 MHz)
- *
- * Memory configuration used by variant:
- * - "Max Performance", 64 bit data bus, 1066 MHz, 4 GiB memory
- */
-static const struct mx6_ddr3_cfg skov_imx6_cfg_4x512Mb_1066MHz = {
-	.mem_speed = 1066,
-	.density = 8, /* GiBit */
-	.width = 16, /* 16 bit data per device */
-	.banks = 8,
-	.rowaddr = 16, /* 64 k */
-	.coladdr = 10, /* 1 k */
-	.pagesz = 2, /* [kiB] */
-	.trcd = 1375, /* 13.75 ns = 11 clocks @ 1.6 GHz */
-	.trcmin = 4875, /* 48.75 ns = 39 clocks @ 1.6 GHz */
-	.trasmin = 3500, /* 35 ns = 28 clocks @ 1.6 GHz */
-	.SRT = 0,
-};
-
-static const struct mx6_ddr_sysinfo skov_imx6_sysinfo_4x512Mb_1066MHz = {
-	.dsize = 2, /* 64 bit wide = 4 devices, 16 bit each */
-	.cs_density = 32, /* four 8 GBit devices connected */
-	.ncs = 1, /* one CS line for all devices */
-	.cs1_mirror = 1, /* TODO */
-	.bi_on = 1, /* TODO */
-	.rtt_nom = 1, /* MX6_MMDC_P0_MPODTCTRL -> 0x00022227 */
-	.rtt_wr = 0, /* is LW_EN is 0 in their code */
-	.ralat = 5, /* TODO */
-	.walat = 1, /* TODO */
-	.mif3_mode = 3, /* TODO */
-	.rst_to_cke = 0x23, /* used in their code as well */
-	.sde_to_rst = 0x10, /* used in their code as well */
-	.pd_fast_exit = 0, /* TODO */
-};
-
-static const struct mx6_mmdc_calibration skov_imx6_calib_4x512Mb_1066MHz = {
-	.p0_mpwldectrl0 = 0x001a0017,
-	.p0_mpwldectrl1 = 0x001F001F,
-	.p0_mpdgctrl0 = 0x43040319,
-	.p0_mpdgctrl1 = 0x03040279,
-	.p0_mprddlctl = 0x4d434248,
-	.p0_mpwrdlctl = 0x34424543,
-
-	.p1_mpwldectrl0 = 0x00170027,
-	.p1_mpwldectrl1 = 0x000a001f,
-	.p1_mpdgctrl0 = 0x43040321,
-	.p1_mpdgctrl1 = 0x03030251,
-	.p1_mprddlctl = 0x42413c4d,
-	.p1_mpwrdlctl = 0x49324933,
-};
-
-/* ------------------------------------------------------------------------ */
-
-/*
- * Micron MT41K256M16HA-125 IT:E ->  4 GBit = 32 Meg x 16 x 8 banks
- *
- * Speed Grade   Data Rate (MT/s)  tRCD-tRP-CL   tRCD(ns)  tRP(ns)  CL(ns)
- *    -125          1600            11-11-11      13.75     13.75   13.75
- *               (=800 MHz)
- *
- * Memory configuration used by variant:
- * - "Max Performance", 64 bit data bus, 1066 MHz, 2 GiB memory
- */
-static const struct mx6_ddr3_cfg skov_imx6_cfg_4x256Mb_1066MHz = {
-	.mem_speed = 1066,
-	.density = 4, /* GiBit */
-	.width = 16, /* 16 bit data per device */
-	.banks = 8,
-	.rowaddr = 15, /* 32 k */
-	.coladdr = 10, /* 1 k */
-	.pagesz = 2, /* [kiB] */
-	.trcd = 1375, /* 13.75 ns = 11 clocks @ 1.6 GHz */
-	.trcmin = 4875, /* 48.75 ns = 39 clocks @ 1.6 GHz */
-	.trasmin = 3500, /* 35 ns = 28 clocks @ 1.6 GHz */
-	.SRT = 0,
-};
-
-static const struct mx6_ddr_sysinfo skov_imx6_sysinfo_4x256Mb_1066MHz = {
-	.dsize = 2, /* 64 bit wide = 4 devices, 16 bit each */
-	.cs_density = 16, /* four 4 GBit devices connected */
-	.ncs = 1, /* one CS line for all devices */
-	.cs1_mirror = 1, /* TODO */
-	.bi_on = 1, /* TODO */
-	.rtt_nom = 1, /* MX6_MMDC_P0_MPODTCTRL -> 0x00022227 */
-	.rtt_wr = 0, /* is LW_EN is 0 in their code */
-	.ralat = 5, /* TODO */
-	.walat = 1, /* TODO */
-	.mif3_mode = 3, /* TODO */
-	.rst_to_cke = 0x23, /* used in their code as well */
-	.sde_to_rst = 0x10, /* used in their code as well */
-	.pd_fast_exit = 0, /* TODO */
-};
-
-static const struct mx6_mmdc_calibration skov_imx6_calib_4x256Mb_1066MHz = {
-	.p0_mpwldectrl0 = 0x001a0017,
-	.p0_mpwldectrl1 = 0x001F001F,
-	.p0_mpdgctrl0 = 0x43040319,
-	.p0_mpdgctrl1 = 0x03040279,
-	.p0_mprddlctl = 0x4d434248,
-	.p0_mpwrdlctl = 0x34424543,
-
-	.p1_mpwldectrl0 = 0x00170027,
-	.p1_mpwldectrl1 = 0x000a001f,
-	.p1_mpdgctrl0 = 0x43040321,
-	.p1_mpdgctrl1 = 0x03030251,
-	.p1_mprddlctl = 0x42413c4d,
-	.p1_mpwrdlctl = 0x49324933,
-};
-
-/* ------------------------------------------------------------------------ */
-
 /*
  * Micron MT41K128M16JT-125 IT:K ->  2 GBit = 16 Meg x 16 x 8 banks
  *
@@ -530,26 +414,6 @@ static void skov_imx6_init(int cpu_type, unsigned board_variant)
 	int instance;
 
 	switch (board_variant) {
-	case 12: /* P2 i.MX6Q, max performance */
-		if (cpu_type != IMX6_CPUTYPE_IMX6Q) {
-			pr_err("Invalid SoC! i.MX6Q expected\n");
-			return;
-		}
-		pr_debug("Initializing a P2 max performance system...\n");
-		spl_imx6q_dram_init(&skov_imx6_sysinfo_4x256Mb_1066MHz,
-					&skov_imx6_calib_4x256Mb_1066MHz,
-					&skov_imx6_cfg_4x256Mb_1066MHz);
-		break;
-	case 18: /* i.MX6Q+ */
-		if (cpu_type != IMX6_CPUTYPE_IMX6Q) {
-			pr_err("Invalid SoC! i.MX6Q expected\n");
-			return;
-		}
-		pr_debug("Initializing board variant 18\n");
-		spl_imx6q_dram_init(&skov_imx6_sysinfo_4x512Mb_1066MHz,
-					&skov_imx6_calib_4x512Mb_1066MHz,
-					&skov_imx6_cfg_4x512Mb_1066MHz);
-		break;
 	case 19: /* i.MX6S "Solo_R512M_F2G" */
 		if (cpu_type != IMX6_CPUTYPE_IMX6S) {
 			pr_err("Invalid SoC! i.MX6S expected\n");
-- 
2.39.2



