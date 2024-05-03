Delivery-date: Fri, 03 May 2024 12:15:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2pxH-00H67y-03
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:15:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2pxG-0006cP-CT
	for lore@pengutronix.de; Fri, 03 May 2024 12:15:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IguNVg4sTt7u+FYhwzI/+gSbtBTHKSGumE/NyMRsGk8=; b=5CW5zy3NMjNSd39jauSn5R5IlL
	nNaAguW/HrzoHe9KOxnzk4fGvnQS+ACHojoQDAEkqWS8uVC/lmlq4NRrnwZjCafnuh777aOmkuuC5
	PGf/V+J0k/rExjXvsuxOXkuRZGYuoxnEs6sJMgAL76SRQeS4xbV8DJqhf7IhwChigdy+6An2Z4uVB
	FqOV3TvQYwiOc9Jj1BjFB4zkD3TaJljCEgDec6Wne5jvRynAhuQlBwfx8jykoYMBRYCPFwvu+ZPQb
	lM8YZ9GAoGoVqIemJjpHuhl3/pAQUSuf+qiWYeW9cmpzu84ZIQjTOgrQiqAMAEB8w1+yoeLbTyTzr
	u1ofxQ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pwr-0000000G0Xy-3gaX;
	Fri, 03 May 2024 10:15:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pwo-0000000G0Wt-117c
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:15:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pwm-0006UJ-NE; Fri, 03 May 2024 12:15:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pwm-00FgS3-Aj; Fri, 03 May 2024 12:15:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pwm-0059Di-0m;
	Fri, 03 May 2024 12:15:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:15:19 +0200
Message-Id: <20240503101519.1226971-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_031522_405256_8F355317 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: pca9450: don't warn if PCA9450_PWRON_STAT is 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The register is zeroed on read, so network booting always prints the
warning that the reset reason is unknown.

Skip the warning in this case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/pca9450.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index be357c10239f..89eca9f890e3 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -53,6 +53,8 @@ static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
 		break;
 	default:
 		dev_warn(dev, "Unknown reset reason: 0x%02x\n", reg);
+		fallthrough;
+	case 0:
 		type = RESET_UKWN;
 	}
 
-- 
2.39.2



