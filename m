Delivery-date: Fri, 10 Nov 2023 14:01:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R90-005reW-07
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:01:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R8z-00053s-Qv
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:01:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bFSFeFVgYEvA7kA9p+//MaoOP1noG+4KqJdpKW8/wfI=; b=HdtXsVqw2fVUvhcfGOgDn4DdTU
	PPjxWR/4jIXwgV6HWmwA8CLbLsXcUQym3FXK50Paa6KjhJvmpOoAqt4kWxedKJAmvyks8FFPAvkZX
	1VqMN16rmNxnkjssgfTRPObKiv3M5S+RFFs0+am7EyO/sxYPXZ/qqD/rjBTcUXWjkaP8qe/+tj6qj
	V0HzUM6SeCBvv65tOJbf5OICmRDQeQgP0EDRFQSPaRJGfmqVaGfaY1JC9d/Yo8Xh1P+Gkq5pp/HOc
	/INQNI7blqTVsJ3US/EcjYQOQ+zbf7Bu2YwLsrtDmmxSflyubUhw2E7HhmMtrjZUT3gKKJOISIb7p
	7kNYPteQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7x-008lzX-0y;
	Fri, 10 Nov 2023 13:00:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwF-1V
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bFSFeFVgYEvA7kA9p+//MaoOP1noG+4KqJdpKW8/wfI=; b=kNN0Yn0BsEQma0A19tg8AwhCRa
	6JNSQRKLGeYGPEzMpKr6uWvq2FS9PalIC7sJZMlAKA5asjnj+G1NlDp4J5/k1XHvuqLlgD167kQE5
	eI8hMdRb+l1qXiZwyf6oWNGFdXxEpayLOPtius1k5Co/ha1PDqdLTWxpYqo6Msa0h3dHkSEWM/L5E
	NpLZAtz7viGWMzYVEFSooiieeCuOG2xH6LthcXoMOVwPJYMhEjtamhEeSqDX0Kohfp+u7vatmWNVU
	6IOm5TmVEUqZOvr5dmIzWQi4CHvuAp/cWEAz4dAhFxPMHbB2kqXLZ4eB8dldH89pFIPFyBmWY0G7j
	Gik5rphA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3v-0n
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043O-KP; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081ZI-Cg; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096Nd-10;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:25 +0100
Message-Id: <20231110130028.2123895-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_802643_1AF2B1C4 
X-CRM114-Status: GOOD (  11.76  )
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
Subject: [PATCH 10/13] ddr: imx8m: return cfg from dram_config_save()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming i.MX9 support needs this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/helper.c | 4 +++-
 include/soc/imx/ddr.h    | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ddr/imx/helper.c b/drivers/ddr/imx/helper.c
index 0bd8d2688a..f21b14447c 100644
--- a/drivers/ddr/imx/helper.c
+++ b/drivers/ddr/imx/helper.c
@@ -27,7 +27,7 @@ void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param
 	dwc_ddrphy_apb_wr(dram, 0xd0000, 0x1);
 }
 
-void dram_config_save(struct dram_timing_info *timing_info,
+void *dram_config_save(struct dram_timing_info *timing_info,
 		      unsigned long saved_timing_base)
 {
 	int i = 0;
@@ -83,4 +83,6 @@ void dram_config_save(struct dram_timing_info *timing_info,
 		cfg->val = timing_info->ddrphy_pie[i].val;
 		cfg++;
 	}
+
+	return cfg;
 }
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index 711abc07ba..bc793cf3ed 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -90,7 +90,7 @@ static inline void ddr_get_firmware(enum dram_type dram_type)
 int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
 void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param *param,
 			     unsigned int num);
-void dram_config_save(struct dram_timing_info *info, unsigned long base);
+void *dram_config_save(struct dram_timing_info *info, unsigned long base);
 
 /* utils function for ddr phy training */
 int wait_ddrphy_training_complete(struct dram_controller *dram);
-- 
2.39.2



