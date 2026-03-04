Delivery-date: Wed, 04 Mar 2026 13:46:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxlck-007zCb-0j
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 13:46:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxlck-0008WL-Jf
	for lore@pengutronix.de; Wed, 04 Mar 2026 13:46:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xeXwg2Rs/73/lB1G1ce128qlu3WGzqdY94vc77aa294=; b=1jwTYxkOXaTvYA
	pPPil1UXnG8ZDfnu9vBuA7KsBo3/urPUzXJ0XQYJaRGpEMynU6ie63anenplxrIOxfTYnTpiKbX4H
	1Sovp0pFp5ONPxQDNtdrBIezYER5UkAFA2oRx74x1Y4rDzEFzI7UZ8QdoRwW6RBha4siaCLfkBww8
	GFf+g82NLHJ/w87XISHg4ai8+XiSMyyNbMDk3ZrYpGbU0G2VBm1x35rCqhSQFE46BcDuudvqCyImi
	7/PbPVt4vknV/tAlLlZRWYMx7xKmeZaZN3dlqd1REXhl44t4L513PnRqrNtcFRtTlC2sMaLumqipN
	RwNEY2I7xTTVBO9Ay+Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlcJ-0000000HCCq-17js;
	Wed, 04 Mar 2026 12:46:19 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlcG-0000000HCBn-2VVa
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 12:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=xeXwg2Rs/73/lB1G1ce128qlu3WGzqdY94vc77aa294=;
	b=nEDjLXXNoHmlN7YjykS5xDxlbdEfJwKyum4BPxj28Sc5oACKTZK7rBRSNJDE0dnippqE2ERYHSDKj
	 wYarD+mDjoV/QLQWzjC1H1fk8qPjlKQwdKW2x1u+ut00S94xA9RMLwE5f34C+7KOyYtOP4gcsMjNAa
	 o/K3j/ijoV10okhY1pRB/oGEIxt1hOLmlAdZsIkYkUrb+PAHPOt8Eqmc7IVMtz2/8FLvwgdBzBWcTK
	 KxwfDqZpMOftk3XxFLgfS+h/mUarjkH4anZamvacwLTfMW/EGAQ8wh1bKE18xThKGmV3AojNW9mRm6
	 PiYZd/h2dvbG06TQG8UtHm6LAPViveQ==
X-MSG-ID: 20ab7b7a-17c8-11f1-b532-0050568164d1
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 13:46:06 +0100
Message-ID: <20260304124606.549402-1-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_044616_795164_966D4024 
X-CRM114-Status: UNSURE (   9.15  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] aiodev: rockchip_saradc: Fix ADC resolution for RK3562
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3562 has a 10 bit A/D converter.

Fixes: 6e46ee2f (aiodev: rockchip_saradc: Add RK3562 support)

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 drivers/aiodev/rockchip_saradc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index d4cb1f4fbe..38f6f0d93e 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -257,7 +257,7 @@ static int rockchip_saradc_probe(struct device *dev)
 }
 
 static const struct rockchip_saradc_cfg rk3562_saradc_cfg = {
-	.num_bits = 12,
+	.num_bits = 10,
 	.num_channels = 8,
 	.read = rockchip_saradc_read_v2,
 };
-- 
2.43.0



