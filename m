Delivery-date: Fri, 10 Nov 2023 14:02:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9H-005riX-0g
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9F-0005I6-UX
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0SxjeQoutY6rC98mT1SZgWqwgIU7rzJWbF62UT1IJrg=; b=eXPQOwbqsaktm3PmHOzggZ1HdV
	hZhMPTwbf9AqAkWBCTu2BZHcrQPCqrfgCc0D96VhFJWka2uWV0xjTaKdaK4xNa+uohssSbhtmLn9K
	5OnRwc/y5rXsXMDGWrIANCotYrCrL7FQlE9E+/6R2ht92R/GE5XtLz8mK1bl56utQjuyAaiZgrC59
	tRfB4MfuUTb0WGmrnqAcO4hLQDzysVEOk2iPENo1kS37S+lWmc0qpro+2NCYadD5CBFkmEz3mznpL
	Hdbo6aZLyo1Qlg468bvvb+OOv49K+saA99hnEJXiRNW7LAizkcv2XM1Lai64o/D1ey12Cr7Y6C9Oi
	Bh9gDeXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R88-008m9Y-0q;
	Fri, 10 Nov 2023 13:01:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7v-008lyP-1I
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0SxjeQoutY6rC98mT1SZgWqwgIU7rzJWbF62UT1IJrg=; b=ZDFc6Z49W48S2FXYvbJGzNhtOj
	kngbPNfhcsFL/XzyCi0IMcyT8QVUTdc7RLHlH6gsyFWq4UT0grhQuk92iDODL9yLW8e+PbrvdIYPU
	tca6UrWUOSe9WChVzf54qFSVnM3hLIwKpgUaNsKrQOzUNuhcKJh0rtReV25PE8m3i3FBWCN4Bo2X/
	9NMQo/u7jJ+bJU1YF3EdM91nSs+L/8uWGYI6twEdOVqO7/qvqAX05Rr01KWJuSHXus9jwXVocb2Od
	fysJcIOzEwUlffuMcyRcnEbWsk1zXOtX3iOAHh/NFmxP1+OK+dFRaRmWKKlhE931IbxOhsbwdigWR
	Ko9LTkFQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3p-0W
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043F-Ft; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Z4-9T; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096N3-0k;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:21 +0100
Message-Id: <20231110130028.2123895-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130044_313533_7C9CA506 
X-CRM114-Status: GOOD (  19.46  )
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
Subject: [PATCH 06/13] ddr: imx8m: move phy_base to controller struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The phy_base will be different on i.MX9, so move the base address to
struct dram_controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_train.c   | 24 ++++++++++++------------
 drivers/ddr/imx/helper.c         | 12 ++++++------
 drivers/ddr/imx/imx8m_ddr_init.c | 13 ++++++-------
 include/soc/imx8m/ddr.h          | 22 +++++++++++++++++-----
 4 files changed, 41 insertions(+), 30 deletions(-)

diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index b44f5ef9b4..af4d710dc0 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -107,7 +107,7 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 	num  = dram_timing->ddrphy_cfg_num;
 	for (i = 0; i < num; i++) {
 		/* config phy reg */
-		dwc_ddrphy_apb_wr(dram_cfg->reg, dram_cfg->val);
+		dwc_ddrphy_apb_wr(dram, dram_cfg->reg, dram_cfg->val);
 		dram_cfg++;
 	}
 
@@ -119,14 +119,14 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 		dram->set_dfi_clk(dram, fsp_msg->drate);
 
 		/* load the dram training firmware image */
-		dwc_ddrphy_apb_wr(0xd0000, 0x0);
+		dwc_ddrphy_apb_wr(dram, 0xd0000, 0x0);
 		ddr_load_train_code(dram->dram_type, fsp_msg->fw_type);
 
 		/* load the frequency set point message block parameter */
 		dram_cfg = fsp_msg->fsp_cfg;
 		num = fsp_msg->fsp_cfg_num;
 		for (j = 0; j < num; j++) {
-			dwc_ddrphy_apb_wr(dram_cfg->reg, dram_cfg->val);
+			dwc_ddrphy_apb_wr(dram, dram_cfg->reg, dram_cfg->val);
 			dram_cfg++;
 		}
 
@@ -140,10 +140,10 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 		 * 4. read the message block result.
 		 * -------------------------------------------------------------
 		 */
-		dwc_ddrphy_apb_wr(0xd0000, 0x1);
-		dwc_ddrphy_apb_wr(0xd0099, 0x9);
-		dwc_ddrphy_apb_wr(0xd0099, 0x1);
-		dwc_ddrphy_apb_wr(0xd0099, 0x0);
+		dwc_ddrphy_apb_wr(dram, 0xd0000, 0x1);
+		dwc_ddrphy_apb_wr(dram, 0xd0099, 0x9);
+		dwc_ddrphy_apb_wr(dram, 0xd0099, 0x1);
+		dwc_ddrphy_apb_wr(dram, 0xd0099, 0x0);
 
 		/* Wait for the training firmware to complete */
 		ret = wait_ddrphy_training_complete();
@@ -151,17 +151,17 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 			return ret;
 
 		/* Halt the microcontroller. */
-		dwc_ddrphy_apb_wr(0xd0099, 0x1);
+		dwc_ddrphy_apb_wr(dram, 0xd0099, 0x1);
 
 		/* Read the Message Block results */
-		dwc_ddrphy_apb_wr(0xd0000, 0x0);
+		dwc_ddrphy_apb_wr(dram, 0xd0000, 0x0);
 
 		ddrphy_init_read_msg_block(fsp_msg->fw_type);
 
 		if (fsp_msg->fw_type != FW_2D_IMAGE)
 			dram->get_trained_CDD(dram, i);
 
-		dwc_ddrphy_apb_wr(0xd0000, 0x1);
+		dwc_ddrphy_apb_wr(dram, 0xd0000, 0x1);
 
 		fsp_msg++;
 	}
@@ -170,12 +170,12 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 	dram_cfg = dram_timing->ddrphy_pie;
 	num = dram_timing->ddrphy_pie_num;
 	for (i = 0; i < num; i++) {
-		dwc_ddrphy_apb_wr(dram_cfg->reg, dram_cfg->val);
+		dwc_ddrphy_apb_wr(dram, dram_cfg->reg, dram_cfg->val);
 		dram_cfg++;
 	}
 
 	/* save the ddr PHY trained CSR in memory for low power use */
-	ddrphy_trained_csr_save(ddrphy_trained_csr, ddrphy_trained_csr_num);
+	ddrphy_trained_csr_save(dram, ddrphy_trained_csr, ddrphy_trained_csr_num);
 
 	return 0;
 }
diff --git a/drivers/ddr/imx/helper.c b/drivers/ddr/imx/helper.c
index 81c3ed7f30..0bd8d2688a 100644
--- a/drivers/ddr/imx/helper.c
+++ b/drivers/ddr/imx/helper.c
@@ -10,21 +10,21 @@
 #include <errno.h>
 #include <soc/imx8m/ddr.h>
 
-void ddrphy_trained_csr_save(struct dram_cfg_param *ddrphy_csr,
+void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param *ddrphy_csr,
 			     unsigned int num)
 {
 	int i = 0;
 
 	/* enable the ddrphy apb */
-	dwc_ddrphy_apb_wr(0xd0000, 0x0);
-	dwc_ddrphy_apb_wr(0xc0080, 0x3);
+	dwc_ddrphy_apb_wr(dram, 0xd0000, 0x0);
+	dwc_ddrphy_apb_wr(dram, 0xc0080, 0x3);
 	for (i = 0; i < num; i++) {
-		ddrphy_csr->val = dwc_ddrphy_apb_rd(ddrphy_csr->reg);
+		ddrphy_csr->val = dwc_ddrphy_apb_rd(dram, ddrphy_csr->reg);
 		ddrphy_csr++;
 	}
 	/* disable the ddrphy apb */
-	dwc_ddrphy_apb_wr(0xc0080, 0x2);
-	dwc_ddrphy_apb_wr(0xd0000, 0x1);
+	dwc_ddrphy_apb_wr(dram, 0xc0080, 0x2);
+	dwc_ddrphy_apb_wr(dram, 0xd0000, 0x1);
 }
 
 void dram_config_save(struct dram_timing_info *timing_info,
diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index f76aafe769..8d473a3e63 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -15,7 +15,9 @@
 
 bool imx8m_ddr_old_spreadsheet = true;
 
-struct dram_controller imx8m_dram_controller;
+struct dram_controller imx8m_dram_controller = {
+	.phy_base = IOMEM(IP2APB_DDRPHY_IPS_BASE_ADDR(0)),
+};
 
 static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 {
@@ -71,15 +73,13 @@ static void get_trained_CDD(struct dram_controller *dram, u32 fsp)
 	ddr_type = reg32_read(DDRC_MSTR(0)) & 0x3f;
 	if (ddr_type == 0x20) {
 		for (i = 0; i < 6; i++) {
-			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
-					 (0x54013UL + i) * 4);
+			tmp = dwc_ddrphy_apb_rd(dram, 0x54013UL + i);
 			cdd_cha[i * 2] = tmp & 0xff;
 			cdd_cha[i * 2 + 1] = (tmp >> 8) & 0xff;
 		}
 
 		for (i = 0; i < 7; i++) {
-			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
-					 (0x5402cUL + i) * 4);
+			tmp = dwc_ddrphy_apb_rd(dram, 0x5402cUL + i);
 			if (i == 0) {
 				cdd_cha[0] = (tmp >> 8) & 0xff;
 			} else if (i == 6) {
@@ -106,8 +106,7 @@ static void get_trained_CDD(struct dram_controller *dram, u32 fsp)
 		unsigned int ddr4_cdd[64];
 
 		for( i = 0; i < 29; i++) {
-			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
-					 (0x54012UL + i) * 4);
+			tmp = dwc_ddrphy_apb_rd(dram, 0x54012UL + i);
 			ddr4_cdd[i * 2] = tmp & 0xff;
 			ddr4_cdd[i * 2 + 1] = (tmp >> 8) & 0xff;
 		}
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 9ff9c0a2da..bdf0f25727 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -385,6 +385,7 @@ struct dram_timing_info {
 struct dram_controller {
 	enum ddrc_type ddrc_type;
 	enum dram_type dram_type;
+	void __iomem *phy_base;
 	void (*get_trained_CDD)(struct dram_controller *dram, u32 fsp);
 	void (*set_dfi_clk)(struct dram_controller *dram, unsigned int drate_mhz);
 };
@@ -449,7 +450,8 @@ static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
 }
 
 int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
-void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
+void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param *param,
+			     unsigned int num);
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
 
 /* utils function for ddr phy training */
@@ -464,10 +466,20 @@ static inline void reg32setbit(unsigned long addr, u32 bit)
 	setbits_le32(addr, (1 << bit));
 }
 
-#define dwc_ddrphy_apb_wr(addr, data) \
-	reg32_write(IOMEM(IP2APB_DDRPHY_IPS_BASE_ADDR(0)) + 4 * (addr), data)
-#define dwc_ddrphy_apb_rd(addr) \
-	reg32_read(IOMEM(IP2APB_DDRPHY_IPS_BASE_ADDR(0)) + 4 * (addr))
+static inline void *dwc_ddrphy_apb_addr(struct dram_controller *dram, unsigned int addr)
+{
+	return dram->phy_base + addr * 4;
+}
+
+static inline void dwc_ddrphy_apb_wr(struct dram_controller *dram, unsigned int addr, u32 data)
+{
+	reg32_write(dwc_ddrphy_apb_addr(dram, addr), data);
+}
+
+static inline u32 dwc_ddrphy_apb_rd(struct dram_controller *dram, unsigned int addr)
+{
+	return reg32_read(dwc_ddrphy_apb_addr(dram, addr));
+}
 
 extern bool imx8m_ddr_old_spreadsheet;
 extern struct dram_cfg_param ddrphy_trained_csr[];
-- 
2.39.2



