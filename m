Delivery-date: Fri, 07 Feb 2025 08:21:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgIfl-009Xv2-1v
	for lore@lore.pengutronix.de;
	Fri, 07 Feb 2025 08:21:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgIfl-0000bk-Ly
	for lore@pengutronix.de; Fri, 07 Feb 2025 08:21:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OvIAO90Q7lxIDt10Fq2cOT0sans9+GJxEqBnxsHRkqE=; b=Ss+6WKWp+yrMHCDY/8XRLfBmzE
	stS9TI5ggM5AWHtZyzlchkt4qcGc529aTcYkeKLzftQSdyC+4dm6FhZ/QMRxM4QJjOepcFqvyNmtW
	c+ok66qiUO/4GarQ8h28WrMMGO8RC1X/Yg95drHo2EI6EZOZRgf4tH97fcIHdAQzME9dZ9BL9dmhI
	4L6IfcPCljUexbp8OAcZLfANUYLs8iO22pQayarJwlpxVVXRd4BX9oePCv3eNsi5bCE6pkbsPdevN
	wg7OdVqpyW0vKdbIHsOurOfmcGjz3ViVPthIPEIDfmofFCfXrheAubPZ+Yr9xqHv7srXFXukLq6n5
	j6oi7meA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgIfA-00000008cVB-0b8K;
	Fri, 07 Feb 2025 07:20:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgIf7-00000008cUc-1m4H
	for barebox@lists.infradead.org;
	Fri, 07 Feb 2025 07:20:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgIf6-0000UN-8r; Fri, 07 Feb 2025 08:20:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgIf6-003wGo-0H;
	Fri, 07 Feb 2025 08:20:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgIf5-000x0b-39;
	Fri, 07 Feb 2025 08:20:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  7 Feb 2025 08:20:26 +0100
Message-Id: <20250207072026.226822-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_232029_470173_85367E82 
X-CRM114-Status: UNSURE (   9.71  )
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
Subject: [PATCH] mfd: tps65219: register regmap cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Expose the tps65219 regmap as cdev for debugging purposes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/tps65219.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mfd/tps65219.c b/drivers/mfd/tps65219.c
index 11f2e1798b..854210537f 100644
--- a/drivers/mfd/tps65219.c
+++ b/drivers/mfd/tps65219.c
@@ -65,6 +65,10 @@ static int tps65219_probe(struct device *dev)
 			return dev_err_probe(tps->dev, ret, "Failed to add power-button\n");
 	}
 
+	ret = regmap_register_cdev(tps->regmap, NULL);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.39.5



