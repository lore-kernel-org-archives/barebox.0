Delivery-date: Fri, 10 Nov 2023 14:02:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R97-005rgJ-2h
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R97-0005AP-Mv
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fvhXl00qI1YG/oWegmTRyXURU3uMbGia3HELZeTv2Vw=; b=2HqCRiNoCrW9VfnfZrJs9RA+a5
	KjH0aL9lx/GBZcOJsocEt2fXz6vuB04k4bdVkxWBingcFoziVa+kgzYXQcTtQqFL+KvNRmkcbhw2i
	8+Vl0aITtm38zygdh+k3aReNwveCHr4uXm8H+UX2Ql6urG99AUwQMrEbJv6GfTBaSP9DSA+3JF8jP
	h/Ln2Lob8FjpqYdBrhMNkyNZmC88XWCJ2z4Zf/amTCuZHSXDcr+MjcStSH2NZbx2o/ITQLu5B7bSK
	c1xP7OqiowwVNKubgvoN5H6BrCX3bXafJs7l6Cx9AosCKPg+lNqFtGInWZ8tD+HSfqAVrbc50+O7c
	WWmGYImg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7z-008m1R-38;
	Fri, 10 Nov 2023 13:00:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwC-1Q
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fvhXl00qI1YG/oWegmTRyXURU3uMbGia3HELZeTv2Vw=; b=IIvCf4aI1U0/Tywjk1uJSdw2TL
	h+6NorXvN0F8t5FZLJlL5+Qg9BVH15jq2zFJlJK+FLiXpKSkeYRsS2BFmtXRs3tvmfBrywSC7Gn3b
	nDMwd9cbkHeXHF9W1swDTpFur9KTR1pAoFnP9+/TGzTQFRwjO7Mc/MXvdBF+A9kBuqHvgkniAAPRN
	Qs5c0h380Ubv45byXK6NFjlDXUstLnmiuT+WPOk4ATsA22e7YfB8HkKVxj955e2OvKqEfA25uCgoZ
	CO7xwEz9etnBdJi9/Bo/CBLG57zLEVTlJl1wVKHTtoTnr5TsJ/zIL4y2Hv7TOpLg22h4cOr+tCRZ8
	qyt09/PQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3r-0i
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043Q-Hh; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081ZM-Dj; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096Nt-18;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:27 +0100
Message-Id: <20231110130028.2123895-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_676257_DFE5ECBE 
X-CRM114-Status: GOOD (  18.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/13] ddr: move imx8m_ddr_old_spreadsheet to controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/helper.c         |  4 ++--
 drivers/ddr/imx/imx8m_ddr_init.c | 14 +++++++-------
 include/soc/imx/ddr.h            |  4 +++-
 include/soc/imx8m/ddr.h          |  2 --
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/ddr/imx/helper.c b/drivers/ddr/imx/helper.c
index f38b9a0060..674ca7e4ac 100644
--- a/drivers/ddr/imx/helper.c
+++ b/drivers/ddr/imx/helper.c
@@ -27,7 +27,7 @@ void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param
 	dwc_ddrphy_apb_wr(dram, 0xd0000, 0x1);
 }
 
-void *dram_config_save(struct dram_timing_info *timing_info,
+void *dram_config_save(struct dram_controller *dram, struct dram_timing_info *timing_info,
 		      unsigned long saved_timing_base)
 {
 	int i = 0;
@@ -54,7 +54,7 @@ void *dram_config_save(struct dram_timing_info *timing_info,
 		cfg++;
 	}
 
-	if (imx8m_ddr_old_spreadsheet) {
+	if (dram->imx8m_ddr_old_spreadsheet) {
 		cfg->reg = DDRC_ADDRMAP7(0);
 		cfg->val = 0xf0f;
 		cfg++;
diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index 8d473a3e63..8b829645c0 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -13,19 +13,19 @@
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/imx8m-ccm-regs.h>
 
-bool imx8m_ddr_old_spreadsheet = true;
-
 struct dram_controller imx8m_dram_controller = {
 	.phy_base = IOMEM(IP2APB_DDRPHY_IPS_BASE_ADDR(0)),
 };
 
-static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
+static void ddr_cfg_umctl2(struct dram_controller *dram, struct dram_cfg_param *ddrc_cfg, int num)
 {
 	int i = 0;
 
+	dram->imx8m_ddr_old_spreadsheet = true;
+
 	for (i = 0; i < num; i++) {
 		if (ddrc_cfg->reg == DDRC_ADDRMAP7(0))
-		    imx8m_ddr_old_spreadsheet = false;
+		    dram->imx8m_ddr_old_spreadsheet = false;
 		reg32_write((unsigned long)ddrc_cfg->reg, ddrc_cfg->val);
 		ddrc_cfg++;
 	}
@@ -35,7 +35,7 @@ static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 	 * which falsifies the memory size read back from the controller
 	 * in barebox proper.
 	 */
-	if (imx8m_ddr_old_spreadsheet) {
+	if (dram->imx8m_ddr_old_spreadsheet) {
 		pr_warn("Working around old spreadsheet. Please regenerate\n");
 		/*
 		 * Alternatively, stick { DDRC_ADDRMAP7(0), 0xf0f } into
@@ -518,7 +518,7 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 
 	/* Step2: Program the dwc_ddr_umctl2 registers */
 	pr_debug("ddrc config start\n");
-	ddr_cfg_umctl2(dram_timing->ddrc_cfg, dram_timing->ddrc_cfg_num);
+	ddr_cfg_umctl2(dram, dram_timing->ddrc_cfg, dram_timing->ddrc_cfg_num);
 	pr_debug("ddrc config done\n");
 
 	/* Step3: De-assert reset signal(core_ddrc_rstn & aresetn_n) */
@@ -640,7 +640,7 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 	pr_debug("ddrmix config done\n");
 
 	/* save the dram timing config into memory */
-	dram_config_save(dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
+	dram_config_save(dram, dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
 
 	return 0;
 }
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index bc793cf3ed..581a3b461c 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -74,6 +74,7 @@ struct dram_controller {
 	void __iomem *phy_base;
 	void (*get_trained_CDD)(struct dram_controller *dram, u32 fsp);
 	void (*set_dfi_clk)(struct dram_controller *dram, unsigned int drate_mhz);
+	bool imx8m_ddr_old_spreadsheet;
 };
 
 void ddr_get_firmware_lpddr4(void);
@@ -90,7 +91,8 @@ static inline void ddr_get_firmware(enum dram_type dram_type)
 int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
 void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param *param,
 			     unsigned int num);
-void *dram_config_save(struct dram_timing_info *info, unsigned long base);
+void *dram_config_save(struct dram_controller *dram, struct dram_timing_info *info,
+		       unsigned long base);
 
 /* utils function for ddr phy training */
 int wait_ddrphy_training_complete(struct dram_controller *dram);
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index abd9961099..5df07772b3 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -374,8 +374,6 @@ static inline int imx8m_wait_ddrphy_training_complete(void)
 	return wait_ddrphy_training_complete(&imx8m_dram_controller);
 }
 
-extern bool imx8m_ddr_old_spreadsheet;
-
 static inline void imx8m_ddr_load_train_code(enum dram_type dram_type,
 					     enum fw_type fw_type)
 {
-- 
2.39.2



