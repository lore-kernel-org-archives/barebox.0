Delivery-date: Wed, 21 Sep 2022 19:22:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ob3Qv-00BUzS-NH
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 19:22:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ob3Qu-0004hg-IN
	for lore@pengutronix.de; Wed, 21 Sep 2022 19:22:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A5wIDJFvZVmS/FLIlDXBrmFBoI2lyKuFg5nWC6IuA3Y=; b=Ew/3cmK68G5cHIJF05spvVnKeb
	JlEyUa41+jNZSdShVJYx9g4rhabhze/qg2ON/xs90eqGeJ4nlQABfgKVXHOZ40jNqZmn/tCTW3MzX
	5ai73Ee57W2aMMQUU738bGFK6JBaywAJhMwAvdJi0OFZ9RLi22ZFOwBNGuJzJ1bqHilM/A/dYlSMA
	PDSADHa8qzyWNrsffR1347odwExz4mNgulYgm1JLn3xUZw6aMgIvDPo8etAvqqz3AT6ILrfGkuvAk
	yJB9Acrarkm3hGizLUjA2JBZunf7EvxPY8ZTL/eBBk7BthczO7QwjaE+CydH9x5fUlYwfOyevVuiv
	7NHebxkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob3PI-00CAYT-Jy; Wed, 21 Sep 2022 17:21:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob3PB-00CAVl-6h
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 17:21:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ob3P5-0004Lg-T7
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 19:20:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ob3P6-0026GM-KY
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 19:20:55 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ob3P4-00CYAE-DO
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 19:20:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 21 Sep 2022 19:20:51 +0200
Message-Id: <20220921172052.2989506-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_102101_268844_FCAEC451 
X-CRM114-Status: GOOD (  13.38  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ddr: imx8m: write fsp_table entry automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently the fsp_table must be set manually within the 'struct
dram_timing_info'. Since the 'struct fsp_msg' already has all
information needed for the fsp_table we can use it to set it
automatically. This approach is less error-prone and avoids information
duplication.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/ddr/imx8m/ddrphy_train.c |  3 +++
 drivers/ddr/imx8m/helper.c       | 19 +++++++++++++++++++
 include/soc/imx8m/ddr.h          |  2 ++
 3 files changed, 24 insertions(+)

diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index e9d35afdfb..09f1e77295 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -165,6 +165,9 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing, unsigned type)
 
 		dwc_ddrphy_apb_wr(0xd0000, 0x1);
 
+		/* Training done, add entry to fsp_table */
+		dram_write_fsp_table_entry(dram_timing, fsp_msg->drate);
+
 		fsp_msg++;
 	}
 
diff --git a/drivers/ddr/imx8m/helper.c b/drivers/ddr/imx8m/helper.c
index 98e4084958..e71401c1b2 100644
--- a/drivers/ddr/imx8m/helper.c
+++ b/drivers/ddr/imx8m/helper.c
@@ -18,6 +18,25 @@
 #define DMEM_OFFSET_ADDR 0x00054000
 #define DDR_TRAIN_CODE_BASE_ADDR IP2APB_DDRPHY_IPS_BASE_ADDR(0)
 
+void dram_write_fsp_table_entry(struct dram_timing_info *timing_info,
+				unsigned int data_rate)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(timing_info->fsp_table); i++) {
+		unsigned int entry = timing_info->fsp_table[i];
+
+		/* Skip already existing entries */
+		if (entry == data_rate)
+			return;
+
+		if (entry == 0) {
+			timing_info->fsp_table[i] = data_rate;
+			return;
+		}
+	}
+}
+
 void ddrphy_trained_csr_save(struct dram_cfg_param *ddrphy_csr,
 			     unsigned int num)
 {
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 2149ae4325..222ab8e0f4 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -436,6 +436,8 @@ int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type ddrc_type);
 void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
+void dram_write_fsp_table_entry(struct dram_timing_info *timing_info,
+				unsigned int data_rate);
 
 /* utils function for ddr phy training */
 int wait_ddrphy_training_complete(void);
-- 
2.30.2



