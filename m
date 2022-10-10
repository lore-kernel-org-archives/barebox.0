Delivery-date: Mon, 10 Oct 2022 08:12:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm1w-0033dD-Jf
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:12:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm1u-00015n-FV
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:12:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lLdGRORf+BecAENGMM2MbGpvXq96b73cAkgekae8Fkw=; b=O1VJi/B1GK1aHY3XC1+PxZ76XD
	QgQJLIP09+wLEGx+FTKd2DOpujxAQVZ2N4W2Dy7wM3Cwt1ITC/EFLwqThQOfbPubDinBMfRTq8X3j
	fKytw3CSMClZcqKAzbaE/aTfnz8I7WrErGPizPyIMXpEq2dRhnMzeg5t0KEhTo1NQ3amMGxfLc6Eh
	OzD4PT/wdUJzUeUTZtkdgvXGanBrQcFuroEcABkoPZObszDA+rR+yz9vJ6CD63lT4DvnMDcOL7t1S
	U129IZeKisJnEJO3ZI0Mn5Bhs10LuB8ZAst9/hcj6RHdGXg9h48Ah0XhxnBy0xee+NTJchrYP49C6
	2CDg1rUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0j-00HAZy-Rh; Mon, 10 Oct 2022 06:11:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0d-00HAWY-Cn
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0b-0000Xq-Vl; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0b-000d9i-6k; Mon, 10 Oct 2022 08:11:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kAh-3h; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:13 +0200
Message-Id: <20221010061122.2084009-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231127_471423_D01EB238 
X-CRM114-Status: GOOD (  11.03  )
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
Subject: [PATCH 01/10] block: have cdev_get_block_device accept const cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having a non-const cdev parameter for cdev_get_block_device() limits its
use as a user may want to just read struct block_device members without
change. Allow this by changing parameter to be pointer to const instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c  | 2 +-
 include/block.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/block.c b/common/block.c
index 19bb81df2c3d..6290a45b7c46 100644
--- a/common/block.c
+++ b/common/block.c
@@ -361,7 +361,7 @@ static struct cdev_operations block_ops = {
 	.discard_range = block_op_discard_range,
 };
 
-struct block_device *cdev_get_block_device(struct cdev *cdev)
+struct block_device *cdev_get_block_device(const struct cdev *cdev)
 {
 	if (!cdev || cdev->ops != &block_ops)
 		return NULL;
diff --git a/include/block.h b/include/block.h
index 1fb40e942f9f..8740a03d36bc 100644
--- a/include/block.h
+++ b/include/block.h
@@ -50,9 +50,9 @@ static inline int block_flush(struct block_device *blk)
 }
 
 #ifdef CONFIG_BLOCK
-struct block_device *cdev_get_block_device(struct cdev *cdev);
+struct block_device *cdev_get_block_device(const struct cdev *cdev);
 #else
-static inline struct block_device *cdev_get_block_device(struct cdev *cdev)
+static inline struct block_device *cdev_get_block_device(const struct cdev *cdev)
 {
 	return NULL;
 }
-- 
2.30.2



