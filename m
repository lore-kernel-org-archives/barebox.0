Delivery-date: Fri, 10 Nov 2023 14:01:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R8z-005re8-14
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:01:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R8z-00053Z-BN
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:01:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dcL4yePoUWL+ryHak74MID2P5sKU9UBh8HAmEBiIUE4=; b=lFILs/SHRi3AuiVZgY6wnRWYq7
	yI5FpK1scwS3nWNeH6u4DUnoMeJnETt+qpDXW1busY6QG1OqmxNnT/ili4VRVxBMc2PMXun+Q/KPP
	F+BvsORNrQTwvMrnBCxQ4nuC74A2ZnhfPt9ru8aGVl83+vCeefyPBY/KQBhJ8xTAe6egC0QDyxoi7
	EvzFHG9t28NSYDEhOLw3FLFjNphik+wOwmQ6zIlCWKLazolBLttoV2rJRphpvX8OgnD92LKTJ2ris
	Au5S3MjEfvBcOYfgRfBxCBlHRB+xHVSThOXcWZYu/DYLI/w9ThccScak31vl7eTHqGgYxQm8K7I42
	KZXAaP2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7v-008lyY-19;
	Fri, 10 Nov 2023 13:00:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwA-1S
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dcL4yePoUWL+ryHak74MID2P5sKU9UBh8HAmEBiIUE4=; b=BVLxBhsyXZbmnTyEWpXjVtLS4V
	0QT+vuLSP8piuom05PA6/pLClt1QBinms49zI6cvqSMTMKjeyT/zlYhtikLdgLpzHryVUjTyNXOVs
	VEtuzx9ErqFswiFUutyvZbfu+xBHUo7fYxmZMyBZff38nXIKgUuMbiwk0ESdpcG6VgLBf8DqwHF9y
	ZTDXbSPOZci7rZRlWeF1zEl6FMfC86xKwGSYhcFCeNLMYldHqSQy5ODFHl+TwpW9kWMLIrigHiuj/
	bYpFNZRL81+h9fsdisqs0LY4OEnE6EQUoa9Xi9dC3dXo60+84+5J38lbXEA6nI1tl3EaJ83Z/mPLH
	+/0+ZanQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3t-0f
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043J-Je; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Z6-BO; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096NA-0o;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:22 +0100
Message-Id: <20231110130028.2123895-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_672732_7E219D94 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 07/13] ddr: imx8m: remove empty function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ddrphy_init_read_msg_block() is empty. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_train.c | 2 --
 drivers/ddr/imx/ddrphy_utils.c | 4 ----
 include/soc/imx8m/ddr.h        | 1 -
 3 files changed, 7 deletions(-)

diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index af4d710dc0..302acdfe62 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -156,8 +156,6 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 		/* Read the Message Block results */
 		dwc_ddrphy_apb_wr(dram, 0xd0000, 0x0);
 
-		ddrphy_init_read_msg_block(fsp_msg->fw_type);
-
 		if (fsp_msg->fw_type != FW_2D_IMAGE)
 			dram->get_trained_CDD(dram, i);
 
diff --git a/drivers/ddr/imx/ddrphy_utils.c b/drivers/ddr/imx/ddrphy_utils.c
index 4577547113..5f80b8fdc1 100644
--- a/drivers/ddr/imx/ddrphy_utils.c
+++ b/drivers/ddr/imx/ddrphy_utils.c
@@ -101,7 +101,3 @@ int wait_ddrphy_training_complete(void)
 		}
 	}
 }
-
-void ddrphy_init_read_msg_block(enum fw_type type)
-{
-}
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index bdf0f25727..0a2a7b0e2f 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -456,7 +456,6 @@ void dram_config_save(struct dram_timing_info *info, unsigned long base);
 
 /* utils function for ddr phy training */
 int wait_ddrphy_training_complete(void);
-void ddrphy_init_read_msg_block(enum fw_type fw_type);
 
 #define reg32_write(a, v)	writel(v, a)
 #define reg32_read(a)		readl(a)
-- 
2.39.2



