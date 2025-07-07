Delivery-date: Mon, 07 Jul 2025 13:55:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRp-00F12G-2N
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 13:55:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRl-0002sg-5k
	for lore@pengutronix.de; Mon, 07 Jul 2025 13:55:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lilp5CQ6WrSSVIZZcXcSupewNbjosE1e6MCgdXk1CnY=; b=td/CIdcDtAzHcQ8HoBSDBbsc0n
	0R+OixHsejkbXJxWMm7UJPH5eLlOz5hxbxPRtG0uisb8PMlHOtKPh94VEI7RAkT6CaenZk6vzKxyl
	r6m4NSsmB6VWnuZVpioBQsM3jfzaZlTVrnXcCq6eu0iZZjZ+ziF7wbzlQUEXaOrWYI4C9l/L1L+U5
	qz2TonI2KK/bmxS0bvB/FZ2vggCmzZUbd2F+wKIy0gUzXqBNmrReX6ioP/KZwE3rRj34kkgOEMdty
	PCAEKl1XH2Ai0Q2/V6b/we4dKqPDAAjKM7eFgECREqx/wmAboKOzBk3E8Y7jrEstJj8dHGpSt514u
	d1TBMEuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkQs-00000002LTm-2Htl;
	Mon, 07 Jul 2025 11:54:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjvx-00000002GeX-2qxI
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 11:22:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uYjvw-0001uY-3I; Mon, 07 Jul 2025 13:22:52 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 07 Jul 2025 13:22:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-7-af7ee9182480@pengutronix.de>
References: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
In-Reply-To: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_042254_047332_8C8D3851 
X-CRM114-Status: GOOD (  14.88  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 07/10] clk: socfpga: add agilex5 clock support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the Stratix10 and Agilex5 pll,gate and periph clocks.

Only tested on Agilex5.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/socfpga/Makefile         |   4 +-
 drivers/clk/socfpga/clk-agilex5.c    | 829 +++++++++++++++++++++++++++++++++++
 drivers/clk/socfpga/clk-gate-s10.c   | 178 ++++++++
 drivers/clk/socfpga/clk-periph-s10.c | 157 +++++++
 drivers/clk/socfpga/clk-pll-s10.c    | 137 ++++++
 drivers/clk/socfpga/clk.h            |   9 +
 drivers/clk/socfpga/stratix10-clk.h  |  73 +++
 7 files changed, 1386 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/socfpga/Makefile b/drivers/clk/socfpga/Makefile
index 0a195cbf3f8efe2828cc2eade549d550001f0ca1..bd6f2266fc6847d3201d3fcb536e8061816ac8e3 100644
--- a/drivers/clk/socfpga/Makefile
+++ b/drivers/clk/socfpga/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y	+= clk.o
+obj-$(CONFIG_ARCH_SOCFPGA_CYCLONE5)	+= clk.o
+obj-$(CONFIG_ARCH_SOCFPGA_ARRIA10)	+= clk.o
 
 obj-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += clk-gate-a10.o clk-periph-a10.o clk-pll-a10.o
+obj-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += clk-agilex5.o clk-pll-s10.o clk-periph-s10.o clk-gate-s10.o
diff --git a/drivers/clk/socfpga/clk-agilex5.c b/drivers/clk/socfpga/clk-agilex5.c
new file mode 100644
index 0000000000000000000000000000000000000000..f61b346ba4db97d2c1e7783c03b25ff861499bbd
--- /dev/null
+++ b/drivers/clk/socfpga/clk-agilex5.c
@@ -0,0 +1,829 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022, Intel Corporation
+ */
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/clk-provider.h>
+#include <dt-bindings/clock/intel,agilex5-clkmgr.h>
+
+#include "stratix10-clk.h"
+
+static const struct clk_parent_data pll_mux[] = {
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data boot_mux[] = {
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+};
+
+static const struct clk_parent_data core0_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c0",
+		.name = "peri_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core1_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c0",
+		.name = "peri_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core2_free_mux[] = {
+	{
+		.fw_name = "main_pll_c0",
+		.name = "main_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core3_free_mux[] = {
+	{
+		.fw_name = "main_pll_c0",
+		.name = "main_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data dsu_free_mux[] = {
+	{
+		.fw_name = "main_pll_c2",
+		.name = "main_pll_c2",
+	},
+	{
+		.fw_name = "peri_pll_c0",
+		.name = "peri_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data noc_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c1",
+		.name = "peri_pll_c1",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data emaca_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data emacb_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data emac_ptp_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data gpio_db_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c1",
+		.name = "peri_pll_c1",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data psi_ref_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data usb31_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c2",
+		.name = "peri_pll_c2",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data s2f_usr0_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data s2f_usr1_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core0_mux[] = {
+	{
+		.fw_name = "core0_free_clk",
+		.name = "core0_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data core1_mux[] = {
+	{
+		.fw_name = "core1_free_clk",
+		.name = "core1_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data core2_mux[] = {
+	{
+		.fw_name = "core2_free_clk",
+		.name = "core2_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data core3_mux[] = {
+	{
+		.fw_name = "core3_free_clk",
+		.name = "core3_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data dsu_mux[] = {
+	{
+		.fw_name = "dsu_free_clk",
+		.name = "dsu_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data emac_mux[] = {
+	{
+		.fw_name = "emaca_free_clk",
+		.name = "emaca_free_clk",
+	},
+	{
+		.fw_name = "emacb_free_clk",
+		.name = "emacb_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data noc_mux[] = {
+	{
+		.fw_name = "noc_free_clk",
+		.name = "noc_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data s2f_user0_mux[] = {
+	{
+		.fw_name = "s2f_user0_free_clk",
+		.name = "s2f_user0_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data s2f_user1_mux[] = {
+	{
+		.fw_name = "s2f_user1_free_clk",
+		.name = "s2f_user1_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data psi_mux[] = {
+	{
+		.fw_name = "psi_ref_free_clk",
+		.name = "psi_ref_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data gpio_db_mux[] = {
+	{
+		.fw_name = "gpio_db_free_clk",
+		.name = "gpio_db_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data emac_ptp_mux[] = {
+	{
+		.fw_name = "emac_ptp_free_clk",
+		.name = "emac_ptp_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data usb31_mux[] = {
+	{
+		.fw_name = "usb31_free_clk",
+		.name = "usb31_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+/*
+ * TODO - Clocks in AO (always on) controller
+ * 2 main PLLs only
+ */
+static const struct stratix10_pll_clock agilex5_pll_clks[] = {
+	{ AGILEX5_BOOT_CLK, "boot_clk", boot_mux, ARRAY_SIZE(boot_mux), 0,
+	  0x0 },
+	{ AGILEX5_MAIN_PLL_CLK, "main_pll", pll_mux, ARRAY_SIZE(pll_mux), 0,
+	  0x48 },
+	{ AGILEX5_PERIPH_PLL_CLK, "periph_pll", pll_mux, ARRAY_SIZE(pll_mux), 0,
+	  0x9C },
+};
+
+static const struct stratix10_perip_c_clock agilex5_main_perip_c_clks[] = {
+	{ AGILEX5_MAIN_PLL_C0_CLK, "main_pll_c0", "main_pll", NULL, 1, 0,
+	  0x5C },
+	{ AGILEX5_MAIN_PLL_C1_CLK, "main_pll_c1", "main_pll", NULL, 1, 0,
+	  0x60 },
+	{ AGILEX5_MAIN_PLL_C2_CLK, "main_pll_c2", "main_pll", NULL, 1, 0,
+	  0x64 },
+	{ AGILEX5_MAIN_PLL_C3_CLK, "main_pll_c3", "main_pll", NULL, 1, 0,
+	  0x68 },
+	{ AGILEX5_PERIPH_PLL_C0_CLK, "peri_pll_c0", "periph_pll", NULL, 1, 0,
+	  0xB0 },
+	{ AGILEX5_PERIPH_PLL_C1_CLK, "peri_pll_c1", "periph_pll", NULL, 1, 0,
+	  0xB4 },
+	{ AGILEX5_PERIPH_PLL_C2_CLK, "peri_pll_c2", "periph_pll", NULL, 1, 0,
+	  0xB8 },
+	{ AGILEX5_PERIPH_PLL_C3_CLK, "peri_pll_c3", "periph_pll", NULL, 1, 0,
+	  0xBC },
+};
+
+/* Non-SW clock-gated enabled clocks */
+static const struct stratix10_perip_cnt_clock agilex5_main_perip_cnt_clks[] = {
+	{ AGILEX5_CORE0_FREE_CLK, "core0_free_clk", NULL, core0_free_mux,
+	ARRAY_SIZE(core0_free_mux), 0, 0x0104, 0, 0, 0},
+	{ AGILEX5_CORE1_FREE_CLK, "core1_free_clk", NULL, core1_free_mux,
+	ARRAY_SIZE(core1_free_mux), 0, 0x0104, 0, 0, 0},
+	{ AGILEX5_CORE2_FREE_CLK, "core2_free_clk", NULL, core2_free_mux,
+	ARRAY_SIZE(core2_free_mux), 0, 0x010C, 0, 0, 0},
+	{ AGILEX5_CORE3_FREE_CLK, "core3_free_clk", NULL, core3_free_mux,
+	ARRAY_SIZE(core3_free_mux), 0, 0x0110, 0, 0, 0},
+	{ AGILEX5_DSU_FREE_CLK, "dsu_free_clk", NULL, dsu_free_mux,
+	ARRAY_SIZE(dsu_free_mux), 0, 0x0100, 0, 0, 0},
+	{ AGILEX5_NOC_FREE_CLK, "noc_free_clk", NULL, noc_free_mux,
+	  ARRAY_SIZE(noc_free_mux), 0, 0x40, 0, 0, 0 },
+	{ AGILEX5_EMAC_A_FREE_CLK, "emaca_free_clk", NULL, emaca_free_mux,
+	  ARRAY_SIZE(emaca_free_mux), 0, 0xD4, 0, 0x88, 0 },
+	{ AGILEX5_EMAC_B_FREE_CLK, "emacb_free_clk", NULL, emacb_free_mux,
+	  ARRAY_SIZE(emacb_free_mux), 0, 0xD8, 0, 0x88, 1 },
+	{ AGILEX5_EMAC_PTP_FREE_CLK, "emac_ptp_free_clk", NULL,
+	  emac_ptp_free_mux, ARRAY_SIZE(emac_ptp_free_mux), 0, 0xDC, 0, 0x88,
+	  2 },
+	{ AGILEX5_GPIO_DB_FREE_CLK, "gpio_db_free_clk", NULL, gpio_db_free_mux,
+	  ARRAY_SIZE(gpio_db_free_mux), 0, 0xE0, 0, 0x88, 3 },
+	{ AGILEX5_S2F_USER0_FREE_CLK, "s2f_user0_free_clk", NULL,
+	  s2f_usr0_free_mux, ARRAY_SIZE(s2f_usr0_free_mux), 0, 0xE8, 0, 0x30,
+	  2 },
+	{ AGILEX5_S2F_USER1_FREE_CLK, "s2f_user1_free_clk", NULL,
+	  s2f_usr1_free_mux, ARRAY_SIZE(s2f_usr1_free_mux), 0, 0xEC, 0, 0x88,
+	  5 },
+	{ AGILEX5_PSI_REF_FREE_CLK, "psi_ref_free_clk", NULL, psi_ref_free_mux,
+	  ARRAY_SIZE(psi_ref_free_mux), 0, 0xF0, 0, 0x88, 6 },
+	{ AGILEX5_USB31_FREE_CLK, "usb31_free_clk", NULL, usb31_free_mux,
+	  ARRAY_SIZE(usb31_free_mux), 0, 0xF8, 0, 0x88, 7},
+};
+
+/* SW Clock gate enabled clocks */
+static const struct stratix10_gate_clock agilex5_gate_clks[] = {
+
+	/* TODO HW Managed Clocks list */
+
+	/* TODO SW Managed Clocks list */
+
+	/* Main PLL0 Begin */
+	/* MPU clocks */
+	{ AGILEX5_CORE0_CLK, "core0_clk", NULL, core0_mux,
+	  ARRAY_SIZE(core0_mux), 0, 0x24, 8, 0, 0, 0, 0x30, 5, 0 },
+	{ AGILEX5_CORE1_CLK, "core1_clk", NULL, core1_mux,
+	  ARRAY_SIZE(core1_mux), 0, 0x24, 9, 0, 0, 0, 0x30, 5, 0 },
+	{ AGILEX5_CORE2_CLK, "core2_clk", NULL, core2_mux,
+	  ARRAY_SIZE(core2_mux), 0, 0x24, 10, 0, 0, 0, 0x30, 6, 0 },
+	{ AGILEX5_CORE3_CLK, "core3_clk", NULL, core3_mux,
+	  ARRAY_SIZE(core3_mux), 0, 0x24, 11, 0, 0, 0, 0x30, 7, 0 },
+	{ AGILEX5_MPU_CLK, "dsu_clk", NULL, dsu_mux, ARRAY_SIZE(dsu_mux), 0, 0,
+	  0, 0, 0, 0, 0x34, 4, 0 },
+	{ AGILEX5_MPU_PERIPH_CLK, "mpu_periph_clk", NULL, dsu_mux,
+	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 20, 2, 0x34, 4, 0 },
+	{ AGILEX5_MPU_CCU_CLK, "mpu_ccu_clk", NULL, dsu_mux,
+	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 18, 2, 0x34, 4, 0 },
+
+	/* ANGTS TODO l4 main clk has no divider now. To check. */
+	{ AGILEX5_L4_MAIN_CLK, "l4_main_clk", NULL, noc_mux,
+	  ARRAY_SIZE(noc_mux), 0, 0x24, 1, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_L4_MP_CLK, "l4_mp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
+	  0x24, 2, 0x44, 4, 2, 0x30, 1, 0 },
+	{ AGILEX5_L4_SYS_FREE_CLK, "l4_sys_free_clk", NULL, noc_mux,
+	  ARRAY_SIZE(noc_mux), 0, 0, 0, 0x44, 2, 2, 0x30, 1, 0 },
+	{ AGILEX5_L4_SP_CLK, "l4_sp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux),
+	  CLK_IS_CRITICAL, 0x24, 3, 0x44, 6, 2, 0x30, 1, 0 },
+
+	/* Core sight clocks*/
+	{ AGILEX5_CS_AT_CLK, "cs_at_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
+	  0x24, 4, 0x44, 24, 2, 0x30, 1, 0 },
+	{ AGILEX5_CS_TRACE_CLK, "cs_trace_clk", NULL, noc_mux,
+	  ARRAY_SIZE(noc_mux), 0, 0x24, 4, 0x44, 26, 2, 0x30, 1, 0 },
+	{ AGILEX5_CS_PDBG_CLK, "cs_pdbg_clk", "cs_at_clk", NULL, 1, 0, 0x24, 4,
+	  0x44, 28, 1, 0, 0, 0 },
+	/* Main PLL0 End */
+
+	/* Main Peripheral PLL1 Begin */
+	{ AGILEX5_EMAC0_CLK, "emac0_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	  0, 0x7C, 0, 0, 0, 0, 0x94, 26, 0 },
+	{ AGILEX5_EMAC1_CLK, "emac1_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	  0, 0x7C, 1, 0, 0, 0, 0x94, 27, 0 },
+	{ AGILEX5_EMAC2_CLK, "emac2_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	  0, 0x7C, 2, 0, 0, 0, 0x94, 28, 0 },
+	{ AGILEX5_EMAC_PTP_CLK, "emac_ptp_clk", NULL, emac_ptp_mux,
+	  ARRAY_SIZE(emac_ptp_mux), 0, 0x7C, 3, 0, 0, 0, 0x88, 2, 0 },
+	{ AGILEX5_GPIO_DB_CLK, "gpio_db_clk", NULL, gpio_db_mux,
+	  ARRAY_SIZE(gpio_db_mux), 0, 0x7C, 4, 0x98, 0, 16, 0x88, 3, 1 },
+	  /* Main Peripheral PLL1 End */
+
+	  /* Peripheral clocks  */
+	{ AGILEX5_S2F_USER0_CLK, "s2f_user0_clk", NULL, s2f_user0_mux,
+	  ARRAY_SIZE(s2f_user0_mux), 0, 0x24, 6, 0, 0, 0, 0x30, 2, 0 },
+	{ AGILEX5_S2F_USER1_CLK, "s2f_user1_clk", NULL, s2f_user1_mux,
+	  ARRAY_SIZE(s2f_user1_mux), 0, 0x7C, 6, 0, 0, 0, 0x88, 5, 0 },
+	{ AGILEX5_PSI_REF_CLK, "psi_ref_clk", NULL, psi_mux,
+	  ARRAY_SIZE(psi_mux), 0, 0x7C, 7, 0, 0, 0, 0x88, 6, 0 },
+	{ AGILEX5_USB31_SUSPEND_CLK, "usb31_suspend_clk", NULL, usb31_mux,
+	  ARRAY_SIZE(usb31_mux), 0, 0x7C, 25, 0, 0, 0, 0x88, 7, 0 },
+	{ AGILEX5_USB31_BUS_CLK_EARLY, "usb31_bus_clk_early", "l4_main_clk",
+	  NULL, 1, 0, 0x7C, 25, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_USB2OTG_HCLK, "usb2otg_hclk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	  8, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIM_0_CLK, "spim_0_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 9,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIM_1_CLK, "spim_1_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 11,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIS_0_CLK, "spis_0_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 12,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIS_1_CLK, "spis_1_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 13,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_DMA_CORE_CLK, "dma_core_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	  14, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_DMA_HS_CLK, "dma_hs_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 14,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I3C_0_CORE_CLK, "i3c_0_core_clk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 18, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I3C_1_CORE_CLK, "i3c_1_core_clk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 19, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_0_PCLK, "i2c_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 15,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_1_PCLK, "i2c_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 16,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC0_PCLK, "i2c_emac0_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 17, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC1_PCLK, "i2c_emac1_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 22, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC2_PCLK, "i2c_emac2_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 27, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_UART_0_PCLK, "uart_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 20,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_UART_1_PCLK, "uart_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 21,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPTIMER_0_PCLK, "sptimer_0_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 23, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPTIMER_1_PCLK, "sptimer_1_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 24, 0, 0, 0, 0, 0, 0 },
+
+	/*NAND, SD/MMC and SoftPHY overall clocking*/
+	{ AGILEX5_DFI_CLK, "dfi_clk", "l4_mp_clk", NULL, 1, 0, 0, 0, 0x44, 16,
+	  2, 0, 0, 0 },
+	{ AGILEX5_NAND_NF_CLK, "nand_nf_clk", "dfi_clk", NULL, 1, 0, 0x7C, 10,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_NAND_BCH_CLK, "nand_bch_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	  10, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SDMMC_SDPHY_REG_CLK, "sdmmc_sdphy_reg_clk", "l4_mp_clk", NULL,
+	  1, 0, 0x7C, 5, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SDMCLK, "sdmclk", "dfi_clk", NULL, 1, 0, 0x7C, 5, 0, 0, 0, 0,
+	  0, 0 },
+	{ AGILEX5_SOFTPHY_REG_PCLK, "softphy_reg_pclk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SOFTPHY_PHY_CLK, "softphy_phy_clk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 26, 0x44, 16, 2, 0, 0, 0 },
+	{ AGILEX5_SOFTPHY_CTRL_CLK, "softphy_ctrl_clk", "dfi_clk", NULL, 1, 0,
+	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
+};
+
+static int
+agilex5_clk_register_c_perip(const struct stratix10_perip_c_clock *clks,
+			     int nums, struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = s10_register_periph(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+	return 0;
+}
+
+static int
+agilex5_clk_register_cnt_perip(const struct stratix10_perip_cnt_clock *clks,
+			       int nums, struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = s10_register_cnt_periph(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+
+	return 0;
+}
+
+static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
+				     int nums,
+				     struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = agilex_register_gate(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+
+	return 0;
+}
+
+static int agilex5_clk_register_pll(const struct stratix10_pll_clock *clks,
+				    int nums, struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = agilex5_register_pll(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+
+	return 0;
+}
+
+static int agilex5_clkmgr_probe(struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct stratix10_clock_data *clk_data;
+	struct resource *res;
+	int i, num_clks;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	num_clks = AGILEX5_NUM_CLKS;
+
+	clk_data = xzalloc(struct_size(clk_data, clk_data.hws, num_clks));
+	if (!clk_data)
+		return -ENOMEM;
+
+	for (i = 0; i < num_clks; i++)
+		clk_data->clk_data.hws[i] = ERR_PTR(-ENOENT);
+
+	clk_data->base = IOMEM(res->start);
+	clk_data->clk_data.num = num_clks;
+
+	agilex5_clk_register_pll(agilex5_pll_clks, ARRAY_SIZE(agilex5_pll_clks),
+				 clk_data);
+
+	agilex5_clk_register_c_perip(agilex5_main_perip_c_clks,
+				     ARRAY_SIZE(agilex5_main_perip_c_clks),
+				     clk_data);
+
+	agilex5_clk_register_cnt_perip(agilex5_main_perip_cnt_clks,
+				       ARRAY_SIZE(agilex5_main_perip_cnt_clks),
+				       clk_data);
+
+	agilex5_clk_register_gate(agilex5_gate_clks,
+				  ARRAY_SIZE(agilex5_gate_clks), clk_data);
+
+	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, &clk_data->clk_data);
+	return 0;
+}
+
+static const struct of_device_id agilex5_clkmgr_match_table[] = {
+	{
+		.compatible = "intel,agilex5-clkmgr",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver agilex5_clkmgr_driver = {
+	.name	= "agilex5-clkmgr",
+	.of_match_table = agilex5_clkmgr_match_table,
+	.probe	= agilex5_clkmgr_probe,
+};
+
+core_platform_driver(agilex5_clkmgr_driver);
diff --git a/drivers/clk/socfpga/clk-gate-s10.c b/drivers/clk/socfpga/clk-gate-s10.c
new file mode 100644
index 0000000000000000000000000000000000000000..c4f51b86740a259363af2061c85e17fe395d4ce1
--- /dev/null
+++ b/drivers/clk/socfpga/clk-gate-s10.c
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017, Intel Corporation
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+
+#include "stratix10-clk.h"
+#include "clk.h"
+
+#define SOCFPGA_CS_PDBG_CLK	"cs_pdbg_clk"
+#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw)
+
+#define SOCFPGA_EMAC0_CLK		"emac0_clk"
+#define SOCFPGA_EMAC1_CLK		"emac1_clk"
+#define SOCFPGA_EMAC2_CLK		"emac2_clk"
+#define AGILEX_BYPASS_OFFSET		0xC
+#define STRATIX10_BYPASS_OFFSET		0x2C
+#define BOOTCLK_BYPASS			2
+
+static unsigned long socfpga_gate_clk_recalc_rate(struct clk_hw *hwclk,
+						  unsigned long parent_rate)
+{
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
+	u32 div = 1, val;
+
+	if (socfpgaclk->fixed_div) {
+		div = socfpgaclk->fixed_div;
+	} else if (socfpgaclk->div_reg) {
+		val = readl(socfpgaclk->div_reg) >> socfpgaclk->shift;
+		val &= GENMASK(socfpgaclk->width - 1, 0);
+		div = (1 << val);
+	}
+	return parent_rate / div;
+}
+
+static unsigned long socfpga_dbg_clk_recalc_rate(struct clk_hw *hwclk,
+						  unsigned long parent_rate)
+{
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
+	u32 div, val;
+
+	val = readl(socfpgaclk->div_reg) >> socfpgaclk->shift;
+	val &= GENMASK(socfpgaclk->width - 1, 0);
+	div = (1 << val);
+	div = div ? 4 : 1;
+
+	return parent_rate / div;
+}
+
+static int socfpga_gate_get_parent(struct clk_hw *hwclk)
+{
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
+	u32 mask, second_bypass;
+	u8 parent = 0;
+	const char *name = clk_hw_get_name(hwclk);
+
+	if (socfpgaclk->bypass_reg) {
+		mask = (0x1 << socfpgaclk->bypass_shift);
+		parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
+			  socfpgaclk->bypass_shift);
+	}
+
+	if (streq(name, SOCFPGA_EMAC0_CLK) ||
+	    streq(name, SOCFPGA_EMAC1_CLK) ||
+	    streq(name, SOCFPGA_EMAC2_CLK)) {
+		second_bypass = readl(socfpgaclk->bypass_reg -
+				      STRATIX10_BYPASS_OFFSET);
+		/* EMACA bypass to bootclk @0xB0 offset */
+		if (second_bypass & 0x1)
+			if (parent == 0) /* only applicable if parent is maca */
+				parent = BOOTCLK_BYPASS;
+
+		if (second_bypass & 0x2)
+			if (parent == 1) /* only applicable if parent is macb */
+				parent = BOOTCLK_BYPASS;
+	}
+	return parent;
+}
+
+static int socfpga_agilex_gate_get_parent(struct clk_hw *hwclk)
+{
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
+	u32 mask, second_bypass;
+	u8 parent = 0;
+	const char *name = clk_hw_get_name(hwclk);
+
+	if (socfpgaclk->bypass_reg) {
+		mask = (0x1 << socfpgaclk->bypass_shift);
+		parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
+			  socfpgaclk->bypass_shift);
+	}
+
+	if (streq(name, SOCFPGA_EMAC0_CLK) ||
+	    streq(name, SOCFPGA_EMAC1_CLK) ||
+	    streq(name, SOCFPGA_EMAC2_CLK)) {
+		second_bypass = readl(socfpgaclk->bypass_reg -
+				      AGILEX_BYPASS_OFFSET);
+		/* EMACA bypass to bootclk @0x88 offset */
+		if (second_bypass & 0x1)
+			if (parent == 0) /* only applicable if parent is maca */
+				parent = BOOTCLK_BYPASS;
+
+		if (second_bypass & 0x2)
+			if (parent == 1) /* only applicable if parent is macb */
+				parent = BOOTCLK_BYPASS;
+	}
+
+	return parent;
+}
+
+static struct clk_ops agilex_gateclk_ops = {
+	.recalc_rate = socfpga_gate_clk_recalc_rate,
+	.get_parent = socfpga_agilex_gate_get_parent,
+};
+
+static const struct clk_ops dbgclk_ops = {
+	.recalc_rate = socfpga_dbg_clk_recalc_rate,
+	.get_parent = socfpga_gate_get_parent,
+};
+
+struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks, void __iomem *regbase)
+{
+	struct clk_hw *hw_clk;
+	struct socfpga_gate_clk *socfpga_clk;
+	struct clk_init_data init;
+	const char *parent_name = clks->parent_name;
+	int ret;
+
+	socfpga_clk = xzalloc(sizeof(*socfpga_clk));
+	socfpga_clk->reg = regbase + clks->gate_reg;
+	socfpga_clk->bit_idx = clks->gate_idx;
+
+	agilex_gateclk_ops.enable = clk_gate_ops.enable;
+	agilex_gateclk_ops.disable = clk_gate_ops.disable;
+
+	socfpga_clk->fixed_div = clks->fixed_div;
+
+	if (clks->div_reg)
+		socfpga_clk->div_reg = regbase + clks->div_reg;
+	else
+		socfpga_clk->div_reg = NULL;
+
+	socfpga_clk->width = clks->div_width;
+	socfpga_clk->shift = clks->div_offset;
+
+	if (clks->bypass_reg)
+		socfpga_clk->bypass_reg = regbase + clks->bypass_reg;
+	else
+		socfpga_clk->bypass_reg = NULL;
+	socfpga_clk->bypass_shift = clks->bypass_shift;
+
+	if (streq(clks->name, "cs_pdbg_clk"))
+		init.ops = &dbgclk_ops;
+	else
+		init.ops = &agilex_gateclk_ops;
+	init.name = clks->name;
+	init.flags = clks->flags;
+
+	init.num_parents = clks->num_parents;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	if (init.parent_names == NULL)
+		init.parent_data = clks->parent_data;
+	socfpga_clk->hw.init = &init;
+
+	hw_clk = &socfpga_clk->hw;
+
+	ret = clk_hw_register(NULL, &socfpga_clk->hw);
+	if (ret) {
+		kfree(socfpga_clk);
+		return ERR_PTR(ret);
+	}
+	return hw_clk;
+}
diff --git a/drivers/clk/socfpga/clk-periph-s10.c b/drivers/clk/socfpga/clk-periph-s10.c
new file mode 100644
index 0000000000000000000000000000000000000000..3689b08f7d78a28f3226e90925e5ace819ad55b6
--- /dev/null
+++ b/drivers/clk/socfpga/clk-periph-s10.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017, Intel Corporation
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk-provider.h>
+
+#include "stratix10-clk.h"
+#include "clk.h"
+
+#define CLK_MGR_FREE_SHIFT		16
+#define CLK_MGR_FREE_MASK		0x7
+#define SWCTRLBTCLKSEN_SHIFT		8
+
+#define to_periph_clk(p) container_of(p, struct socfpga_periph_clk, hw)
+
+static unsigned long clk_peri_c_clk_recalc_rate(struct clk_hw *hwclk,
+					     unsigned long parent_rate)
+{
+	struct socfpga_periph_clk *socfpgaclk = to_periph_clk(hwclk);
+	u32 val;
+
+	val = readl(socfpgaclk->reg);
+	val &= GENMASK(SWCTRLBTCLKSEN_SHIFT - 1, 0);
+	parent_rate /= val;
+
+	return parent_rate;
+}
+
+static unsigned long clk_peri_cnt_clk_recalc_rate(struct clk_hw *hwclk,
+					     unsigned long parent_rate)
+{
+	struct socfpga_periph_clk *socfpgaclk = to_periph_clk(hwclk);
+	unsigned long div = 1;
+
+	if (socfpgaclk->fixed_div) {
+		div = socfpgaclk->fixed_div;
+	} else {
+		if (socfpgaclk->reg)
+			div = ((readl(socfpgaclk->reg) & 0x7ff) + 1);
+	}
+
+	return parent_rate / div;
+}
+
+static int clk_periclk_get_parent(struct clk_hw *hwclk)
+{
+	struct socfpga_periph_clk *socfpgaclk = to_periph_clk(hwclk);
+	u32 clk_src, mask;
+	u8 parent = 0;
+
+	/* handle the bypass first */
+	if (socfpgaclk->bypass_reg) {
+		mask = (0x1 << socfpgaclk->bypass_shift);
+		parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
+			   socfpgaclk->bypass_shift);
+		if (parent)
+			return parent;
+	}
+
+	if (socfpgaclk->reg) {
+		clk_src = readl(socfpgaclk->reg);
+		parent = (clk_src >> CLK_MGR_FREE_SHIFT) &
+			  CLK_MGR_FREE_MASK;
+	}
+	return parent;
+}
+
+static const struct clk_ops peri_c_clk_ops = {
+	.recalc_rate = clk_peri_c_clk_recalc_rate,
+	.get_parent = clk_periclk_get_parent,
+};
+
+static const struct clk_ops peri_cnt_clk_ops = {
+	.recalc_rate = clk_peri_cnt_clk_recalc_rate,
+	.get_parent = clk_periclk_get_parent,
+};
+
+struct clk_hw *s10_register_periph(const struct stratix10_perip_c_clock *clks,
+				void __iomem *reg)
+{
+	struct clk_hw *hw_clk;
+	struct socfpga_periph_clk *periph_clk;
+	struct clk_init_data init;
+	const char *name = clks->name;
+	const char *parent_name = clks->parent_name;
+	int ret;
+
+	periph_clk = xzalloc(sizeof(*periph_clk));
+	periph_clk->reg = reg + clks->offset;
+
+	init.name = name;
+	init.ops = &peri_c_clk_ops;
+	init.flags = clks->flags;
+
+	init.num_parents = clks->num_parents;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	if (init.parent_names == NULL)
+		init.parent_data = clks->parent_data;
+
+	periph_clk->hw.init = &init;
+	hw_clk = &periph_clk->hw;
+
+	ret = clk_hw_register(NULL, hw_clk);
+	if (ret) {
+		kfree(periph_clk);
+		return ERR_PTR(ret);
+	}
+	return hw_clk;
+}
+
+struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *clks,
+				    void __iomem *regbase)
+{
+	struct clk_hw *hw_clk;
+	struct socfpga_periph_clk *periph_clk;
+	struct clk_init_data init;
+	const char *name = clks->name;
+	const char *parent_name = clks->parent_name;
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
+
+	init.num_parents = clks->num_parents;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	if (init.parent_names == NULL)
+		init.parent_data = clks->parent_data;
+
+	periph_clk->hw.init = &init;
+	hw_clk = &periph_clk->hw;
+
+	ret = clk_hw_register(NULL, hw_clk);
+	if (ret) {
+		kfree(periph_clk);
+		return ERR_PTR(ret);
+	}
+	return hw_clk;
+}
diff --git a/drivers/clk/socfpga/clk-pll-s10.c b/drivers/clk/socfpga/clk-pll-s10.c
new file mode 100644
index 0000000000000000000000000000000000000000..2b1e8f60c3786f9c95d4f8746d196bc244719b0d
--- /dev/null
+++ b/drivers/clk/socfpga/clk-pll-s10.c
@@ -0,0 +1,137 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017, Intel Corporation
+ */
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+
+#include "stratix10-clk.h"
+#include "clk.h"
+
+/* Clock Manager offsets */
+#define CLK_MGR_PLL_CLK_SRC_SHIFT	16
+#define CLK_MGR_PLL_CLK_SRC_MASK	0x3
+
+/* PLL Clock enable bits */
+#define SOCFPGA_PLL_POWER		0
+#define SOCFPGA_PLL_RESET_MASK		0x2
+#define SOCFPGA_PLL_REFDIV_MASK		0x00003F00
+#define SOCFPGA_PLL_REFDIV_SHIFT	8
+#define SOCFPGA_PLL_AREFDIV_MASK	0x00000F00
+#define SOCFPGA_PLL_DREFDIV_MASK	0x00003000
+#define SOCFPGA_PLL_DREFDIV_SHIFT	12
+#define SOCFPGA_PLL_MDIV_MASK		0xFF000000
+#define SOCFPGA_PLL_MDIV_SHIFT		24
+#define SOCFPGA_AGILEX_PLL_MDIV_MASK	0x000003FF
+#define SWCTRLBTCLKSEL_MASK		0x200
+#define SWCTRLBTCLKSEL_SHIFT		9
+
+#define SOCFPGA_BOOT_CLK		"boot_clk"
+
+#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, hw)
+
+static unsigned long agilex_clk_pll_recalc_rate(struct clk_hw *hwclk,
+						unsigned long parent_rate)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
+	unsigned long arefdiv, reg, mdiv;
+	unsigned long long vco_freq;
+
+	/* read VCO1 reg for numerator and denominator */
+	reg = readl(socfpgaclk->reg);
+	arefdiv = (reg & SOCFPGA_PLL_AREFDIV_MASK) >> SOCFPGA_PLL_REFDIV_SHIFT;
+
+	vco_freq = (unsigned long long)parent_rate / arefdiv;
+
+	/* Read mdiv and fdiv from the fdbck register */
+	reg = readl(socfpgaclk->reg + 0x24);
+	mdiv = reg & SOCFPGA_AGILEX_PLL_MDIV_MASK;
+
+	vco_freq = (unsigned long long)vco_freq * mdiv;
+	return (unsigned long)vco_freq;
+}
+
+static unsigned long clk_boot_clk_recalc_rate(struct clk_hw *hwclk,
+					 unsigned long parent_rate)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
+	u32 div;
+
+	div = ((readl(socfpgaclk->reg) &
+		SWCTRLBTCLKSEL_MASK) >>
+		SWCTRLBTCLKSEL_SHIFT);
+	div += 1;
+	return parent_rate / div;
+}
+
+static int clk_pll_get_parent(struct clk_hw *hwclk)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
+	u32 pll_src;
+
+	pll_src = readl(socfpgaclk->reg);
+	return (pll_src >> CLK_MGR_PLL_CLK_SRC_SHIFT) &
+		CLK_MGR_PLL_CLK_SRC_MASK;
+}
+
+static int clk_boot_get_parent(struct clk_hw *hwclk)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
+	u32 pll_src;
+
+	pll_src = readl(socfpgaclk->reg);
+	return (pll_src >> SWCTRLBTCLKSEL_SHIFT) &
+		SWCTRLBTCLKSEL_MASK;
+}
+
+/* TODO need to fix, Agilex5 SM requires change */
+static const struct clk_ops agilex5_clk_pll_ops = {
+	/* TODO This may require a custom Agilex5 implementation */
+	.recalc_rate = agilex_clk_pll_recalc_rate,
+	.get_parent = clk_pll_get_parent,
+};
+
+static const struct clk_ops clk_boot_ops = {
+	.recalc_rate = clk_boot_clk_recalc_rate,
+	.get_parent = clk_boot_get_parent,
+};
+
+struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
+				void __iomem *reg)
+{
+	struct clk_hw *hw_clk;
+	struct socfpga_pll *pll_clk;
+	struct clk_init_data init;
+	const char *name = clks->name;
+	int ret;
+
+	pll_clk = xzalloc(sizeof(*pll_clk));
+	pll_clk->reg = reg + clks->offset;
+
+	if (streq(name, SOCFPGA_BOOT_CLK))
+		init.ops = &clk_boot_ops;
+	else
+		init.ops = &agilex5_clk_pll_ops;
+
+	init.name = name;
+	init.flags = clks->flags;
+
+	init.num_parents = clks->num_parents;
+	init.parent_names = NULL;
+	init.parent_data = clks->parent_data;
+	pll_clk->hw.init = &init;
+
+	pll_clk->bit_idx = SOCFPGA_PLL_POWER;
+	hw_clk = &pll_clk->hw;
+
+	ret = clk_hw_register(NULL, hw_clk);
+	if (ret) {
+		kfree(pll_clk);
+		return ERR_PTR(ret);
+	}
+	return hw_clk;
+}
+
diff --git a/drivers/clk/socfpga/clk.h b/drivers/clk/socfpga/clk.h
index 402f714436ab2f94dc5ecbad244915f0fa1c6194..19fc45e7f639583342b37422f30762d673421760 100644
--- a/drivers/clk/socfpga/clk.h
+++ b/drivers/clk/socfpga/clk.h
@@ -20,6 +20,11 @@
 #define SOCFPGA_MAX_PARENTS		5
 
 #define streq(a, b) (strcmp((a), (b)) == 0)
+#define SYSMGR_SDMMC_CTRL_SET(smplsel, drvsel) \
+	((((smplsel) & 0x7) << 3) | (((drvsel) & 0x7) << 0))
+
+#define SYSMGR_SDMMC_CTRL_SET_AS10(smplsel, drvsel) \
+	((((smplsel) & 0x7) << 4) | (((drvsel) & 0x7) << 0))
 
 extern void __iomem *clk_mgr_base_addr;
 
@@ -58,11 +63,13 @@ struct socfpga_gate_clk {
 	char *parent_name;
 	u32 fixed_div;
 	void __iomem *div_reg;
+	void __iomem *bypass_reg;
 	struct regmap *sys_mgr_base_addr;
 	u32 width;	/* only valid if div_reg != 0 */
 	u32 shift;	/* only valid if div_reg != 0 */
 	u32 bit_idx;
 	void __iomem *reg;
+	u32 bypass_shift;      /* only valid if bypass_reg != 0 */
 	u32 clk_phase[2];
 	const char *parent_names[SOCFPGA_MAX_PARENTS];
 };
@@ -73,8 +80,10 @@ struct socfpga_periph_clk {
 	char *parent_name;
 	u32 fixed_div;
 	void __iomem *div_reg;
+	void __iomem *bypass_reg;
 	u32 width;      /* only valid if div_reg != 0 */
 	u32 shift;      /* only valid if div_reg != 0 */
+	u32 bypass_shift;      /* only valid if bypass_reg != 0 */
 	const char *parent_names[SOCFPGA_MAX_PARENTS];
 };
 
diff --git a/drivers/clk/socfpga/stratix10-clk.h b/drivers/clk/socfpga/stratix10-clk.h
new file mode 100644
index 0000000000000000000000000000000000000000..1fe025f65f7a05faf00efc3991d2afc9c564d5ca
--- /dev/null
+++ b/drivers/clk/socfpga/stratix10-clk.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier:    GPL-2.0 */
+/*
+ * Copyright (C) 2017, Intel Corporation
+ */
+
+#ifndef	__STRATIX10_CLK_H
+#define	__STRATIX10_CLK_H
+
+struct stratix10_clock_data {
+	void __iomem		*base;
+
+	/* Must be last */
+	struct clk_hw_onecell_data	clk_data;
+};
+
+struct stratix10_pll_clock {
+	unsigned int		id;
+	const char		*name;
+	const struct clk_parent_data	*parent_data;
+	u8			num_parents;
+	unsigned long		flags;
+	unsigned long		offset;
+};
+
+struct stratix10_perip_c_clock {
+	unsigned int		id;
+	const char		*name;
+	const char		*parent_name;
+	const struct clk_parent_data	*parent_data;
+	u8			num_parents;
+	unsigned long		flags;
+	unsigned long		offset;
+};
+
+struct stratix10_perip_cnt_clock {
+	unsigned int		id;
+	const char		*name;
+	const char		*parent_name;
+	const struct clk_parent_data	*parent_data;
+	u8			num_parents;
+	unsigned long		flags;
+	unsigned long		offset;
+	u8			fixed_divider;
+	unsigned long		bypass_reg;
+	unsigned long		bypass_shift;
+};
+
+struct stratix10_gate_clock {
+	unsigned int		id;
+	const char		*name;
+	const char		*parent_name;
+	const struct clk_parent_data	*parent_data;
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
+struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
+				void __iomem *reg);
+struct clk_hw *s10_register_periph(const struct stratix10_perip_c_clock *clks,
+				void __iomem *reg);
+struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *clks,
+				    void __iomem *reg);
+struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks,
+			      void __iomem *reg);
+#endif	/* __STRATIX10_CLK_H */

-- 
2.46.0



