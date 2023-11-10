Delivery-date: Fri, 10 Nov 2023 14:02:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R99-005rgu-0y
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R98-0005CD-Ny
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a4vWY+v9QQi0vggvF7Mx5dpFlcLAk5fhojhX76Pcvvg=; b=d7PQpUx2CBjTv/lERr2V5RCO/z
	YKxIoTA9NPFzdWCvovgrm80WwNsXnmEicHeJXZ4mfYuNPDSad8AfVNoUP/cz1iKnfZRciwLmLWaZz
	4nstkRxN1iNzt4VOYoeTKND4DhfpVJbzKrg2sPldbXGRgRKdhbrFrPk3QKVVPPP5GWYLWEf9qGdKM
	iVLivtwCsJcD/wlSoI/ckgvP4MkpdogJuIYgOelS2NcXsMqIcT8yXnAmow+W5q/spNg48njVC2Jzk
	ih7YyuzoxFPk+qkphWFs15gHWfOw2ikQ7qef1rPMYetKMwvQP9XzriVaUEGc7j7JO8czwEqkLKUOm
	ao/1AZlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7y-008m0e-32;
	Fri, 10 Nov 2023 13:00:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lw9-1P
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a4vWY+v9QQi0vggvF7Mx5dpFlcLAk5fhojhX76Pcvvg=; b=Zw+96rOdPs+JuSjcCtVST5wPc5
	abfZ0W14XL1+9F4YEJqogmz7fW1QmtON8ztaD1Fp7WNND66/y9rPBjAEK6Zx6IuU+ZtQJZzm35HBa
	ic30YPQDerPFNs6av3yl6aoUOk+I7ZXIlJOR1ObQKiALvNYlHJexizgOkFwl1MZsUHtKJCtmm99bz
	6nngshgukg73Kr9+OG83e3lG6OKCnXvtHII141FPLDi7q/tMPozBUCfMiO2wcPkuZ1O1kkdjbseqZ
	8UEBJ9aqyaFkRQXILqFw2vO96y0k1javV/A+tRYEXy8LOIxeIHF3CfttL5/o6NAY2CV7loDaWGGzb
	tidh7uIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3m-0Q
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043A-D3; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Yy-7S; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096MT-0Y;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:17 +0100
Message-Id: <20231110130028.2123895-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_769652_B57BCC57 
X-CRM114-Status: GOOD (  17.22  )
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
Subject: [PATCH 02/13] ddr: imx8m: introduce dram_controller struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming i.MX9 support will need to implement some functions
differently. Introduce a struct dram_controller to be able
to abstract these differences later. For now only add a few
members, more will come in later patches.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_train.c   |  8 +++-----
 drivers/ddr/imx/imx8m_ddr_init.c | 16 ++++++++--------
 include/soc/imx8m/ddr.h          | 32 +++++++++++++++++++++++++-------
 3 files changed, 36 insertions(+), 20 deletions(-)

diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index 6a98fa0545..1683ffd9a8 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -93,10 +93,8 @@ void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
 			       DDRC_PHY_DMEM, dmem, dsize);
 }
 
-int ddr_cfg_phy(struct dram_timing_info *dram_timing, unsigned type)
+int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timing)
 {
-	enum ddrc_type ddrc_type = get_ddrc_type(type);
-	enum dram_type dram_type = get_dram_type(type);
 	struct dram_cfg_param *dram_cfg;
 	struct dram_fsp_msg *fsp_msg;
 	unsigned int num;
@@ -118,11 +116,11 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing, unsigned type)
 	for (i = 0; i < dram_timing->fsp_msg_num; i++) {
 		pr_debug("DRAM PHY training for %dMTS\n", fsp_msg->drate);
 		/* set dram PHY input clocks to desired frequency */
-		ddrphy_init_set_dfi_clk(fsp_msg->drate, ddrc_type);
+		ddrphy_init_set_dfi_clk(fsp_msg->drate, dram->ddrc_type);
 
 		/* load the dram training firmware image */
 		dwc_ddrphy_apb_wr(0xd0000, 0x0);
-		ddr_load_train_code(dram_type, fsp_msg->fw_type);
+		ddr_load_train_code(dram->dram_type, fsp_msg->fw_type);
 
 		/* load the frequency set point message block parameter */
 		dram_cfg = fsp_msg->fsp_cfg;
diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index 9a86280d9c..8acacfac35 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -15,6 +15,8 @@
 
 bool imx8m_ddr_old_spreadsheet = true;
 
+struct dram_controller imx8m_dram_controller;
+
 static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 {
 	int i = 0;
@@ -49,18 +51,16 @@ static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
  */
 #define IMX8M_SAVED_DRAM_TIMING_BASE		0x180000
 
-int imx8m_ddr_init(struct dram_timing_info *dram_timing,
-		   unsigned type)
+int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_timing)
 {
 	unsigned long src_ddrc_rcr = MX8M_SRC_DDRC_RCR_ADDR;
 	unsigned int tmp, initial_drate, target_freq;
-	enum ddrc_type ddrc_type = get_ddrc_type(type);
 	int ret;
 
 	pr_debug("start DRAM init\n");
 
 	/* Step1: Follow the power up procedure */
-	switch (ddrc_type) {
+	switch (dram->ddrc_type) {
 	case DDRC_TYPE_MQ:
 		reg32_write(src_ddrc_rcr + 0x04, 0x8f00000f);
 		reg32_write(src_ddrc_rcr, 0x8f00000f);
@@ -82,7 +82,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 
 	initial_drate = dram_timing->fsp_msg[0].drate;
 	/* default to the frequency point 0 clock */
-	ddrphy_init_set_dfi_clk(initial_drate, ddrc_type);
+	ddrphy_init_set_dfi_clk(initial_drate, dram->ddrc_type);
 
 	/* D-aasert the presetn */
 	reg32_write(src_ddrc_rcr, 0x8F000006);
@@ -112,7 +112,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	 * might not have been called
 	 */
 	tmp = reg32_read(DDRC_MSTR(0));
-	if (tmp & (0x1 << 5) && ddrc_type != DDRC_TYPE_MN)
+	if (tmp & (0x1 << 5) && dram->ddrc_type != DDRC_TYPE_MN)
 		reg32_write(DDRC_DDR_SS_GPR0, 0x01); /* LPDDR4 mode */
 
 	/* determine the initial boot frequency */
@@ -139,7 +139,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	 */
 	pr_debug("ddrphy config start\n");
 
-	ret = ddr_cfg_phy(dram_timing, type);
+	ret = ddr_cfg_phy(dram, dram_timing);
 	if (ret)
 		return ret;
 
@@ -159,7 +159,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	reg32_write(DDRC_SWCTL(0), 0x00000000);
 
 	/* Apply rank-to-rank workaround */
-	update_umctl2_rank_space_setting(dram_timing->fsp_msg_num - 1, ddrc_type);
+	update_umctl2_rank_space_setting(dram_timing->fsp_msg_num - 1, dram->ddrc_type);
 
 	/* Step16: Set DFIMISC.dfi_init_start to 1 */
 	setbits_le32(DDRC_DFIMISC(0), (0x1 << 5));
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index e268892957..18d7c96193 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -384,6 +384,11 @@ struct dram_timing_info {
 	unsigned int fsp_table[4];
 };
 
+struct dram_controller {
+	enum ddrc_type ddrc_type;
+	enum dram_type dram_type;
+};
+
 extern struct dram_timing_info dram_timing;
 
 void ddr_get_firmware_lpddr4(void);
@@ -397,42 +402,55 @@ static inline void ddr_get_firmware(enum dram_type dram_type)
 		ddr_get_firmware_ddr();
 }
 
-int imx8m_ddr_init(struct dram_timing_info *dram_timing,
-		   unsigned type);
+int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_timing);
+
+extern struct dram_controller imx8m_dram_controller;
 
 static inline int imx8mm_ddr_init(struct dram_timing_info *dram_timing,
 				  enum dram_type dram_type)
 {
+	imx8m_dram_controller.ddrc_type = DDRC_TYPE_MM;
+	imx8m_dram_controller.dram_type = dram_type;
+
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM | dram_type);
+	return imx8m_ddr_init(&imx8m_dram_controller, dram_timing);
 }
 
 static inline int imx8mn_ddr_init(struct dram_timing_info *dram_timing,
 				  enum dram_type dram_type)
 {
+	imx8m_dram_controller.ddrc_type = DDRC_TYPE_MN;
+	imx8m_dram_controller.dram_type = dram_type;
+
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MN | dram_type);
+	return imx8m_ddr_init(&imx8m_dram_controller, dram_timing);
 }
 
 static inline int imx8mq_ddr_init(struct dram_timing_info *dram_timing,
 				  enum dram_type dram_type)
 {
+	imx8m_dram_controller.ddrc_type = DDRC_TYPE_MQ;
+	imx8m_dram_controller.dram_type = dram_type;
+
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ | dram_type);
+	return imx8m_ddr_init(&imx8m_dram_controller, dram_timing);
 }
 
 static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
 				  enum dram_type dram_type)
 {
+	imx8m_dram_controller.ddrc_type = DDRC_TYPE_MP;
+	imx8m_dram_controller.dram_type = dram_type;
+
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP | dram_type);
+	return imx8m_ddr_init(&imx8m_dram_controller, dram_timing);
 }
 
-int ddr_cfg_phy(struct dram_timing_info *timing_info, unsigned type);
+int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
 void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
-- 
2.39.2



