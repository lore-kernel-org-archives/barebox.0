Delivery-date: Mon, 29 Apr 2024 16:17:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1RoT-007hFL-0g
	for lore@lore.pengutronix.de;
	Mon, 29 Apr 2024 16:17:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1RoS-0007Hl-EZ
	for lore@pengutronix.de; Mon, 29 Apr 2024 16:17:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZiQEveRPjqqVeKtLLcsXCzVW8EWyIzHXNImA9hkJyPY=; b=D5SDAbsExmN3VJIgc2SWAY6RW2
	1N2PmcX+f21RPPwfeqH6g+mswD/kF2DcYOV8oqCGvuFwQtzNuOAgzeJ07iK72PKYClImkGNNj+IB8
	Lf8cK58pTAhAvuizFbz5HWtQkhet0Am1BJpBRcyg6zNz1pULEYJOjiZ46OP8HhXBELHeizEqRu0oc
	DgGlWmSY0d5wjpMIJ+rEvvdleLwBfGWxujqkhPe+IWZYFNzcL1ioJCkuZwBeTFk6IH3lSG7lnl3M6
	ZFe2h55E0KKZ7eWDbC2iR2ENDKaMGuQ+nkQxrtwvDJdDXq5rfyUmRH2PLzQAt2LwAAW9hVyYKwyel
	d/bsG0Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1Rnt-0000000366N-2EzL;
	Mon, 29 Apr 2024 14:16:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1Rnn-0000000365b-20ZL
	for barebox@lists.infradead.org;
	Mon, 29 Apr 2024 14:16:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1Rnk-000797-5o; Mon, 29 Apr 2024 16:16:16 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1Rnj-00Ezr0-KY; Mon, 29 Apr 2024 16:16:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1Rnj-00EvCQ-1k;
	Mon, 29 Apr 2024 16:16:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Alvin=20=C5=A0ipraga?= <ALSI@bang-olufsen.dk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Apr 2024 16:16:10 +0200
Message-Id: <20240429141610.3556452-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_071619_544391_F914E5D6 
X-CRM114-Status: GOOD (  19.23  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ddr: imx8m: fix broken sharing of DRAM timing with TF-A for DFS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To facilitate dynamic frequency scaling, barebox will place the DRAM
parameters it has configured into a well-known location in DRAM
for consumption by TF-A.

This means that we need to be very picky about the struct layout for the
data we write there to maintain ABI-compatibility. Unfortunately, NXP
chose for the i.MX9 to add two fields into the middle, when it would
have been possible to cleanly embed the i.MX8 DRAM timings in the
i.MX9 DRAM timing struct. This is done now, so we need to arrange
ourselves with it and ensure that the i.MX8M DRAM timings we share with
TF-A don't have glimpses of the i.MX9 future.

As templating dram_config_save using the preprocessor would be
excessively ugly, we add a fixup that turns the common dram_timing_info
format into the format expected by TF-A on the i.MX8M family of SoCs.

Fixes: e6234f907416 ("ddr: Initial i.MX9 support")
Reported-by: Alvin Šipraga <ALSI@bang-olufsen.dk>
Tested-by: Alvin Šipraga <ALSI@bang-olufsen.dk>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx/imx8m_ddr_init.c |  7 ++++
 include/soc/imx/ddr.h            | 62 +++++++++++++++++++++-----------
 2 files changed, 49 insertions(+), 20 deletions(-)

diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index d9a5d589f27b..c16e04d27483 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -481,6 +481,7 @@ static void ddrphy_init_set_dfi_clk(struct dram_controller *dram, unsigned int d
 
 int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_timing)
 {
+	struct dram_timing_info *saved_timing;
 	unsigned long src_ddrc_rcr = MX8M_SRC_DDRC_RCR_ADDR;
 	unsigned int tmp, initial_drate, target_freq;
 	int ret;
@@ -644,5 +645,11 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 	/* save the dram timing config into memory */
 	dram_config_save(dram, dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
 
+	saved_timing = (struct dram_timing_info *)IMX8M_SAVED_DRAM_TIMING_BASE;
+
+	/* There's no fsp_cfg for i.MX8, so we must close the gap again */
+	memmove(&saved_timing->fsp_config, &saved_timing->common_config,
+		sizeof(saved_timing->common_config));
+
 	return 0;
 }
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index 0225ac0e033c..caf33d3e34b9 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -6,6 +6,8 @@
 #ifndef __SOC_IMX_DDR_H
 #define __SOC_IMX_DDR_H
 
+#include <linux/stddef.h>
+
 /* user data type */
 enum fw_type {
 	FW_1D_IMAGE,
@@ -58,27 +60,47 @@ struct dram_fsp_msg {
 	__attribute__((deprecated("board-specific data here is ignored in favor of the defaults." \
 				  " You can probably remove the array")))
 
+/*
+ * The DRAM timing values are machine-generated by an NXP tool.
+ * This is evaluated by barebox to initialize and train the DDR and
+ * is then shared with TF-A to enable dynamic frequency scaling.
+ *
+ * To minimize both duplicate code and manual fixups needed for the
+ * NXP tool output, we use a struct definition that's a superset
+ * of both of i.MX8M and i.MX9. This means that each SoC type making
+ * use of this struct needs to translate it to the appropriate format
+ * expected by TF-A.
+ *
+ * i.e: Do not change the struct definition without adjusting
+ * dram_config_save and its callers to maintain ABI-compatibility.
+ */
 struct dram_timing_info {
-	/* umctl2 config */
-	struct dram_cfg_param *ddrc_cfg;
-	unsigned int ddrc_cfg_num;
-	/* fsp config */
-	struct dram_fsp_cfg *fsp_cfg;
-	unsigned int fsp_cfg_num;
-	/* ddrphy config */
-	struct dram_cfg_param *ddrphy_cfg;
-	unsigned int ddrphy_cfg_num;
-	/* ddr fsp train info */
-	struct dram_fsp_msg *fsp_msg;
-	unsigned int fsp_msg_num;
-	/* ddr phy trained CSR */
-	struct dram_cfg_param *ddrphy_trained_csr __deprecated_dram_timing_info;
-	unsigned int ddrphy_trained_csr_num __deprecated_dram_timing_info;
-	/* ddr phy PIE */
-	struct dram_cfg_param *ddrphy_pie;
-	unsigned int ddrphy_pie_num;
-	/* initialized drate table */
-	unsigned int fsp_table[4];
+	struct_group(umctl2_config,
+		struct dram_cfg_param *ddrc_cfg;
+		unsigned int ddrc_cfg_num;
+	);
+
+	struct_group(fsp_config, /* i.MX9-only */
+		struct dram_fsp_cfg *fsp_cfg;
+		unsigned int fsp_cfg_num;
+	);
+
+	struct_group(common_config,
+		/* ddrphy config */
+		struct dram_cfg_param *ddrphy_cfg;
+		unsigned int ddrphy_cfg_num;
+		/* ddr fsp train info */
+		struct dram_fsp_msg *fsp_msg;
+		unsigned int fsp_msg_num;
+		/* ddr phy trained CSR */
+		struct dram_cfg_param *ddrphy_trained_csr __deprecated_dram_timing_info;
+		unsigned int ddrphy_trained_csr_num __deprecated_dram_timing_info;
+		/* ddr phy PIE */
+		struct dram_cfg_param *ddrphy_pie;
+		unsigned int ddrphy_pie_num;
+		/* initialized drate table */
+		unsigned int fsp_table[4];
+	);
 };
 
 struct dram_controller {
-- 
2.39.2



