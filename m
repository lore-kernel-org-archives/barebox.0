Delivery-date: Tue, 04 May 2021 16:11:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldvm7-0005JQ-1j
	for lore@lore.pengutronix.de; Tue, 04 May 2021 16:11:47 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldvm6-0006kv-Cl
	for lore@pengutronix.de; Tue, 04 May 2021 16:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ZyMCxZ3Ed9+EHJPVLs3o8QS6riLShVdsAN6FtC6I6w=; b=Ki86pesaqq0Dz6UwiNjUprkqQ
	jS2qJeQ3gohMm0c0TwyvZucdOZ2AEcX5lEPdNeBj8gQ2T6k52LUrJaaAqh3M/aWBaT9CeaUaEvA/1
	IhvAKRTIocdqEURFN+EVWQdYXVYQ75zaENRyk0V2Hml235hawLQgWiAvdbVHRioil4tF2/vA80BkS
	+bCSWUemizu2vvgi43/89PM1FTiPgYouTzMwH5pYct7JkPWT13+UR2iNZhgqsiSxNl5vqgj1LDNAU
	yK6TpT3LIZpbWhsUlp6icTAqmblD8qOwyP4N8g8l5PAH2gwAIwhtQ2vwoexoxddSEAVf+vAXe6DgD
	O1FhhQWLw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldvl5-00GL33-Na; Tue, 04 May 2021 14:10:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldvl1-00GL2O-Mo
 for barebox@desiato.infradead.org; Tue, 04 May 2021 14:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=8J9BI6jbv/DoRlx2j1Pb8o6HXNuNw+dB0Q+lvai0R7Q=; b=m2hmwzLvsGuElJ6CXs9Ayvo9Kc
 dB3aNz/v1jmbmeegr527xgzrjNCV19YImTjb10ZAe6ruqWtfiUdrLA9hXRJWhMpyPqyqwyt7oILwa
 A9fsF/UZAX3dCtMKujE1zQeJ7vI9mPwMTR1ccvaQQdVq3TwJVJoWBI1ES0ydaOUKR+fA7yRj4x+4B
 3ea0+LVUTMfZlQcHzO9WWEC37JjLTBAHcUPo0wjS9DOBiExf8tVM6jAs5sByXZscJXBGO1vZ1/BiN
 EedPYEklMkXQiMs0PM4Zt+F7W7q1iWmsApYhwN81IzdEPX8cjzC7Tw21DH1X61Z/J8ztoND/IiLU4
 8PCZot3w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldvkz-0041iv-35
 for barebox@lists.infradead.org; Tue, 04 May 2021 14:10:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldvkv-0006RL-DR; Tue, 04 May 2021 16:10:33 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldvkv-0000vh-3a; Tue, 04 May 2021 16:10:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  4 May 2021 16:10:31 +0200
Message-Id: <20210504141031.3457-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210504141031.3457-1-s.hauer@pengutronix.de>
References: <20210504141031.3457-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_071037_147538_C87E1855 
X-CRM114-Status: GOOD (  10.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] mtd: nand: mxs: Enable edo mode switching for i.MX28
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Without it we will never use the faster timing modes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index e4bad45a18..0540ba0216 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2041,9 +2041,6 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	uint8_t feature[ONFI_SUBFEATURE_PARAM_LEN] = {};
 	int ret, mode;
 
-	if (!mxs_nand_is_imx6(info))
-		return -ENODEV;
-
 	if (!chip->parameters.onfi)
 		return -ENOENT;
 
@@ -2186,6 +2183,7 @@ static int mxs_nand_probe(struct device_d *dev)
 		nand_info->dma_channel_base = 0;
 	} else {
 		nand_info->dma_channel_base = MXS_DMA_CHANNEL_AHB_APBH_GPMI0;
+		clk_set_rate(nand_info->clk, 22000000);
 	}
 
 	err = mxs_nand_alloc_buffers(nand_info);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

