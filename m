Delivery-date: Tue, 16 Jul 2024 13:56:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgng-005QpD-2A
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:56:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgng-0000mN-3v
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:56:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=epe4jCz4omzktQObDLPYTAMuRAnJfLxMszGr2WtuOn0=; b=Zl74KLCBqfo81jRlSSEW1rjOLE
	ceKpqJTKTuAwiCuFi2TqlKdU+4AJZcWLuTpLlHxg+JH4jyUGE0UTO+nAHZFiOZ8Nu6Yku/rXW1xpt
	8RzP+1uEn0/H8FrwehN2p6ELp8Zp4WEbuaByoGD2cEDeVN0gdgDV6+3d/VCW3hiNXCvOsiBhv701w
	yJYzBxq7dyp8Sqdi7JCwLxQHu+bWHk6wSCYVeniVtcknmV1r/JZ/utbWCa8obJxnFXuOZ43+F3EIr
	v5HmOIFizOUXMxRzcBGq3j2mVwUsS/BX6V+DHGx65gkJnSMwL34NaoNiOOGnwzl2FeimxMuOFeF1F
	y7jr0G0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgnC-0000000AJpQ-1vhv;
	Tue, 16 Jul 2024 11:56:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgnA-0000000AJoi-01Oz
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:56:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgn8-0000am-QN; Tue, 16 Jul 2024 13:56:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgn8-0007YK-Dk; Tue, 16 Jul 2024 13:56:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgn8-008CH2-14;
	Tue, 16 Jul 2024 13:56:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:56:21 +0200
Message-Id: <20240716115621.1953788-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045624_061540_21DA53E6 
X-CRM114-Status: UNSURE (   9.76  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] aiodev: mc13xxx_adc: zero-initialize struct aiochannel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The mc13xxx_adc driver is the only driver that doesn't allocate the
channels from pre-zeroed memory. The aiodev core doesn't currently
require it, but we may want to in the future, so let's explicitly
zero the channel like all other drivers do.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/mc13xxx_adc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/aiodev/mc13xxx_adc.c b/drivers/aiodev/mc13xxx_adc.c
index 21eea1f525af..4d80ee57e3f5 100644
--- a/drivers/aiodev/mc13xxx_adc.c
+++ b/drivers/aiodev/mc13xxx_adc.c
@@ -196,7 +196,7 @@ int mc13xxx_adc_probe(struct device *dev, struct mc13xxx *mc_dev)
 
 	mc13xxx_adc->mc_dev = mc_dev;
 	mc13xxx_adc->aiodev.num_channels = chans;
-	mc13xxx_adc->aiochan = xmalloc(mc13xxx_adc->aiodev.num_channels *
+	mc13xxx_adc->aiochan = xzalloc(mc13xxx_adc->aiodev.num_channels *
 			sizeof(*mc13xxx_adc->aiochan));
 	mc13xxx_adc->aiodev.hwdev = dev;
 	mc13xxx_adc->aiodev.channels =
-- 
2.39.2



