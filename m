Delivery-date: Mon, 15 Dec 2025 15:09:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Gx-00BlVH-2d
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:09:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Gv-0000cF-CY
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:09:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d1VryzQFOjD+nOm4wgzKXdGV9d0T8qsbE7GYoi0m/6k=; b=zR5pparqwtNt7jK7uw+DK7k5sw
	Rz/wrIKxmLezq6BrhIpicClRVukIWRM9DLqatfMrr/hLdgM/3THGTmu7j5pUilve6NopqYLXGOP9I
	ue5M4sKDkM254d5GJFagk6iBZtEhWEFH/5V/eBRa9xlTEpQZyPC0/BK9cLoimEtQtRqjaNsmDDGub
	FCEHcKUtiugr7ntSkbdAZLt/XRhZOfU047pUhx5Efwko1RDu7gT1QemZN72RLh5k3oCAej6xbmMSz
	Vub14ed/cVo1nRtMvjtQLVR24EyhXwQtok8JvV9ZnaKdbe2xSVkErNCqJ+wNq8OyBfSm47OuB9WUZ
	8hVrC3kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9G5-00000003kFY-2Bpc;
	Mon, 15 Dec 2025 14:09:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9G1-00000003kEz-302F
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:09:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vV9Fx-0000Rl-AJ; Mon, 15 Dec 2025 15:08:57 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 15 Dec 2025 15:08:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-v2025-11-0-topic-socfpga-agilex5-clk-v1-1-e1270179d761@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAGoWQGkC/x2NQQqDMBAAvyJ7dsGNjaX9ingI201cKiYkIoL49
 6beZi4zJxTJKgXezQlZdi0a1yrUNsCzW4OgfqqD6YwlQxb3PyERdrjFpIwlsk/BoQu6yGGRly+
 +3GMY+OmJe4KaSlm8HvdmnK7rB3D0Xad2AAAA
X-Change-ID: 20251215-v2025-11-0-topic-socfpga-agilex5-clk-9a466c7f1c31
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_060902_254452_D1BAD5CD 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] clk: socfpga: agilex5: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since v6.19-rc1 linux now has an Agilex5 clock driver [1]. This is sligthly
different than the previous out-of-tree version. Sync with the mainlined
linux driver and cleanup on the way.

[1] commit 2050b57ecda040010ec797fb07713889372c5041

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
The clk driver for agilex5 was derived from the downstream linux kernel.
Since then, Altera mainlined a re-worked driver to the linux kernel.

Sync with this version for easier (potential) updating in the future.
---
 drivers/clk/socfpga/clk-agilex5.c    | 880 ++++++++++++-----------------------
 drivers/clk/socfpga/clk-gate-s10.c   |  74 +--
 drivers/clk/socfpga/clk-periph-s10.c |  40 ++
 drivers/clk/socfpga/clk-pll-s10.c    |  32 +-
 drivers/clk/socfpga/clk.h            |   1 +
 drivers/clk/socfpga/stratix10-clk.h  |  48 +-
 6 files changed, 422 insertions(+), 653 deletions(-)

diff --git a/drivers/clk/socfpga/clk-agilex5.c b/drivers/clk/socfpga/clk-agilex5.c
index f61b346ba4..37a901298c 100644
--- a/drivers/clk/socfpga/clk-agilex5.c
+++ b/drivers/clk/socfpga/clk-agilex5.c
@@ -12,506 +12,228 @@
 
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
-	{
-		.fw_name = "core0_free_clk",
-		.name = "core0_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const s2f_user1_free_mux[] = {
+	"main_pll_c1",
+	"peri_pll_c3",
+	"osc1",
+	"cb-intosc-hs-div2-clk",
+	"f2s-free-clk",
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
+/* Secondary muxes between free_clk and boot_clk */
+static const char * const core0_mux[] = {
+	"core0_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data core2_mux[] = {
-	{
-		.fw_name = "core2_free_clk",
-		.name = "core2_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const core1_mux[] = {
+	"core1_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data core3_mux[] = {
-	{
-		.fw_name = "core3_free_clk",
-		.name = "core3_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const core2_mux[] = {
+	"core2_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data dsu_mux[] = {
-	{
-		.fw_name = "dsu_free_clk",
-		.name = "dsu_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const core3_mux[] = {
+	"core3_free_clk",
+	"boot_clk",
 };
 
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
+static const char * const dsu_mux[] = {
+	"dsu_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data noc_mux[] = {
-	{
-		.fw_name = "noc_free_clk",
-		.name = "noc_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const noc_mux[] = {
+	"noc_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data s2f_user0_mux[] = {
-	{
-		.fw_name = "s2f_user0_free_clk",
-		.name = "s2f_user0_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const emac_mux[] = {
+	"emaca_free_clk",
+	"emacb_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data s2f_user1_mux[] = {
-	{
-		.fw_name = "s2f_user1_free_clk",
-		.name = "s2f_user1_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const s2f_user0_mux[] = {
+	"s2f_user0_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data psi_mux[] = {
-	{
-		.fw_name = "psi_ref_free_clk",
-		.name = "psi_ref_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const s2f_user1_mux[] = {
+	"s2f_user1_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data gpio_db_mux[] = {
-	{
-		.fw_name = "gpio_db_free_clk",
-		.name = "gpio_db_free_clk",
-	},
-	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
-	},
+static const char * const psi_mux[] = {
+	"psi_ref_free_clk",
+	"boot_clk",
 };
 
-static const struct clk_parent_data emac_ptp_mux[] = {
-	{
-		.fw_name = "emac_ptp_free_clk",
-		.name = "emac_ptp_free_clk",
-	},
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
-		.fw_name = "boot_clk",
+		.id = AGILEX5_BOOT_CLK,
 		.name = "boot_clk",
+		.parent_names = boot_pll_parents,
+		.num_parents = ARRAY_SIZE(boot_pll_parents),
+		.flags = 0,
+		.offset = 0x0,
 	},
-};
-
-static const struct clk_parent_data usb31_mux[] = {
 	{
-		.fw_name = "usb31_free_clk",
-		.name = "usb31_free_clk",
+		.id = AGILEX5_MAIN_PLL_CLK,
+		.name = "main_pll",
+		.parent_names = main_pll_parents,
+		.num_parents = ARRAY_SIZE(main_pll_parents),
+		.flags = 0,
+		.offset = 0x48,
 	},
 	{
-		.fw_name = "boot_clk",
-		.name = "boot_clk",
+		.id = AGILEX5_PERIPH_PLL_CLK,
+		.name = "periph_pll",
+		.parent_names = periph_pll_parents,
+		.num_parents = ARRAY_SIZE(periph_pll_parents),
+		.flags = 0,
+		.offset = 0x9C,
 	},
 };
 
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
 static const struct stratix10_perip_c_clock agilex5_main_perip_c_clks[] = {
 	{ AGILEX5_MAIN_PLL_C0_CLK, "main_pll_c0", "main_pll", NULL, 1, 0,
 	  0x5C },
@@ -532,161 +254,154 @@ static const struct stratix10_perip_c_clock agilex5_main_perip_c_clks[] = {
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
-};
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
+};
+
+static const char * const cs_pdbg_parents[] = { "cs_at_clk" };
+static const char * const usb31_bus_clk_early_parents[] = { "l4_main_clk" };
+static const char * const l4_mp_clk_parent[] = { "l4_mp_clk" };
+static const char * const l4_sp_clk_parent[] = { "l4_sp_clk" };
+static const char * const dfi_clk_parent[] = { "dfi_clk" };
 
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
-	  ARRAY_SIZE(core0_mux), 0, 0x24, 8, 0, 0, 0, 0x30, 5, 0 },
-	{ AGILEX5_CORE1_CLK, "core1_clk", NULL, core1_mux,
-	  ARRAY_SIZE(core1_mux), 0, 0x24, 9, 0, 0, 0, 0x30, 5, 0 },
-	{ AGILEX5_CORE2_CLK, "core2_clk", NULL, core2_mux,
-	  ARRAY_SIZE(core2_mux), 0, 0x24, 10, 0, 0, 0, 0x30, 6, 0 },
-	{ AGILEX5_CORE3_CLK, "core3_clk", NULL, core3_mux,
-	  ARRAY_SIZE(core3_mux), 0, 0x24, 11, 0, 0, 0, 0x30, 7, 0 },
-	{ AGILEX5_MPU_CLK, "dsu_clk", NULL, dsu_mux, ARRAY_SIZE(dsu_mux), 0, 0,
-	  0, 0, 0, 0, 0x34, 4, 0 },
-	{ AGILEX5_MPU_PERIPH_CLK, "mpu_periph_clk", NULL, dsu_mux,
-	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 20, 2, 0x34, 4, 0 },
-	{ AGILEX5_MPU_CCU_CLK, "mpu_ccu_clk", NULL, dsu_mux,
-	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 18, 2, 0x34, 4, 0 },
-
-	/* ANGTS TODO l4 main clk has no divider now. To check. */
-	{ AGILEX5_L4_MAIN_CLK, "l4_main_clk", NULL, noc_mux,
-	  ARRAY_SIZE(noc_mux), 0, 0x24, 1, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_L4_MP_CLK, "l4_mp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
-	  0x24, 2, 0x44, 4, 2, 0x30, 1, 0 },
-	{ AGILEX5_L4_SYS_FREE_CLK, "l4_sys_free_clk", NULL, noc_mux,
-	  ARRAY_SIZE(noc_mux), 0, 0, 0, 0x44, 2, 2, 0x30, 1, 0 },
-	{ AGILEX5_L4_SP_CLK, "l4_sp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux),
+static const struct agilex5_gate_clock agilex5_gate_clks[] = {
+	{ AGILEX5_CORE0_CLK, "core0_clk", core0_mux, ARRAY_SIZE(core0_mux),
+	  0, 0x24, 8, 0, 0, 0, 0x30, 5, 0 },
+	{ AGILEX5_CORE1_CLK, "core1_clk", core1_mux, ARRAY_SIZE(core1_mux),
+	  0, 0x24, 9, 0, 0, 0, 0x30, 5, 0 },
+	{ AGILEX5_CORE2_CLK, "core2_clk", core2_mux, ARRAY_SIZE(core2_mux),
+	  0, 0x24, 10, 0, 0, 0, 0x30, 6, 0 },
+	{ AGILEX5_CORE3_CLK, "core3_clk", core3_mux, ARRAY_SIZE(core3_mux),
+	  0, 0x24, 11, 0, 0, 0, 0x30, 7, 0 },
+	{ AGILEX5_MPU_CLK, "dsu_clk", dsu_mux, ARRAY_SIZE(dsu_mux),
+	  0, 0, 0, 0, 0, 0, 0x34, 4, 0 },
+	{ AGILEX5_MPU_PERIPH_CLK, "mpu_periph_clk", dsu_mux, ARRAY_SIZE(dsu_mux),
+	  0, 0, 0, 0x44, 20, 2, 0x34, 4, 0 },
+	{ AGILEX5_MPU_CCU_CLK, "mpu_ccu_clk", dsu_mux, ARRAY_SIZE(dsu_mux),
+	  0, 0, 0, 0x44, 18, 2, 0x34, 4, 0 },
+	{ AGILEX5_L4_MAIN_CLK, "l4_main_clk", noc_mux, ARRAY_SIZE(noc_mux),
+	  CLK_IS_CRITICAL, 0x24, 1, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_L4_MP_CLK, "l4_mp_clk", noc_mux, ARRAY_SIZE(noc_mux),
+	  0, 0x24, 2, 0x44, 4, 2, 0x30, 1, 0 },
+	{ AGILEX5_L4_SYS_FREE_CLK, "l4_sys_free_clk", noc_mux, ARRAY_SIZE(noc_mux),
+	  0, 0, 0, 0x44, 2, 2, 0x30, 1, 0 },
+	{ AGILEX5_L4_SP_CLK, "l4_sp_clk", noc_mux, ARRAY_SIZE(noc_mux),
 	  CLK_IS_CRITICAL, 0x24, 3, 0x44, 6, 2, 0x30, 1, 0 },
 
 	/* Core sight clocks*/
-	{ AGILEX5_CS_AT_CLK, "cs_at_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
-	  0x24, 4, 0x44, 24, 2, 0x30, 1, 0 },
-	{ AGILEX5_CS_TRACE_CLK, "cs_trace_clk", NULL, noc_mux,
-	  ARRAY_SIZE(noc_mux), 0, 0x24, 4, 0x44, 26, 2, 0x30, 1, 0 },
-	{ AGILEX5_CS_PDBG_CLK, "cs_pdbg_clk", "cs_at_clk", NULL, 1, 0, 0x24, 4,
-	  0x44, 28, 1, 0, 0, 0 },
-	/* Main PLL0 End */
+	{ AGILEX5_CS_AT_CLK, "cs_at_clk", noc_mux, ARRAY_SIZE(noc_mux),
+	  0, 0x24, 4, 0x44, 24, 2, 0x30, 1, 0 },
+	{ AGILEX5_CS_TRACE_CLK, "cs_trace_clk", noc_mux, ARRAY_SIZE(noc_mux),
+	  0, 0x24, 4, 0x44, 26, 2, 0x30, 1, 0 },
+	{ AGILEX5_CS_PDBG_CLK, "cs_pdbg_clk", cs_pdbg_parents, 1,
+	  0, 0x24, 4, 0x44, 28, 1, 0, 0, 0 },
 
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
-	  ARRAY_SIZE(emac_ptp_mux), 0, 0x7C, 3, 0, 0, 0, 0x88, 2, 0 },
-	{ AGILEX5_GPIO_DB_CLK, "gpio_db_clk", NULL, gpio_db_mux,
-	  ARRAY_SIZE(gpio_db_mux), 0, 0x7C, 4, 0x98, 0, 16, 0x88, 3, 1 },
+	{ AGILEX5_EMAC_PTP_CLK, "emac_ptp_clk", emac_ptp_mux, ARRAY_SIZE(emac_ptp_mux),
+	  0, 0x7C, 3, 0, 0, 0, 0x88, 2, 0 },
+	{ AGILEX5_GPIO_DB_CLK, "gpio_db_clk", gpio_db_mux, ARRAY_SIZE(gpio_db_mux),
+	  0, 0x7C, 4, 0x98, 0, 16, 0x88, 3, 1 },
 	  /* Main Peripheral PLL1 End */
 
 	  /* Peripheral clocks  */
-	{ AGILEX5_S2F_USER0_CLK, "s2f_user0_clk", NULL, s2f_user0_mux,
-	  ARRAY_SIZE(s2f_user0_mux), 0, 0x24, 6, 0, 0, 0, 0x30, 2, 0 },
-	{ AGILEX5_S2F_USER1_CLK, "s2f_user1_clk", NULL, s2f_user1_mux,
-	  ARRAY_SIZE(s2f_user1_mux), 0, 0x7C, 6, 0, 0, 0, 0x88, 5, 0 },
-	{ AGILEX5_PSI_REF_CLK, "psi_ref_clk", NULL, psi_mux,
-	  ARRAY_SIZE(psi_mux), 0, 0x7C, 7, 0, 0, 0, 0x88, 6, 0 },
-	{ AGILEX5_USB31_SUSPEND_CLK, "usb31_suspend_clk", NULL, usb31_mux,
-	  ARRAY_SIZE(usb31_mux), 0, 0x7C, 25, 0, 0, 0, 0x88, 7, 0 },
-	{ AGILEX5_USB31_BUS_CLK_EARLY, "usb31_bus_clk_early", "l4_main_clk",
-	  NULL, 1, 0, 0x7C, 25, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_USB2OTG_HCLK, "usb2otg_hclk", "l4_mp_clk", NULL, 1, 0, 0x7C,
-	  8, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIM_0_CLK, "spim_0_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 9,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIM_1_CLK, "spim_1_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 11,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIS_0_CLK, "spis_0_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 12,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPIS_1_CLK, "spis_1_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 13,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_DMA_CORE_CLK, "dma_core_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
-	  14, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_DMA_HS_CLK, "dma_hs_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 14,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I3C_0_CORE_CLK, "i3c_0_core_clk", "l4_mp_clk", NULL, 1, 0,
-	  0x7C, 18, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I3C_1_CORE_CLK, "i3c_1_core_clk", "l4_mp_clk", NULL, 1, 0,
-	  0x7C, 19, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_0_PCLK, "i2c_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 15,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_1_PCLK, "i2c_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 16,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_EMAC0_PCLK, "i2c_emac0_pclk", "l4_sp_clk", NULL, 1, 0,
-	  0x7C, 17, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_EMAC1_PCLK, "i2c_emac1_pclk", "l4_sp_clk", NULL, 1, 0,
-	  0x7C, 22, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_I2C_EMAC2_PCLK, "i2c_emac2_pclk", "l4_sp_clk", NULL, 1, 0,
-	  0x7C, 27, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_UART_0_PCLK, "uart_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 20,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_UART_1_PCLK, "uart_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 21,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPTIMER_0_PCLK, "sptimer_0_pclk", "l4_sp_clk", NULL, 1, 0,
-	  0x7C, 23, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SPTIMER_1_PCLK, "sptimer_1_pclk", "l4_sp_clk", NULL, 1, 0,
-	  0x7C, 24, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_S2F_USER0_CLK, "s2f_user0_clk", s2f_user0_mux, ARRAY_SIZE(s2f_user0_mux),
+	  0, 0x24, 6, 0, 0, 0, 0x30, 2, 0 },
+	{ AGILEX5_S2F_USER1_CLK, "s2f_user1_clk", s2f_user1_mux, ARRAY_SIZE(s2f_user1_mux),
+	  0, 0x7C, 6, 0, 0, 0, 0x88, 5, 0 },
+	{ AGILEX5_PSI_REF_CLK, "psi_ref_clk", psi_mux, ARRAY_SIZE(psi_mux),
+	  0, 0x7C, 7, 0, 0, 0, 0x88, 6, 0 },
+	{ AGILEX5_USB31_SUSPEND_CLK, "usb31_suspend_clk", usb31_mux, ARRAY_SIZE(usb31_mux),
+	  0, 0x7C, 25, 0, 0, 0, 0x88, 7, 0 },
+	{ AGILEX5_USB31_BUS_CLK_EARLY, "usb31_bus_clk_early", usb31_bus_clk_early_parents, 1,
+	  0, 0x7C, 25, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_USB2OTG_HCLK, "usb2otg_hclk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 8, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIM_0_CLK, "spim_0_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 9, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIM_1_CLK, "spim_1_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 11, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIS_0_CLK, "spis_0_clk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 12, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIS_1_CLK, "spis_1_clk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 13, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_DMA_CORE_CLK, "dma_core_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 14, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_DMA_HS_CLK, "dma_hs_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 14, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I3C_0_CORE_CLK, "i3c_0_core_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 18, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I3C_1_CORE_CLK, "i3c_1_core_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 19, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_0_PCLK, "i2c_0_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 15, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_1_PCLK, "i2c_1_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 16, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC0_PCLK, "i2c_emac0_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 17, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC1_PCLK, "i2c_emac1_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 22, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC2_PCLK, "i2c_emac2_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 27, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_UART_0_PCLK, "uart_0_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 20, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_UART_1_PCLK, "uart_1_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 21, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPTIMER_0_PCLK, "sptimer_0_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 23, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPTIMER_1_PCLK, "sptimer_1_pclk", l4_sp_clk_parent, 1,
+	  0, 0x7C, 24, 0, 0, 0, 0, 0, 0 },
 
 	/*NAND, SD/MMC and SoftPHY overall clocking*/
-	{ AGILEX5_DFI_CLK, "dfi_clk", "l4_mp_clk", NULL, 1, 0, 0, 0, 0x44, 16,
-	  2, 0, 0, 0 },
-	{ AGILEX5_NAND_NF_CLK, "nand_nf_clk", "dfi_clk", NULL, 1, 0, 0x7C, 10,
-	  0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_NAND_BCH_CLK, "nand_bch_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
-	  10, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SDMMC_SDPHY_REG_CLK, "sdmmc_sdphy_reg_clk", "l4_mp_clk", NULL,
-	  1, 0, 0x7C, 5, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SDMCLK, "sdmclk", "dfi_clk", NULL, 1, 0, 0x7C, 5, 0, 0, 0, 0,
-	  0, 0 },
-	{ AGILEX5_SOFTPHY_REG_PCLK, "softphy_reg_pclk", "l4_mp_clk", NULL, 1, 0,
-	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
-	{ AGILEX5_SOFTPHY_PHY_CLK, "softphy_phy_clk", "l4_mp_clk", NULL, 1, 0,
-	  0x7C, 26, 0x44, 16, 2, 0, 0, 0 },
-	{ AGILEX5_SOFTPHY_CTRL_CLK, "softphy_ctrl_clk", "dfi_clk", NULL, 1, 0,
-	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_DFI_CLK, "dfi_clk", l4_mp_clk_parent, 1,
+	  0, 0, 0, 0x44, 16, 2, 0, 0, 0 },
+	{ AGILEX5_NAND_NF_CLK, "nand_nf_clk", dfi_clk_parent, 1,
+	  0, 0x7C, 10, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_NAND_BCH_CLK, "nand_bch_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 10, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SDMMC_SDPHY_REG_CLK, "sdmmc_sdphy_reg_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 5, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SDMCLK, "sdmclk", dfi_clk_parent, 1,
+	  0, 0x7C, 5, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SOFTPHY_REG_PCLK, "softphy_reg_pclk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 26, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SOFTPHY_PHY_CLK, "softphy_phy_clk", l4_mp_clk_parent, 1,
+	  0, 0x7C, 26, 0x44, 16, 2, 0, 0, 0 },
+	{ AGILEX5_SOFTPHY_CTRL_CLK, "softphy_ctrl_clk", dfi_clk_parent, 1,
+	  0, 0x7C, 26, 0, 0, 0, 0, 0, 0 },
 };
 
 static int
@@ -709,16 +424,15 @@ agilex5_clk_register_c_perip(const struct stratix10_perip_c_clock *clks,
 	return 0;
 }
 
-static int
-agilex5_clk_register_cnt_perip(const struct stratix10_perip_cnt_clock *clks,
-			       int nums, struct stratix10_clock_data *data)
+static int agilex5_clk_register_cnt_perip(const struct agilex5_perip_cnt_clock *clks,
+					  int nums, struct stratix10_clock_data *data)
 {
 	struct clk_hw *hw_clk;
 	void __iomem *base = data->base;
 	int i;
 
 	for (i = 0; i < nums; i++) {
-		hw_clk = s10_register_cnt_periph(&clks[i], base);
+		hw_clk = agilex5_register_cnt_periph(&clks[i], base);
 		if (IS_ERR(hw_clk)) {
 			pr_err("%s: failed to register clock %s\n", __func__,
 			       clks[i].name);
@@ -730,8 +444,7 @@ agilex5_clk_register_cnt_perip(const struct stratix10_perip_cnt_clock *clks,
 	return 0;
 }
 
-static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
-				     int nums,
+static int agilex5_clk_register_gate(const struct agilex5_gate_clock *clks, int nums,
 				     struct stratix10_clock_data *data)
 {
 	struct clk_hw *hw_clk;
@@ -739,7 +452,7 @@ static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
 	int i;
 
 	for (i = 0; i < nums; i++) {
-		hw_clk = agilex_register_gate(&clks[i], base);
+		hw_clk = agilex5_register_gate(&clks[i], base);
 		if (IS_ERR(hw_clk)) {
 			pr_err("%s: failed to register clock %s\n", __func__,
 			       clks[i].name);
@@ -751,8 +464,8 @@ static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
 	return 0;
 }
 
-static int agilex5_clk_register_pll(const struct stratix10_pll_clock *clks,
-				    int nums, struct stratix10_clock_data *data)
+static int agilex5_clk_register_pll(const struct agilex5_pll_clock *clks, int nums,
+				    struct stratix10_clock_data *data)
 {
 	struct clk_hw *hw_clk;
 	void __iomem *base = data->base;
@@ -797,6 +510,7 @@ static int agilex5_clkmgr_probe(struct device *dev)
 	agilex5_clk_register_pll(agilex5_pll_clks, ARRAY_SIZE(agilex5_pll_clks),
 				 clk_data);
 
+	/* mainPLL C0, C1, C2, C3 and periph PLL C0, C1, C2, C3*/
 	agilex5_clk_register_c_perip(agilex5_main_perip_c_clks,
 				     ARRAY_SIZE(agilex5_main_perip_c_clks),
 				     clk_data);
diff --git a/drivers/clk/socfpga/clk-gate-s10.c b/drivers/clk/socfpga/clk-gate-s10.c
index c4f51b8674..f6330590a6 100644
--- a/drivers/clk/socfpga/clk-gate-s10.c
+++ b/drivers/clk/socfpga/clk-gate-s10.c
@@ -13,7 +13,7 @@
 #include "clk.h"
 
 #define SOCFPGA_CS_PDBG_CLK	"cs_pdbg_clk"
-#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw)
+#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw.hw)
 
 #define SOCFPGA_EMAC0_CLK		"emac0_clk"
 #define SOCFPGA_EMAC1_CLK		"emac1_clk"
@@ -68,8 +68,7 @@ static int socfpga_gate_get_parent(struct clk_hw *hwclk)
 	if (streq(name, SOCFPGA_EMAC0_CLK) ||
 	    streq(name, SOCFPGA_EMAC1_CLK) ||
 	    streq(name, SOCFPGA_EMAC2_CLK)) {
-		second_bypass = readl(socfpgaclk->bypass_reg -
-				      STRATIX10_BYPASS_OFFSET);
+		second_bypass = readl(socfpgaclk->bypass_reg - socfpgaclk->bypass_offset);
 		/* EMACA bypass to bootclk @0xB0 offset */
 		if (second_bypass & 0x1)
 			if (parent == 0) /* only applicable if parent is maca */
@@ -82,40 +81,9 @@ static int socfpga_gate_get_parent(struct clk_hw *hwclk)
 	return parent;
 }
 
-static int socfpga_agilex_gate_get_parent(struct clk_hw *hwclk)
-{
-	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
-	u32 mask, second_bypass;
-	u8 parent = 0;
-	const char *name = clk_hw_get_name(hwclk);
-
-	if (socfpgaclk->bypass_reg) {
-		mask = (0x1 << socfpgaclk->bypass_shift);
-		parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
-			  socfpgaclk->bypass_shift);
-	}
-
-	if (streq(name, SOCFPGA_EMAC0_CLK) ||
-	    streq(name, SOCFPGA_EMAC1_CLK) ||
-	    streq(name, SOCFPGA_EMAC2_CLK)) {
-		second_bypass = readl(socfpgaclk->bypass_reg -
-				      AGILEX_BYPASS_OFFSET);
-		/* EMACA bypass to bootclk @0x88 offset */
-		if (second_bypass & 0x1)
-			if (parent == 0) /* only applicable if parent is maca */
-				parent = BOOTCLK_BYPASS;
-
-		if (second_bypass & 0x2)
-			if (parent == 1) /* only applicable if parent is macb */
-				parent = BOOTCLK_BYPASS;
-	}
-
-	return parent;
-}
-
-static struct clk_ops agilex_gateclk_ops = {
+static const struct clk_ops agilex_gateclk_ops = {
 	.recalc_rate = socfpga_gate_clk_recalc_rate,
-	.get_parent = socfpga_agilex_gate_get_parent,
+	.get_parent = socfpga_gate_get_parent,
 };
 
 static const struct clk_ops dbgclk_ops = {
@@ -123,20 +91,17 @@ static const struct clk_ops dbgclk_ops = {
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
-	socfpga_clk->reg = regbase + clks->gate_reg;
-	socfpga_clk->bit_idx = clks->gate_idx;
 
-	agilex_gateclk_ops.enable = clk_gate_ops.enable;
-	agilex_gateclk_ops.disable = clk_gate_ops.disable;
+	socfpga_clk->hw.reg = regbase + clks->gate_reg;
+	socfpga_clk->hw.bit_idx = clks->gate_idx;
 
 	socfpga_clk->fixed_div = clks->fixed_div;
 
@@ -154,25 +119,24 @@ struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks, voi
 		socfpga_clk->bypass_reg = NULL;
 	socfpga_clk->bypass_shift = clks->bypass_shift;
 
-	if (streq(clks->name, "cs_pdbg_clk"))
+	if (streq(clks->name, "cs_pdbg_clk")) {
+		socfpga_clk->bypass_offset = STRATIX10_BYPASS_OFFSET;
 		init.ops = &dbgclk_ops;
-	else
+	} else {
+		socfpga_clk->bypass_offset = AGILEX_BYPASS_OFFSET;
 		init.ops = &agilex_gateclk_ops;
+	}
+
 	init.name = clks->name;
 	init.flags = clks->flags;
-
 	init.num_parents = clks->num_parents;
-	init.parent_names = parent_name ? &parent_name : NULL;
-	if (init.parent_names == NULL)
-		init.parent_data = clks->parent_data;
-	socfpga_clk->hw.init = &init;
-
-	hw_clk = &socfpga_clk->hw;
+	init.parent_names = clks->parent_names;
+	socfpga_clk->hw.hw.init = &init;
+	hw_clk = &socfpga_clk->hw.hw;
 
-	ret = clk_hw_register(NULL, &socfpga_clk->hw);
-	if (ret) {
-		kfree(socfpga_clk);
+	ret = clk_hw_register(NULL, &socfpga_clk->hw.hw);
+	if (ret)
 		return ERR_PTR(ret);
-	}
+
 	return hw_clk;
 }
diff --git a/drivers/clk/socfpga/clk-periph-s10.c b/drivers/clk/socfpga/clk-periph-s10.c
index 3689b08f7d..2bfa5ebe86 100644
--- a/drivers/clk/socfpga/clk-periph-s10.c
+++ b/drivers/clk/socfpga/clk-periph-s10.c
@@ -155,3 +155,43 @@ struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *c
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
+		periph_clk->reg = regbase + clks->offset;
+	else
+		periph_clk->reg = NULL;
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
+	periph_clk->hw.init = &init;
+	hw_clk = &periph_clk->hw;
+
+	ret = clk_hw_register(NULL, hw_clk);
+	if (ret) {
+		kfree(periph_clk);
+		return ERR_PTR(ret);
+	}
+
+	return hw_clk;
+}
diff --git a/drivers/clk/socfpga/clk-pll-s10.c b/drivers/clk/socfpga/clk-pll-s10.c
index 2b1e8f60c3..74f1010b60 100644
--- a/drivers/clk/socfpga/clk-pll-s10.c
+++ b/drivers/clk/socfpga/clk-pll-s10.c
@@ -87,20 +87,33 @@ static int clk_boot_get_parent(struct clk_hw *hwclk)
 		SWCTRLBTCLKSEL_MASK;
 }
 
-/* TODO need to fix, Agilex5 SM requires change */
+static int clk_pll_enable(struct clk_hw *hwclk)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
+	u32 reg;
+
+	/* Bring PLL out of reset */
+	reg = readl(socfpgaclk->reg);
+	reg |= SOCFPGA_PLL_RESET_MASK;
+	writel(reg, socfpgaclk->reg);
+
+	return 0;
+}
+
 static const struct clk_ops agilex5_clk_pll_ops = {
-	/* TODO This may require a custom Agilex5 implementation */
 	.recalc_rate = agilex_clk_pll_recalc_rate,
 	.get_parent = clk_pll_get_parent,
+	.enable = clk_pll_enable,
 };
 
 static const struct clk_ops clk_boot_ops = {
 	.recalc_rate = clk_boot_clk_recalc_rate,
 	.get_parent = clk_boot_get_parent,
+	.enable = clk_pll_enable,
 };
 
-struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
-				void __iomem *reg)
+struct clk_hw *agilex5_register_pll(const struct agilex5_pll_clock *clks,
+				    void __iomem *reg)
 {
 	struct clk_hw *hw_clk;
 	struct socfpga_pll *pll_clk;
@@ -109,6 +122,7 @@ struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
 	int ret;
 
 	pll_clk = xzalloc(sizeof(*pll_clk));
+
 	pll_clk->reg = reg + clks->offset;
 
 	if (streq(name, SOCFPGA_BOOT_CLK))
@@ -118,20 +132,16 @@ struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
 
 	init.name = name;
 	init.flags = clks->flags;
-
 	init.num_parents = clks->num_parents;
-	init.parent_names = NULL;
-	init.parent_data = clks->parent_data;
+	init.parent_names = clks->parent_names;
 	pll_clk->hw.init = &init;
-
 	pll_clk->bit_idx = SOCFPGA_PLL_POWER;
 	hw_clk = &pll_clk->hw;
 
 	ret = clk_hw_register(NULL, hw_clk);
-	if (ret) {
-		kfree(pll_clk);
+	if (ret)
 		return ERR_PTR(ret);
-	}
+
 	return hw_clk;
 }
 
diff --git a/drivers/clk/socfpga/clk.h b/drivers/clk/socfpga/clk.h
index cc682ee4e0..ede66165ac 100644
--- a/drivers/clk/socfpga/clk.h
+++ b/drivers/clk/socfpga/clk.h
@@ -61,6 +61,7 @@ struct socfpga_gate_clk {
 	u32 fixed_div;
 	void __iomem *div_reg;
 	void __iomem *bypass_reg;
+	u32 bypass_offset;
 	struct regmap *sys_mgr_base_addr;
 	u32 width;	/* only valid if div_reg != 0 */
 	u32 shift;	/* only valid if div_reg != 0 */
diff --git a/drivers/clk/socfpga/stratix10-clk.h b/drivers/clk/socfpga/stratix10-clk.h
index 1fe025f65f..9ca9e01dbf 100644
--- a/drivers/clk/socfpga/stratix10-clk.h
+++ b/drivers/clk/socfpga/stratix10-clk.h
@@ -62,12 +62,52 @@ struct stratix10_gate_clock {
 	u8			fixed_div;
 };
 
-struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
-				void __iomem *reg);
+struct agilex5_pll_clock {
+	unsigned int		 id;
+	const char		*name;
+	const char *const	*parent_names;
+	u8			 num_parents;
+	unsigned long		 flags;
+	unsigned long		 offset;
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
+
 struct clk_hw *s10_register_periph(const struct stratix10_perip_c_clock *clks,
 				void __iomem *reg);
 struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *clks,
 				    void __iomem *reg);
-struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks,
-			      void __iomem *reg);
 #endif	/* __STRATIX10_CLK_H */

---
base-commit: d6f0974673c0e3da00f8d0789d6302a43f3e478d
change-id: 20251215-v2025-11-0-topic-socfpga-agilex5-clk-9a466c7f1c31

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



