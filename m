Delivery-date: Fri, 05 Jun 2026 15:08:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHY-002cqc-1W
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 15:08:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHV-0005Po-Q5
	for lore@pengutronix.de; Fri, 05 Jun 2026 15:08:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fdo6LG5+7qPbUR0YAC0wVL0WO7xaAyAY9vDJrlclMTE=; b=IiekW02U2ls0Dn5ny0tkBT9Rxr
	0llR4KR/GN7AKGygKztU1d4LWytoD6ta2hHpdaQLq06jXQA6gSwC2Rdm7IDe19igjM/Wi/SA94cG6
	GHnKdkrBWVubJeiXtwNhj8xa2sWWi+6NVsf41G/+Qv7EkuKO9c5GmKQHg6nGSJ37ppbBaOhOSh8OL
	hy7GwCNkwRCXnrpge5wD/ELxpz3cA/MYoT7btF1uH0Mi/+RiW5NB4KwlxP89BhnaYiO9lYnXvZYvD
	tYobhkZ3yAkTDAEepDXiDW0VKAonWB+3qra2lVFm4MIWoU0Ke8b+ZdmhMLLCSsZFl4G5jj7Fqnfs7
	WqtbFjow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUGB-00000000epj-0oj1;
	Fri, 05 Jun 2026 13:06:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG5-00000000emh-1hZ7
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 13:06:49 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVUG3-0004ul-SL; Fri, 05 Jun 2026 15:06:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 15:06:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-socfpga-agilex5-clk-v2-4-780562ec169f@pengutronix.de>
References: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
In-Reply-To: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_060645_915788_40449132 
X-CRM114-Status: GOOD (  13.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] clk: socfpga: agilex5: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Since v6.19-rc1 linux now has an Agilex5 clock driver [1]. This is
slightly different than the previous out-of-tree version. Sync with the
mainlined linux driver and cleanup on the way.

[1] commit 2050b57ecda040010ec797fb07713889372c5041

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/clk/socfpga/clk-agilex5.c    | 842 ++++++++++++-----------------------
 drivers/clk/socfpga/clk-gate-s10.c   |   7 +-
 drivers/clk/socfpga/clk-periph-s10.c |  38 ++
 drivers/clk/socfpga/clk-pll-s10.c    |   5 +-
 drivers/clk/socfpga/stratix10-clk.h  |  48 +-
 5 files changed, 366 insertions(+), 574 deletions(-)

diff --git a/drivers/clk/socfpga/clk-agilex5.c b/drivers/clk/socfpga/clk-agilex5.c
index f61b346ba4db..8be41920dbac 100644
--- a/drivers/clk/socfpga/clk-agilex5.c
+++ b/drivers/clk/socfpga/clk-agilex5.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-agilex5.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2022, Intel Corporation
  */
@@ -12,506 +13,229 @@
 
 #include "stratix10-clk.h"
 
-static const struct clk_parent_data pll_mux[] = {
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+/* External parent clocks come from DT via fw_name */
+static const char * const boot_pll_parents[] = {
+	"osc1",
+	"cb-intosc-hs-div2-clk",
 };
 
-static const struct clk_parent_data boot_mux[] = {
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
+static const char * const main_pll_parents[] = {
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data core0_free_mux[] = {
-	{
-		.fw_name = "main_pll_c1",
-		.name = "main_pll_c1",
-	},
-	{
-		.fw_name = "peri_pll_c0",
-		.name = "peri_pll_c0",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const periph_pll_parents[] = {
+	"osc1",
+	"cb-intosc-hs-div2-clk",
 };
 
-static const struct clk_parent_data core1_free_mux[] = {
-	{
-		.fw_name = "main_pll_c1",
-		.name = "main_pll_c1",
-	},
-	{
-		.fw_name = "peri_pll_c0",
-		.name = "peri_pll_c0",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+/* Core free muxes */
+static const char * const core0_free_mux[] = {
+	"main_pll_c1",
+	"peri_pll_c0",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data core2_free_mux[] = {
-	{
-		.fw_name = "main_pll_c0",
-		.name = "main_pll_c0",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const core1_free_mux[] = {
+	"main_pll_c1",
+	"peri_pll_c0",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data core3_free_mux[] = {
-	{
-		.fw_name = "main_pll_c0",
-		.name = "main_pll_c0",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const core2_free_mux[] = {
+	"main_pll_c0",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data dsu_free_mux[] = {
-	{
-		.fw_name = "main_pll_c2",
-		.name = "main_pll_c2",
-	},
-	{
-		.fw_name = "peri_pll_c0",
-		.name = "peri_pll_c0",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const core3_free_mux[] = {
+	"main_pll_c0",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data noc_free_mux[] = {
-	{
-		.fw_name = "main_pll_c3",
-		.name = "main_pll_c3",
-	},
-	{
-		.fw_name = "peri_pll_c1",
-		.name = "peri_pll_c1",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const dsu_free_mux[] = {
+	"main_pll_c2",
+	"peri_pll_c0",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data emaca_free_mux[] = {
-	{
-		.fw_name = "main_pll_c1",
-		.name = "main_pll_c1",
-	},
-	{
-		.fw_name = "peri_pll_c3",
-		.name = "peri_pll_c3",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const noc_free_mux[] = {
+	"main_pll_c3",
+	"peri_pll_c1",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data emacb_free_mux[] = {
-	{
-		.fw_name = "main_pll_c1",
-		.name = "main_pll_c1",
-	},
-	{
-		.fw_name = "peri_pll_c3",
-		.name = "peri_pll_c3",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const emac_ptp_free_mux[] = {
+	"main_pll_c3",
+	"peri_pll_c3",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data emac_ptp_free_mux[] = {
-	{
-		.fw_name = "main_pll_c3",
-		.name = "main_pll_c3",
-	},
-	{
-		.fw_name = "peri_pll_c3",
-		.name = "peri_pll_c3",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const emaca_free_mux[] = {
+	"main_pll_c2",
+	"peri_pll_c3",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data gpio_db_free_mux[] = {
-	{
-		.fw_name = "main_pll_c3",
-		.name = "main_pll_c3",
-	},
-	{
-		.fw_name = "peri_pll_c1",
-		.name = "peri_pll_c1",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const emacb_free_mux[] = {
+	"main_pll_c3",
+	"peri_pll_c3",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data psi_ref_free_mux[] = {
-	{
-		.fw_name = "main_pll_c1",
-		.name = "main_pll_c1",
-	},
-	{
-		.fw_name = "peri_pll_c3",
-		.name = "peri_pll_c3",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const gpio_db_free_mux[] = {
+	"main_pll_c3",
+	"peri_pll_c1",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data usb31_free_mux[] = {
-	{
-		.fw_name = "main_pll_c3",
-		.name = "main_pll_c3",
-	},
-	{
-		.fw_name = "peri_pll_c2",
-		.name = "peri_pll_c2",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const psi_ref_free_mux[] = {
+	"main_pll_c1",
+	"peri_pll_c3",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data s2f_usr0_free_mux[] = {
-	{
-		.fw_name = "main_pll_c1",
-		.name = "main_pll_c1",
-	},
-	{
-		.fw_name = "peri_pll_c3",
-		.name = "peri_pll_c3",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const usb31_free_mux[] = {
+	"main_pll_c3",
+	"peri_pll_c2",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data s2f_usr1_free_mux[] = {
-	{
-		.fw_name = "main_pll_c1",
-		.name = "main_pll_c1",
-	},
-	{
-		.fw_name = "peri_pll_c3",
-		.name = "peri_pll_c3",
-	},
-	{
-		.fw_name = "osc1",
-		.name = "osc1",
-	},
-	{
-		.fw_name = "cb-intosc-hs-div2-clk",
-		.name = "cb-intosc-hs-div2-clk",
-	},
-	{
-		.fw_name = "f2s-free-clk",
-		.name = "f2s-free-clk",
-	},
+static const char * const s2f_user0_free_mux[] = {
+	"main_pll_c1",
+	"peri_pll_c3",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
 };
 
-static const struct clk_parent_data core0_mux[] = {
+static const char * const s2f_user1_free_mux[] = {
+	"main_pll_c1",
+	"peri_pll_c3",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
+};
+
+/* Secondary muxes between free_clk and boot_clk */
+static const char * const core0_mux[] = {
+	"core0_free_clk",
+	"boot_clk",
+};
+
+static const char * const core1_mux[] = {
+	"core1_free_clk",
+	"boot_clk",
+};
+
+static const char * const core2_mux[] = {
+	"core2_free_clk",
+	"boot_clk",
+};
+
+static const char * const core3_mux[] = {
+	"core3_free_clk",
+	"boot_clk",
+};
+
+static const char * const dsu_mux[] = {
+	"dsu_free_clk",
+	"boot_clk",
+};
+
+static const char * const noc_mux[] = {
+	"noc_free_clk",
+	"boot_clk",
+};
+
+static const char * const emac_mux[] = {
+	"emaca_free_clk",
+	"emacb_free_clk",
+	"boot_clk",
+};
+
+static const char * const s2f_user0_mux[] = {
+	"s2f_user0_free_clk",
+	"boot_clk",
+};
+
+static const char * const s2f_user1_mux[] = {
+	"s2f_user1_free_clk",
+	"boot_clk",
+};
+
+static const char * const psi_mux[] = {
+	"psi_ref_free_clk",
+	"boot_clk",
+};
+
+static const char * const gpio_db_mux[] = {
+	"gpio_db_free_clk",
+	"boot_clk",
+};
+
+static const char * const emac_ptp_mux[] = {
+	"emac_ptp_free_clk",
+	"boot_clk",
+};
+
+static const char * const usb31_mux[] = {
+	"usb31_free_clk",
+	"boot_clk",
+};
+
+static const struct agilex5_pll_clock agilex5_pll_clks[] = {
 	{
-		.fw_name = "core0_free_clk",
-		.name = "core0_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
+		.id = AGILEX5_BOOT_CLK,
 		.name = "boot_clk",
+		.parent_names = boot_pll_parents,
+		.num_parents = ARRAY_SIZE(boot_pll_parents),
+		.flags = 0,
+		.offset = 0x0,
+	},
+	{
+		.id = AGILEX5_MAIN_PLL_CLK,
+		.name = "main_pll",
+		.parent_names = main_pll_parents,
+		.num_parents = ARRAY_SIZE(main_pll_parents),
+		.flags = 0,
+		.offset = 0x48,
+	},
+	{
+		.id = AGILEX5_PERIPH_PLL_CLK,
+		.name = "periph_pll",
+		.parent_names = periph_pll_parents,
+		.num_parents = ARRAY_SIZE(periph_pll_parents),
+		.flags = 0,
+		.offset = 0x9C,
 	},
 };
 
-static const struct clk_parent_data core1_mux[] = {
-	{
-		.fw_name = "core1_free_clk",
-		.name = "core1_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data core2_mux[] = {
-	{
-		.fw_name = "core2_free_clk",
-		.name = "core2_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data core3_mux[] = {
-	{
-		.fw_name = "core3_free_clk",
-		.name = "core3_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data dsu_mux[] = {
-	{
-		.fw_name = "dsu_free_clk",
-		.name = "dsu_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data emac_mux[] = {
-	{
-		.fw_name = "emaca_free_clk",
-		.name = "emaca_free_clk",
-	},
-	{
-		.fw_name = "emacb_free_clk",
-		.name = "emacb_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data noc_mux[] = {
-	{
-		.fw_name = "noc_free_clk",
-		.name = "noc_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data s2f_user0_mux[] = {
-	{
-		.fw_name = "s2f_user0_free_clk",
-		.name = "s2f_user0_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data s2f_user1_mux[] = {
-	{
-		.fw_name = "s2f_user1_free_clk",
-		.name = "s2f_user1_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data psi_mux[] = {
-	{
-		.fw_name = "psi_ref_free_clk",
-		.name = "psi_ref_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data gpio_db_mux[] = {
-	{
-		.fw_name = "gpio_db_free_clk",
-		.name = "gpio_db_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data emac_ptp_mux[] = {
-	{
-		.fw_name = "emac_ptp_free_clk",
-		.name = "emac_ptp_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-static const struct clk_parent_data usb31_mux[] = {
-	{
-		.fw_name = "usb31_free_clk",
-		.name = "usb31_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
-};
-
-/*
- * TODO - Clocks in AO (always on) controller
- * 2 main PLLs only
- */
-static const struct stratix10_pll_clock agilex5_pll_clks[] = {
-	{ AGILEX5_BOOT_CLK, "boot_clk", boot_mux, ARRAY_SIZE(boot_mux), 0,
-	  0x0 },
-	{ AGILEX5_MAIN_PLL_CLK, "main_pll", pll_mux, ARRAY_SIZE(pll_mux), 0,
-	  0x48 },
-	{ AGILEX5_PERIPH_PLL_CLK, "periph_pll", pll_mux, ARRAY_SIZE(pll_mux), 0,
-	  0x9C },
-};
-
+/* Main PLL C0, C1, C2, C3 and Peri PLL C0, C1, C2, C3. With ping-pong counter. */
 static const struct stratix10_perip_c_clock agilex5_main_perip_c_clks[] = {
 	{ AGILEX5_MAIN_PLL_C0_CLK, "main_pll_c0", "main_pll", NULL, 1, 0,
 	  0x5C },
@@ -532,160 +256,153 @@ static const struct stratix10_perip_c_clock agilex5_main_perip_c_clks[] = {
 };
 
 /* Non-SW clock-gated enabled clocks */
-static const struct stratix10_perip_cnt_clock agilex5_main_perip_cnt_clks[] = {
-	{ AGILEX5_CORE0_FREE_CLK, "core0_free_clk", NULL, core0_free_mux,
-	ARRAY_SIZE(core0_free_mux), 0, 0x0104, 0, 0, 0},
-	{ AGILEX5_CORE1_FREE_CLK, "core1_free_clk", NULL, core1_free_mux,
+static const struct agilex5_perip_cnt_clock agilex5_main_perip_cnt_clks[] = {
+	{ AGILEX5_CORE0_FREE_CLK, "core0_free_clk", core0_free_mux,
+	ARRAY_SIZE(core0_free_mux), 0, 0x0100, 0, 0, 0},
+	{ AGILEX5_CORE1_FREE_CLK, "core1_free_clk", core1_free_mux,
 	ARRAY_SIZE(core1_free_mux), 0, 0x0104, 0, 0, 0},
-	{ AGILEX5_CORE2_FREE_CLK, "core2_free_clk", NULL, core2_free_mux,
+	{ AGILEX5_CORE2_FREE_CLK, "core2_free_clk", core2_free_mux,
 	ARRAY_SIZE(core2_free_mux), 0, 0x010C, 0, 0, 0},
-	{ AGILEX5_CORE3_FREE_CLK, "core3_free_clk", NULL, core3_free_mux,
+	{ AGILEX5_CORE3_FREE_CLK, "core3_free_clk", core3_free_mux,
 	ARRAY_SIZE(core3_free_mux), 0, 0x0110, 0, 0, 0},
-	{ AGILEX5_DSU_FREE_CLK, "dsu_free_clk", NULL, dsu_free_mux,
-	ARRAY_SIZE(dsu_free_mux), 0, 0x0100, 0, 0, 0},
-	{ AGILEX5_NOC_FREE_CLK, "noc_free_clk", NULL, noc_free_mux,
-	  ARRAY_SIZE(noc_free_mux), 0, 0x40, 0, 0, 0 },
-	{ AGILEX5_EMAC_A_FREE_CLK, "emaca_free_clk", NULL, emaca_free_mux,
-	  ARRAY_SIZE(emaca_free_mux), 0, 0xD4, 0, 0x88, 0 },
-	{ AGILEX5_EMAC_B_FREE_CLK, "emacb_free_clk", NULL, emacb_free_mux,
-	  ARRAY_SIZE(emacb_free_mux), 0, 0xD8, 0, 0x88, 1 },
-	{ AGILEX5_EMAC_PTP_FREE_CLK, "emac_ptp_free_clk", NULL,
-	  emac_ptp_free_mux, ARRAY_SIZE(emac_ptp_free_mux), 0, 0xDC, 0, 0x88,
-	  2 },
-	{ AGILEX5_GPIO_DB_FREE_CLK, "gpio_db_free_clk", NULL, gpio_db_free_mux,
-	  ARRAY_SIZE(gpio_db_free_mux), 0, 0xE0, 0, 0x88, 3 },
-	{ AGILEX5_S2F_USER0_FREE_CLK, "s2f_user0_free_clk", NULL,
-	  s2f_usr0_free_mux, ARRAY_SIZE(s2f_usr0_free_mux), 0, 0xE8, 0, 0x30,
-	  2 },
-	{ AGILEX5_S2F_USER1_FREE_CLK, "s2f_user1_free_clk", NULL,
-	  s2f_usr1_free_mux, ARRAY_SIZE(s2f_usr1_free_mux), 0, 0xEC, 0, 0x88,
-	  5 },
-	{ AGILEX5_PSI_REF_FREE_CLK, "psi_ref_free_clk", NULL, psi_ref_free_mux,
-	  ARRAY_SIZE(psi_ref_free_mux), 0, 0xF0, 0, 0x88, 6 },
-	{ AGILEX5_USB31_FREE_CLK, "usb31_free_clk", NULL, usb31_free_mux,
-	  ARRAY_SIZE(usb31_free_mux), 0, 0xF8, 0, 0x88, 7},
+	{ AGILEX5_DSU_FREE_CLK, "dsu_free_clk", dsu_free_mux,
+	ARRAY_SIZE(dsu_free_mux), 0, 0xfc, 0, 0, 0},
+	{ AGILEX5_NOC_FREE_CLK, "noc_free_clk", noc_free_mux,
+	ARRAY_SIZE(noc_free_mux), 0, 0x40, 0, 0, 0 },
+	{ AGILEX5_EMAC_A_FREE_CLK, "emaca_free_clk", emaca_free_mux,
+	ARRAY_SIZE(emaca_free_mux), 0, 0xD4, 0, 0x88, 0 },
+	{ AGILEX5_EMAC_B_FREE_CLK, "emacb_free_clk", emacb_free_mux,
+	ARRAY_SIZE(emacb_free_mux), 0, 0xD8, 0, 0x88, 1 },
+	{ AGILEX5_EMAC_PTP_FREE_CLK, "emac_ptp_free_clk", emac_ptp_free_mux,
+	ARRAY_SIZE(emac_ptp_free_mux), 0, 0xDC, 0, 0x88, 2 },
+	{ AGILEX5_GPIO_DB_FREE_CLK, "gpio_db_free_clk", gpio_db_free_mux,
+	ARRAY_SIZE(gpio_db_free_mux), 0, 0xE0, 0, 0x88, 3 },
+	{ AGILEX5_S2F_USER0_FREE_CLK, "s2f_user0_free_clk", s2f_user0_free_mux,
+	ARRAY_SIZE(s2f_user0_free_mux), 0, 0xE8, 0, 0x30, 2 },
+	{ AGILEX5_S2F_USER1_FREE_CLK, "s2f_user1_free_clk", s2f_user1_free_mux,
+	ARRAY_SIZE(s2f_user1_free_mux), 0, 0xEC, 0, 0x88, 5 },
+	{ AGILEX5_PSI_REF_FREE_CLK, "psi_ref_free_clk", psi_ref_free_mux,
+	ARRAY_SIZE(psi_ref_free_mux), 0, 0xF0, 0, 0x88, 6 },
+	{ AGILEX5_USB31_FREE_CLK, "usb31_free_clk", usb31_free_mux,
+	ARRAY_SIZE(usb31_free_mux), 0, 0xF8, 0, 0x88, 7},
 };
 
+static const char * const cs_pdbg_parents[] = { "cs_at_clk" };
+static const char * const usb31_bus_clk_early_parents[] = { "l4_main_clk" };
+static const char * const l4_mp_clk_parent[] = { "l4_mp_clk" };
+static const char * const l4_sp_clk_parent[] = { "l4_sp_clk" };
+static const char * const dfi_clk_parent[] = { "dfi_clk" };
+
 /* SW Clock gate enabled clocks */
-static const struct stratix10_gate_clock agilex5_gate_clks[] = {
-
-	/* TODO HW Managed Clocks list */
-
-	/* TODO SW Managed Clocks list */
-
-	/* Main PLL0 Begin */
-	/* MPU clocks */
-	{ AGILEX5_CORE0_CLK, "core0_clk", NULL, core0_mux,
+static const struct agilex5_gate_clock agilex5_gate_clks[] = {
+	{ AGILEX5_CORE0_CLK, "core0_clk", core0_mux,
 	  ARRAY_SIZE(core0_mux), 0, 0x24, 8, 0, 0, 0, 0x30, 5, 0 },
-	{ AGILEX5_CORE1_CLK, "core1_clk", NULL, core1_mux,
+	{ AGILEX5_CORE1_CLK, "core1_clk", core1_mux,
 	  ARRAY_SIZE(core1_mux), 0, 0x24, 9, 0, 0, 0, 0x30, 5, 0 },
-	{ AGILEX5_CORE2_CLK, "core2_clk", NULL, core2_mux,
+	{ AGILEX5_CORE2_CLK, "core2_clk", core2_mux,
 	  ARRAY_SIZE(core2_mux), 0, 0x24, 10, 0, 0, 0, 0x30, 6, 0 },
-	{ AGILEX5_CORE3_CLK, "core3_clk", NULL, core3_mux,
+	{ AGILEX5_CORE3_CLK, "core3_clk", core3_mux,
 	  ARRAY_SIZE(core3_mux), 0, 0x24, 11, 0, 0, 0, 0x30, 7, 0 },
-	{ AGILEX5_MPU_CLK, "dsu_clk", NULL, dsu_mux, ARRAY_SIZE(dsu_mux), 0, 0,
-	  0, 0, 0, 0, 0x34, 4, 0 },
-	{ AGILEX5_MPU_PERIPH_CLK, "mpu_periph_clk", NULL, dsu_mux,
+	{ AGILEX5_MPU_CLK, "dsu_clk", dsu_mux, ARRAY_SIZE(dsu_mux), 0, 0, 0,
+	  0, 0, 0, 0x34, 4, 0 },
+	{ AGILEX5_MPU_PERIPH_CLK, "mpu_periph_clk", dsu_mux,
 	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 20, 2, 0x34, 4, 0 },
-	{ AGILEX5_MPU_CCU_CLK, "mpu_ccu_clk", NULL, dsu_mux,
+	{ AGILEX5_MPU_CCU_CLK, "mpu_ccu_clk", dsu_mux,
 	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 18, 2, 0x34, 4, 0 },
-
-	/* ANGTS TODO l4 main clk has no divider now. To check. */
-	{ AGILEX5_L4_MAIN_CLK, "l4_main_clk", NULL, noc_mux,
-	  ARRAY_SIZE(noc_mux), 0, 0x24, 1, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_L4_MP_CLK, "l4_mp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
+	{ AGILEX5_L4_MAIN_CLK, "l4_main_clk", noc_mux, ARRAY_SIZE(noc_mux),
+	  CLK_IS_CRITICAL, 0x24, 1, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_L4_MP_CLK, "l4_mp_clk", noc_mux, ARRAY_SIZE(noc_mux), 0,
 	  0x24, 2, 0x44, 4, 2, 0x30, 1, 0 },
-	{ AGILEX5_L4_SYS_FREE_CLK, "l4_sys_free_clk", NULL, noc_mux,
+	{ AGILEX5_L4_SYS_FREE_CLK, "l4_sys_free_clk", noc_mux,
 	  ARRAY_SIZE(noc_mux), 0, 0, 0, 0x44, 2, 2, 0x30, 1, 0 },
-	{ AGILEX5_L4_SP_CLK, "l4_sp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux),
+	{ AGILEX5_L4_SP_CLK, "l4_sp_clk", noc_mux, ARRAY_SIZE(noc_mux),
 	  CLK_IS_CRITICAL, 0x24, 3, 0x44, 6, 2, 0x30, 1, 0 },
 
 	/* Core sight clocks*/
-	{ AGILEX5_CS_AT_CLK, "cs_at_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
+	{ AGILEX5_CS_AT_CLK, "cs_at_clk", noc_mux, ARRAY_SIZE(noc_mux), 0,
 	  0x24, 4, 0x44, 24, 2, 0x30, 1, 0 },
-	{ AGILEX5_CS_TRACE_CLK, "cs_trace_clk", NULL, noc_mux,
+	{ AGILEX5_CS_TRACE_CLK, "cs_trace_clk", noc_mux,
 	  ARRAY_SIZE(noc_mux), 0, 0x24, 4, 0x44, 26, 2, 0x30, 1, 0 },
-	{ AGILEX5_CS_PDBG_CLK, "cs_pdbg_clk", "cs_at_clk", NULL, 1, 0, 0x24, 4,
+	{ AGILEX5_CS_PDBG_CLK, "cs_pdbg_clk", cs_pdbg_parents, 1, 0, 0x24, 4,
 	  0x44, 28, 1, 0, 0, 0 },
-	/* Main PLL0 End */
 
 	/* Main Peripheral PLL1 Begin */
-	{ AGILEX5_EMAC0_CLK, "emac0_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	{ AGILEX5_EMAC0_CLK, "emac0_clk", emac_mux, ARRAY_SIZE(emac_mux),
 	  0, 0x7C, 0, 0, 0, 0, 0x94, 26, 0 },
-	{ AGILEX5_EMAC1_CLK, "emac1_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	{ AGILEX5_EMAC1_CLK, "emac1_clk", emac_mux, ARRAY_SIZE(emac_mux),
 	  0, 0x7C, 1, 0, 0, 0, 0x94, 27, 0 },
-	{ AGILEX5_EMAC2_CLK, "emac2_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	{ AGILEX5_EMAC2_CLK, "emac2_clk", emac_mux, ARRAY_SIZE(emac_mux),
 	  0, 0x7C, 2, 0, 0, 0, 0x94, 28, 0 },
-	{ AGILEX5_EMAC_PTP_CLK, "emac_ptp_clk", NULL, emac_ptp_mux,
+	{ AGILEX5_EMAC_PTP_CLK, "emac_ptp_clk", emac_ptp_mux,
 	  ARRAY_SIZE(emac_ptp_mux), 0, 0x7C, 3, 0, 0, 0, 0x88, 2, 0 },
-	{ AGILEX5_GPIO_DB_CLK, "gpio_db_clk", NULL, gpio_db_mux,
+	{ AGILEX5_GPIO_DB_CLK, "gpio_db_clk", gpio_db_mux,
 	  ARRAY_SIZE(gpio_db_mux), 0, 0x7C, 4, 0x98, 0, 16, 0x88, 3, 1 },
 	  /* Main Peripheral PLL1 End */
 
 	  /* Peripheral clocks  */
-	{ AGILEX5_S2F_USER0_CLK, "s2f_user0_clk", NULL, s2f_user0_mux,
+	{ AGILEX5_S2F_USER0_CLK, "s2f_user0_clk", s2f_user0_mux,
 	  ARRAY_SIZE(s2f_user0_mux), 0, 0x24, 6, 0, 0, 0, 0x30, 2, 0 },
-	{ AGILEX5_S2F_USER1_CLK, "s2f_user1_clk", NULL, s2f_user1_mux,
+	{ AGILEX5_S2F_USER1_CLK, "s2f_user1_clk", s2f_user1_mux,
 	  ARRAY_SIZE(s2f_user1_mux), 0, 0x7C, 6, 0, 0, 0, 0x88, 5, 0 },
-	{ AGILEX5_PSI_REF_CLK, "psi_ref_clk", NULL, psi_mux,
+	{ AGILEX5_PSI_REF_CLK, "psi_ref_clk", psi_mux,
 	  ARRAY_SIZE(psi_mux), 0, 0x7C, 7, 0, 0, 0, 0x88, 6, 0 },
-	{ AGILEX5_USB31_SUSPEND_CLK, "usb31_suspend_clk", NULL, usb31_mux,
+	{ AGILEX5_USB31_SUSPEND_CLK, "usb31_suspend_clk", usb31_mux,
 	  ARRAY_SIZE(usb31_mux), 0, 0x7C, 25, 0, 0, 0, 0x88, 7, 0 },
-	{ AGILEX5_USB31_BUS_CLK_EARLY, "usb31_bus_clk_early", "l4_main_clk",
-	  NULL, 1, 0, 0x7C, 25, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_USB2OTG_HCLK, "usb2otg_hclk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	{ AGILEX5_USB31_BUS_CLK_EARLY, "usb31_bus_clk_early", usb31_bus_clk_early_parents,
+	  1, 0, 0x7C, 25, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_USB2OTG_HCLK, "usb2otg_hclk", l4_mp_clk_parent, 1, 0, 0x7C,
 	  8, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIM_0_CLK, "spim_0_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 9,
+	{ AGILEX5_SPIM_0_CLK, "spim_0_clk", l4_mp_clk_parent, 1, 0, 0x7C, 9,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIM_1_CLK, "spim_1_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 11,
+	{ AGILEX5_SPIM_1_CLK, "spim_1_clk", l4_mp_clk_parent, 1, 0, 0x7C, 11,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIS_0_CLK, "spis_0_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 12,
+	{ AGILEX5_SPIS_0_CLK, "spis_0_clk", l4_sp_clk_parent, 1, 0, 0x7C, 12,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIS_1_CLK, "spis_1_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 13,
+	{ AGILEX5_SPIS_1_CLK, "spis_1_clk", l4_sp_clk_parent, 1, 0, 0x7C, 13,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_DMA_CORE_CLK, "dma_core_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	{ AGILEX5_DMA_CORE_CLK, "dma_core_clk", l4_mp_clk_parent, 1, 0, 0x7C,
 	  14, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_DMA_HS_CLK, "dma_hs_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 14,
+	{ AGILEX5_DMA_HS_CLK, "dma_hs_clk", l4_mp_clk_parent, 1, 0, 0x7C, 14,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I3C_0_CORE_CLK, "i3c_0_core_clk", "l4_mp_clk", NULL, 1, 0,
+	{ AGILEX5_I3C_0_CORE_CLK, "i3c_0_core_clk", l4_mp_clk_parent, 1, 0,
 	  0x7C, 18, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I3C_1_CORE_CLK, "i3c_1_core_clk", "l4_mp_clk", NULL, 1, 0,
+	{ AGILEX5_I3C_1_CORE_CLK, "i3c_1_core_clk", l4_mp_clk_parent, 1, 0,
 	  0x7C, 19, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_0_PCLK, "i2c_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 15,
+	{ AGILEX5_I2C_0_PCLK, "i2c_0_pclk", l4_sp_clk_parent, 1, 0, 0x7C, 15,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_1_PCLK, "i2c_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 16,
+	{ AGILEX5_I2C_1_PCLK, "i2c_1_pclk", l4_sp_clk_parent, 1, 0, 0x7C, 16,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_EMAC0_PCLK, "i2c_emac0_pclk", "l4_sp_clk", NULL, 1, 0,
+	{ AGILEX5_I2C_EMAC0_PCLK, "i2c_emac0_pclk", l4_sp_clk_parent, 1, 0,
 	  0x7C, 17, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_EMAC1_PCLK, "i2c_emac1_pclk", "l4_sp_clk", NULL, 1, 0,
+	{ AGILEX5_I2C_EMAC1_PCLK, "i2c_emac1_pclk", l4_sp_clk_parent, 1, 0,
 	  0x7C, 22, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_EMAC2_PCLK, "i2c_emac2_pclk", "l4_sp_clk", NULL, 1, 0,
+	{ AGILEX5_I2C_EMAC2_PCLK, "i2c_emac2_pclk", l4_sp_clk_parent, 1, 0,
 	  0x7C, 27, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_UART_0_PCLK, "uart_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 20,
+	{ AGILEX5_UART_0_PCLK, "uart_0_pclk", l4_sp_clk_parent, 1, 0, 0x7C, 20,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_UART_1_PCLK, "uart_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 21,
+	{ AGILEX5_UART_1_PCLK, "uart_1_pclk", l4_sp_clk_parent, 1, 0, 0x7C, 21,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPTIMER_0_PCLK, "sptimer_0_pclk", "l4_sp_clk", NULL, 1, 0,
+	{ AGILEX5_SPTIMER_0_PCLK, "sptimer_0_pclk", l4_sp_clk_parent, 1, 0,
 	  0x7C, 23, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPTIMER_1_PCLK, "sptimer_1_pclk", "l4_sp_clk", NULL, 1, 0,
+	{ AGILEX5_SPTIMER_1_PCLK, "sptimer_1_pclk", l4_sp_clk_parent, 1, 0,
 	  0x7C, 24, 0, 0, 0, 0, 0, 0 },
 
 	/*NAND, SD/MMC and SoftPHY overall clocking*/
-	{ AGILEX5_DFI_CLK, "dfi_clk", "l4_mp_clk", NULL, 1, 0, 0, 0, 0x44, 16,
+	{ AGILEX5_DFI_CLK, "dfi_clk", l4_mp_clk_parent, 1, 0, 0, 0, 0x44, 16,
 	  2, 0, 0, 0 },
-	{ AGILEX5_NAND_NF_CLK, "nand_nf_clk", "dfi_clk", NULL, 1, 0, 0x7C, 10,
+	{ AGILEX5_NAND_NF_CLK, "nand_nf_clk", dfi_clk_parent, 1, 0, 0x7C, 10,
 	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_NAND_BCH_CLK, "nand_bch_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	{ AGILEX5_NAND_BCH_CLK, "nand_bch_clk", l4_mp_clk_parent, 1, 0, 0x7C,
 	  10, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SDMMC_SDPHY_REG_CLK, "sdmmc_sdphy_reg_clk", "l4_mp_clk", NULL,
+	{ AGILEX5_SDMMC_SDPHY_REG_CLK, "sdmmc_sdphy_reg_clk", l4_mp_clk_parent,
 	  1, 0, 0x7C, 5, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SDMCLK, "sdmclk", "dfi_clk", NULL, 1, 0, 0x7C, 5, 0, 0, 0, 0,
-	  0, 0 },
-	{ AGILEX5_SOFTPHY_REG_PCLK, "softphy_reg_pclk", "l4_mp_clk", NULL, 1, 0,
+	{ AGILEX5_SDMCLK, "sdmclk", dfi_clk_parent, 1, 0, 0x7C, 5, 0, 0, 0,
+	  0, 0, 0 },
+	{ AGILEX5_SOFTPHY_REG_PCLK, "softphy_reg_pclk", l4_mp_clk_parent, 1, 0,
 	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SOFTPHY_PHY_CLK, "softphy_phy_clk", "l4_mp_clk", NULL, 1, 0,
+	{ AGILEX5_SOFTPHY_PHY_CLK, "softphy_phy_clk", l4_mp_clk_parent, 1, 0,
 	  0x7C, 26, 0x44, 16, 2, 0, 0, 0 },
-	{ AGILEX5_SOFTPHY_CTRL_CLK, "softphy_ctrl_clk", "dfi_clk", NULL, 1, 0,
+	{ AGILEX5_SOFTPHY_CTRL_CLK, "softphy_ctrl_clk", dfi_clk_parent, 1, 0,
 	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
 };
 
@@ -710,7 +427,7 @@ agilex5_clk_register_c_perip(const struct stratix10_perip_c_clock *clks,
 }
 
 static int
-agilex5_clk_register_cnt_perip(const struct stratix10_perip_cnt_clock *clks,
+agilex5_clk_register_cnt_perip(const struct agilex5_perip_cnt_clock *clks,
 			       int nums, struct stratix10_clock_data *data)
 {
 	struct clk_hw *hw_clk;
@@ -718,7 +435,7 @@ agilex5_clk_register_cnt_perip(const struct stratix10_perip_cnt_clock *clks,
 	int i;
 
 	for (i = 0; i < nums; i++) {
-		hw_clk = s10_register_cnt_periph(&clks[i], base);
+		hw_clk = agilex5_register_cnt_periph(&clks[i], base);
 		if (IS_ERR(hw_clk)) {
 			pr_err("%s: failed to register clock %s\n", __func__,
 			       clks[i].name);
@@ -730,7 +447,7 @@ agilex5_clk_register_cnt_perip(const struct stratix10_perip_cnt_clock *clks,
 	return 0;
 }
 
-static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
+static int agilex5_clk_register_gate(const struct agilex5_gate_clock *clks,
 				     int nums,
 				     struct stratix10_clock_data *data)
 {
@@ -739,7 +456,7 @@ static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
 	int i;
 
 	for (i = 0; i < nums; i++) {
-		hw_clk = agilex_register_gate(&clks[i], base);
+		hw_clk = agilex5_register_gate(&clks[i], base);
 		if (IS_ERR(hw_clk)) {
 			pr_err("%s: failed to register clock %s\n", __func__,
 			       clks[i].name);
@@ -751,7 +468,7 @@ static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
 	return 0;
 }
 
-static int agilex5_clk_register_pll(const struct stratix10_pll_clock *clks,
+static int agilex5_clk_register_pll(const struct agilex5_pll_clock *clks,
 				    int nums, struct stratix10_clock_data *data)
 {
 	struct clk_hw *hw_clk;
@@ -797,6 +514,7 @@ static int agilex5_clkmgr_probe(struct device *dev)
 	agilex5_clk_register_pll(agilex5_pll_clks, ARRAY_SIZE(agilex5_pll_clks),
 				 clk_data);
 
+	/* mainPLL C0, C1, C2, C3 and periph PLL C0, C1, C2, C3*/
 	agilex5_clk_register_c_perip(agilex5_main_perip_c_clks,
 				     ARRAY_SIZE(agilex5_main_perip_c_clks),
 				     clk_data);
diff --git a/drivers/clk/socfpga/clk-gate-s10.c b/drivers/clk/socfpga/clk-gate-s10.c
index 8fc8a4ea7b8f..fc803b69a2a0 100644
--- a/drivers/clk/socfpga/clk-gate-s10.c
+++ b/drivers/clk/socfpga/clk-gate-s10.c
@@ -124,12 +124,11 @@ static const struct clk_ops dbgclk_ops = {
 	.get_parent = socfpga_gate_get_parent,
 };
 
-struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks, void __iomem *regbase)
+struct clk_hw *agilex5_register_gate(const struct agilex5_gate_clock *clks, void __iomem *regbase)
 {
 	struct clk_hw *hw_clk;
 	struct socfpga_gate_clk *socfpga_clk;
 	struct clk_init_data init;
-	const char *parent_name = clks->parent_name;
 	int ret;
 
 	socfpga_clk = xzalloc(sizeof(*socfpga_clk));
@@ -161,9 +160,7 @@ struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks, voi
 	init.name = clks->name;
 	init.flags = clks->flags;
 	init.num_parents = clks->num_parents;
-	init.parent_names = parent_name ? &parent_name : NULL;
-	if (init.parent_names == NULL)
-		init.parent_data = clks->parent_data;
+	init.parent_names = clks->parent_names;
 	socfpga_clk->hw.hw.init = &init;
 	hw_clk = &socfpga_clk->hw.hw;
 
diff --git a/drivers/clk/socfpga/clk-periph-s10.c b/drivers/clk/socfpga/clk-periph-s10.c
index 3f527e43f0b7..4c3184b92fbe 100644
--- a/drivers/clk/socfpga/clk-periph-s10.c
+++ b/drivers/clk/socfpga/clk-periph-s10.c
@@ -157,3 +157,41 @@ struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *c
 	}
 	return hw_clk;
 }
+
+struct clk_hw *agilex5_register_cnt_periph(const struct agilex5_perip_cnt_clock *clks,
+					   void __iomem *regbase)
+{
+	struct clk_hw *hw_clk;
+	struct socfpga_periph_clk *periph_clk;
+	struct clk_init_data init;
+	const char *name = clks->name;
+	int ret;
+
+	periph_clk = xzalloc(sizeof(*periph_clk));
+
+	if (clks->offset)
+		periph_clk->hw.reg = regbase + clks->offset;
+	else
+		periph_clk->hw.reg = NULL;
+
+	if (clks->bypass_reg)
+		periph_clk->bypass_reg = regbase + clks->bypass_reg;
+	else
+		periph_clk->bypass_reg = NULL;
+	periph_clk->bypass_shift = clks->bypass_shift;
+	periph_clk->fixed_div = clks->fixed_divider;
+
+	init.name = name;
+	init.ops = &peri_cnt_clk_ops;
+	init.flags = clks->flags;
+	init.num_parents = clks->num_parents;
+	init.parent_names = clks->parent_names;
+	periph_clk->hw.hw.init = &init;
+	hw_clk = &periph_clk->hw.hw;
+
+	ret = clk_hw_register(NULL, hw_clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return hw_clk;
+}
diff --git a/drivers/clk/socfpga/clk-pll-s10.c b/drivers/clk/socfpga/clk-pll-s10.c
index 4c00c0e7481a..be07d735181e 100644
--- a/drivers/clk/socfpga/clk-pll-s10.c
+++ b/drivers/clk/socfpga/clk-pll-s10.c
@@ -113,7 +113,7 @@ static const struct clk_ops clk_boot_ops = {
 	.enable = clk_pll_enable,
 };
 
-struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
+struct clk_hw *agilex5_register_pll(const struct agilex5_pll_clock *clks,
 				    void __iomem *reg)
 {
 	struct clk_hw *hw_clk;
@@ -134,8 +134,7 @@ struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
 	init.name = name;
 	init.flags = clks->flags;
 	init.num_parents = clks->num_parents;
-	init.parent_names = NULL;
-	init.parent_data = clks->parent_data;
+	init.parent_names = clks->parent_names;
 	pll_clk->hw.hw.init = &init;
 	pll_clk->hw.bit_idx = SOCFPGA_PLL_POWER;
 	hw_clk = &pll_clk->hw.hw;
diff --git a/drivers/clk/socfpga/stratix10-clk.h b/drivers/clk/socfpga/stratix10-clk.h
index 1fe025f65f7a..bd13424e8557 100644
--- a/drivers/clk/socfpga/stratix10-clk.h
+++ b/drivers/clk/socfpga/stratix10-clk.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier:    GPL-2.0 */
+/* SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/stratix10-clk.h?id=2050b57ecda040010ec797fb07713889372c5041 */
 /*
  * Copyright (C) 2017, Intel Corporation
  */
@@ -62,12 +63,51 @@ struct stratix10_gate_clock {
 	u8			fixed_div;
 };
 
-struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
-				void __iomem *reg);
+struct agilex5_pll_clock {
+	unsigned int	id;
+	const char	*name;
+	const char	* const *parent_names;
+	u8	num_parents;
+	unsigned long   flags;
+	unsigned long   offset;
+};
+
+struct agilex5_perip_cnt_clock {
+	unsigned int		id;
+	const char		*name;
+	const char	* const *parent_names;
+	u8			num_parents;
+	unsigned long		flags;
+	unsigned long		offset;
+	u8			fixed_divider;
+	unsigned long		bypass_reg;
+	unsigned long		bypass_shift;
+};
+
+struct agilex5_gate_clock {
+	unsigned int		id;
+	const char		*name;
+	const char	* const *parent_names;
+	u8			num_parents;
+	unsigned long		flags;
+	unsigned long		gate_reg;
+	u8			gate_idx;
+	unsigned long		div_reg;
+	u8			div_offset;
+	u8			div_width;
+	unsigned long		bypass_reg;
+	u8			bypass_shift;
+	u8			fixed_div;
+};
+
+struct clk_hw *agilex5_register_pll(const struct agilex5_pll_clock *clks,
+				    void __iomem *reg);
+struct clk_hw *agilex5_register_cnt_periph(const struct agilex5_perip_cnt_clock *clks,
+					   void __iomem *regbase);
+struct clk_hw *agilex5_register_gate(const struct agilex5_gate_clock *clks,
+				     void __iomem *regbase);
 struct clk_hw *s10_register_periph(const struct stratix10_perip_c_clock *clks,
 				void __iomem *reg);
 struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *clks,
 				    void __iomem *reg);
-struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks,
-			      void __iomem *reg);
 #endif	/* __STRATIX10_CLK_H */

-- 
2.47.3



