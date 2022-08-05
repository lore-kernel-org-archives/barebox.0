Delivery-date: Fri, 05 Aug 2022 14:56:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwsV-00CWKp-Gn
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:56:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwsS-0005Tn-WA
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:56:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=olwg2C9FGqabLBQ/8/fqV67JiJcAFWQwHoYQJMZuEmw=; b=fK77/imjyVpENZi4JRFAUQ695K
	ZaQCS7GTCrMHJfAQgj2Qa6xsFRLheyXMp7lKiI3aO/G89JkD8uaiwJ2wuUzrg8tPsNu6h0B9RIIi5
	cVDbsJmI2q1n60FsQG6Br9W09XfANqxbroRH+RNqqCMmqeio0eE6Jix/kZJNy+LLqgT5ZXR4O/fcR
	W2Xbe5DrmcCJ81MoVxVRKE4LjThfFT8CgtBEGC/030X7olb88q24RnrAz4QmLXk58MSXZNa+ITyAz
	syKzwFqqyEQd6oNUV7pA8qVVgN0ImvdOS0sWl4YlqawT9t3KKQz6xOONKQMf9CKdynJVusNPEiYzG
	y/5gqhJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqx-00FAIl-I5; Fri, 05 Aug 2022 12:54:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqJ-00FA0G-7w
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqH-0004be-Gn; Fri, 05 Aug 2022 14:54:17 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqE-001tgc-G1; Fri, 05 Aug 2022 14:54:16 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004vxa-9F; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:54:09 +0200
Message-Id: <20220805125413.1046239-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055419_531504_C7CB1FD1 
X-CRM114-Status: GOOD (  16.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/9] ddr: imx8m: rename type to more fitting ddrc|dram_type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

type is ambiguous and can mean either DDR controller (SoC) type, DRAM
type or firmware (1D/2D) type. Replace variables called type plainly,
with more descriptive ddrc_type, dram_type and fw_type.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx8m/ddr_init.c     | 12 +++----
 drivers/ddr/imx8m/ddrphy_train.c |  4 +--
 include/soc/imx8m/ddr.h          | 54 ++++++++++++++++----------------
 3 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 41e1fba38a52..f046ea52df7f 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -50,7 +50,7 @@ static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 #define IMX8M_SAVED_DRAM_TIMING_BASE		0x180000
 
 int imx8m_ddr_init(struct dram_timing_info *dram_timing,
-		   enum ddrc_type type)
+		   enum ddrc_type ddrc_type)
 {
 	unsigned long src_ddrc_rcr = MX8M_SRC_DDRC_RCR_ADDR;
 	unsigned int tmp, initial_drate, target_freq;
@@ -59,7 +59,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	pr_debug("start DRAM init\n");
 
 	/* Step1: Follow the power up procedure */
-	switch (type) {
+	switch (ddrc_type) {
 	case DDRC_TYPE_MQ:
 		reg32_write(src_ddrc_rcr + 0x04, 0x8f00000f);
 		reg32_write(src_ddrc_rcr, 0x8f00000f);
@@ -81,7 +81,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 
 	initial_drate = dram_timing->fsp_msg[0].drate;
 	/* default to the frequency point 0 clock */
-	ddrphy_init_set_dfi_clk(initial_drate, type);
+	ddrphy_init_set_dfi_clk(initial_drate, ddrc_type);
 
 	/* D-aasert the presetn */
 	reg32_write(src_ddrc_rcr, 0x8F000006);
@@ -107,7 +107,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 
 	/* if ddr type is LPDDR4, do it */
 	tmp = reg32_read(DDRC_MSTR(0));
-	if (tmp & (0x1 << 5) && type != DDRC_TYPE_MN)
+	if (tmp & (0x1 << 5) && ddrc_type != DDRC_TYPE_MN)
 		reg32_write(DDRC_DDR_SS_GPR0, 0x01); /* LPDDR4 mode */
 
 	/* determine the initial boot frequency */
@@ -134,7 +134,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	 */
 	pr_debug("ddrphy config start\n");
 
-	ret = ddr_cfg_phy(dram_timing, type);
+	ret = ddr_cfg_phy(dram_timing, ddrc_type);
 	if (ret)
 		return ret;
 
@@ -154,7 +154,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	reg32_write(DDRC_SWCTL(0), 0x00000000);
 
 	/* Apply rank-to-rank workaround */
-	update_umctl2_rank_space_setting(dram_timing->fsp_msg_num - 1, type);
+	update_umctl2_rank_space_setting(dram_timing->fsp_msg_num - 1, ddrc_type);
 
 	/* Step16: Set DFIMISC.dfi_init_start to 1 */
 	setbits_le32(DDRC_DFIMISC(0), (0x1 << 5));
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index 2190b5341307..f739c6510703 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -93,7 +93,7 @@ void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
 			       DDRC_PHY_DMEM, dmem, dsize);
 }
 
-int ddr_cfg_phy(struct dram_timing_info *dram_timing, enum ddrc_type type)
+int ddr_cfg_phy(struct dram_timing_info *dram_timing, enum ddrc_type ddrc_type)
 {
 	struct dram_cfg_param *dram_cfg;
 	struct dram_fsp_msg *fsp_msg;
@@ -116,7 +116,7 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing, enum ddrc_type type)
 	for (i = 0; i < dram_timing->fsp_msg_num; i++) {
 		pr_debug("DRAM PHY training for %dMTS\n", fsp_msg->drate);
 		/* set dram PHY input clocks to desired frequency */
-		ddrphy_init_set_dfi_clk(fsp_msg->drate, type);
+		ddrphy_init_set_dfi_clk(fsp_msg->drate, ddrc_type);
 
 		/* load the dram training firmware image */
 		dwc_ddrphy_apb_wr(0xd0000, 0x0);
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index ad13632d28d9..e90adc37df87 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -333,6 +333,13 @@ enum dram_type {
 	DRAM_TYPE_DDR4,
 };
 
+enum ddrc_type {
+	DDRC_TYPE_MM,
+	DDRC_TYPE_MN,
+	DDRC_TYPE_MQ,
+	DDRC_TYPE_MP,
+};
+
 struct dram_cfg_param {
 	unsigned int reg;
 	unsigned int val;
@@ -368,71 +375,64 @@ struct dram_timing_info {
 
 extern struct dram_timing_info dram_timing;
 
-enum ddrc_type {
-	DDRC_TYPE_MM,
-	DDRC_TYPE_MN,
-	DDRC_TYPE_MQ,
-	DDRC_TYPE_MP,
-};
-
 void ddr_get_firmware_lpddr4(void);
 void ddr_get_firmware_ddr(void);
 
-static void ddr_get_firmware(enum dram_type type)
+static void ddr_get_firmware(enum dram_type dram_type)
 {
-	if (type == DRAM_TYPE_LPDDR4)
+	if (dram_type == DRAM_TYPE_LPDDR4)
 		ddr_get_firmware_lpddr4();
 	else
 		ddr_get_firmware_ddr();
 }
 
 int imx8m_ddr_init(struct dram_timing_info *dram_timing,
-		   enum ddrc_type type);
+		   enum ddrc_type ddrc_type);
 
 static inline int imx8mm_ddr_init(struct dram_timing_info *dram_timing,
-				  enum dram_type type)
+				  enum dram_type dram_type)
 {
-	ddr_get_firmware(type);
+	ddr_get_firmware(dram_type);
 
 	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM);
 }
 
 static inline int imx8mn_ddr_init(struct dram_timing_info *dram_timing,
-				  enum dram_type type)
+				  enum dram_type dram_type)
 {
-	ddr_get_firmware(type);
+	ddr_get_firmware(dram_type);
 
 	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MN);
 }
 
 static inline int imx8mq_ddr_init(struct dram_timing_info *dram_timing,
-				  enum dram_type type)
+				  enum dram_type dram_type)
 {
-	ddr_get_firmware(type);
+	ddr_get_firmware(dram_type);
 
 	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ);
 }
 
 static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
-				  enum dram_type type)
+				  enum dram_type dram_type)
 {
-	ddr_get_firmware(type);
+	ddr_get_firmware(dram_type);
 
 	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP);
 }
 
-int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type type);
+int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type ddrc_type);
 void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
 
 /* utils function for ddr phy training */
 int wait_ddrphy_training_complete(void);
-void ddrphy_init_set_dfi_clk(unsigned int drate, enum ddrc_type type);
-void ddrphy_init_read_msg_block(enum fw_type type);
+void ddrphy_init_set_dfi_clk(unsigned int drate, enum ddrc_type ddrc_type);
+void ddrphy_init_read_msg_block(enum fw_type fw_type);
 
 void update_umctl2_rank_space_setting(unsigned int pstat_num,
-				      enum ddrc_type type);
+				      enum ddrc_type ddrc_type);
 void get_trained_CDD(unsigned int fsp);
 
 #define reg32_write(a, v)	writel(v, a)
@@ -457,22 +457,22 @@ enum ddrc_phy_firmware_offset {
 	DDRC_PHY_DMEM = 0x00054000U,
 };
 
-void ddr_load_train_code(enum dram_type dram_type, enum fw_type type);
+void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type);
 
 void ddrc_phy_load_firmware(void __iomem *,
 			    enum ddrc_phy_firmware_offset,
 			    const u16 *, size_t);
 
-static inline bool dram_is_lpddr4(enum dram_type type)
+static inline bool dram_is_lpddr4(enum dram_type dram_type)
 {
 	return IS_ENABLED(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) &&
-		type == DRAM_TYPE_LPDDR4;
+		dram_type == DRAM_TYPE_LPDDR4;
 }
 
-static inline bool dram_is_ddr4(enum dram_type type)
+static inline bool dram_is_ddr4(enum dram_type dram_type)
 {
 	return IS_ENABLED(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) &&
-		type == DRAM_TYPE_DDR4;
+		dram_type == DRAM_TYPE_DDR4;
 }
 
 #define DDRC_PHY_REG(x)	((x) * 4)
-- 
2.30.2



