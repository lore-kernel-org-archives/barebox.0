Delivery-date: Tue, 01 Nov 2022 16:33:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGf-00B01m-0N
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGd-0005LL-FF
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rf/mujuJOXZtNnhkHuvXcWvWvEXL5VMV6Xu0s8yg+3I=; b=3u5TeZXAgT+GruxCaG2aXjLamv
	BhxEt395gQcvn78Ip/3JVN3GbStYUZrdQgK3kCCOzFlb8UuvwzJAguK0eJMcD4nCqSkpVqdzPkNPE
	bM6kU8TBeEcwZDcX3sZ3s8PM7lEfdqdY1V1czejQ3WVP201WxHRybIuwbOH3rHI/ndIBMZqZm6DAZ
	I1CtU7BN9GINLLITamIOQDuz9DzJD6b2CGqhfn629amllSy58DqImHetLzrtgLMTk5SlDFVr4as5Q
	HRIW+UbA0SzPQB8PpgdZKI9ytaL7CR7A00c5wjrQjxhSuTXmzOrCYT5hqFwZGjeHaQcOIsTYxtWhR
	4xmvy3hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optF4-005orE-Kt; Tue, 01 Nov 2022 15:31:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXJ-4D
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-0004gA-60; Tue, 01 Nov 2022 16:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001hdy-Fq; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Ey8-FP; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:44 +0100
Message-Id: <20221101153048.772146-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_234491_CF01AD33 
X-CRM114-Status: GOOD (  13.33  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/14] imx-bbu-nand-fcb: Fix reading FCB information from BCH registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

fcb->EccBlock0Size and fcb->EccBlock0EccType must be extracted from
the BCH_FLASH0LAYOUT0 register, not from the BCH_FLASH0LAYOUT1 register.

As we always use the same ECC block size for both the first and the
subsequent blocks there's no functional change in this patch, it's only
for consistency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 63c81e4ed6..05bee912e4 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1572,10 +1572,10 @@ static void imx7_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 	fl0 = readl(bch_regs + BCH_FLASH0LAYOUT0);
 	fcb->MetadataBytes = BF_VAL(fl0, BCH_FLASHLAYOUT0_META_SIZE);
 	fcb->NumEccBlocksPerPage = BF_VAL(fl0, BCH_FLASHLAYOUT0_NBLOCKS);
+	fcb->EccBlock0Size = 4 * BF_VAL(fl0, BCH_FLASHLAYOUT0_DATA0_SIZE);
+	fcb->EccBlock0EccType = BF_VAL(fl0, BCH_FLASHLAYOUT0_ECC0);
 
 	fl1 = readl(bch_regs + BCH_FLASH0LAYOUT1);
-	fcb->EccBlock0Size = 4 * BF_VAL(fl1, BCH_FLASHLAYOUT0_DATA0_SIZE);
-	fcb->EccBlock0EccType = BF_VAL(fl1, BCH_FLASHLAYOUT0_ECC0);
 	fcb->EccBlockNSize = 4 * BF_VAL(fl1, BCH_FLASHLAYOUT1_DATAN_SIZE);
 	fcb->EccBlockNEccType = BF_VAL(fl1, BCH_FLASHLAYOUT1_ECCN);
 	fcb->BCHType = BF_VAL(fl1, BCH_FLASHLAYOUT1_GF13_0_GF14_1);
-- 
2.30.2



