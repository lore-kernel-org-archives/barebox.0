Delivery-date: Mon, 25 Nov 2024 16:32:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4s-000G1e-1P
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:32:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4s-0003wr-4m
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:32:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=62N6/B4OZ1aDSdLBbvqS5Xi0mamSTfBdAfRMd1Te/UM=; b=bb6bHDMF8mCC23tWCt/sRAZvCy
	oGO0HIUQjK5+bT93okwelXLV8jgArRZZcYWx6hhp82kTnekwiZoF8By58d3EZWXRtXrfz5qqt6Brs
	/LW0Qc5m2weSWB2s8M4WURWjfkMdX7iU8UpmrdqwX6cpRqhzOtk78aMK3YRB8TA8aQvwqJQyHfqab
	tlDSVOanvLRIMkUpLElPVOuhOE+BYJdw4iV1gPESfx1BbxG/Fe2YxOgUNfrGWYNBS+K7EVehUo1fc
	u0cEugfbuhxUmHbUPOLg303W0ahaEDOOBzOWHjQrL1sp02fx4m3OZXPtW7BGFE+6Lr8R35jTRPVr+
	Q16X2srQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb4R-00000008Uw5-1nCT;
	Mon, 25 Nov 2024 15:32:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb1m-00000008UGg-2PsJ
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:29:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1l-00036I-5b; Mon, 25 Nov 2024 16:29:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-0006QI-0f;
	Mon, 25 Nov 2024 16:29:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-002dWd-0q;
	Mon, 25 Nov 2024 16:29:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:29:21 +0100
Message-Id: <20241125152927.546493-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152927.546493-1-a.fatoum@pengutronix.de>
References: <20241125152927.546493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072930_609241_A5C0113C 
X-CRM114-Status: GOOD (  11.46  )
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
Subject: [PATCH 1/7] sandbox: hostfile: strdup device tree node names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Later commits will change struct device_node::name to have a type of
const char *, leading to a warning here.

A nicer fix would be to use strdup_const here, but this needs some more
work, so for now duplicate the string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 7afad95b6d8b..9122ff9da2f1 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -156,7 +156,7 @@ static int hf_probe(struct device *dev)
 	cdev_set_of_node(cdev, np);
 
 	if (is_blockdev) {
-		cdev->name = np->name;
+		cdev->name = strdup(np->name);
 		priv->blk.dev = dev;
 		priv->blk.ops = &hf_blk_ops;
 		priv->blk.blockbits = SECTOR_SHIFT;
@@ -169,7 +169,7 @@ static int hf_probe(struct device *dev)
 
 		dev_info(dev, "registered as block device\n");
 	} else {
-		cdev->name = np->name;
+		cdev->name = strdup(np->name);
 		cdev->dev = dev;
 		cdev->ops = &hf_cdev_ops;
 		cdev->size = reg[1];
-- 
2.39.5



