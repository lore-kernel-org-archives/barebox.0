Delivery-date: Fri, 25 Oct 2024 10:51:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2J-000Ysc-2r
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 10:51:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2K-0001Oy-A4
	for lore@pengutronix.de; Fri, 25 Oct 2024 10:51:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ah2gyWuhNb6cXWwPafKgPfS1tcqcNWm54/tKRMwCZG4=; b=Lw1Kj9xuxWzuTTsjFil/3oyId8
	EZOH9gCxWZVZ65y0+7/kFum68wYySGAJ/Eu8TQH05oB394fOYf70ookuyDSKa8n2LJHfPKzGrbeZ0
	KK3Df1OJr/yPLZpsOws15FF/HvALQIfBtGm3SEj4oNI0L8IqwQ85pneuvq9DZi9a5IBv7w26iz1IF
	EXl8yTi6iORUeF9j2Lmtm678LV+ma6sOYgPAtR9ecvQ+JOuPqE+2KZtCrD7gLBrrCMo98HWXlF+gq
	BeXT/7/h0/TcHmZXlmhzILjeJHgBY2/4dwMeCf3d+T3zxUV5PnG7RTaWcfG1sPh18SERUpRLzLkEl
	DHZVgWHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G1s-000000032ux-47Kc;
	Fri, 25 Oct 2024 08:50:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G0T-000000032RP-1vrI
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:49:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0C-0000zM-1L; Fri, 25 Oct 2024 10:49:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-000KrT-2g;
	Fri, 25 Oct 2024 10:48:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-008U4a-2V;
	Fri, 25 Oct 2024 10:48:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 10:49:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-phy-class-v1-2-24bf51365a08@pengutronix.de>
References: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
In-Reply-To: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729846139; l=1266;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sk7EbX5gZPy6Ly5E6aGSikKyobPofIspOIjC5lQI8Rc=;
 b=EZmQPvXno5QGDqlSxW+DMtv3HeM2muMOlcECGbVf76YMWWY3oSV8S3YR+LfzhmNMvICk8HC1/
 lun7+lb3XjdBvY2VjMv0Fe4jyfrQOHcWVSjymN96vrt4DelXE6n6IZV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_014917_546760_0C440F45 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] phy: put phy devices in class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Collect all phy devices in their own class. Let's us list the phy
devices in the class command and gives us an iterator over phy devices
for free.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/phy-core.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index c289e75c78..cd9b59f1fd 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -16,6 +16,10 @@
 static LIST_HEAD(phy_provider_list);
 static int phy_ida;
 
+#define for_each_phy(p) list_for_each_entry(p, &phy_class.devices, dev.class_list)
+
+DEFINE_DEV_CLASS(phy_class, "phy");
+
 /**
  * phy_create() - create a new phy
  * @dev: device that is creating the new phy
@@ -40,7 +44,6 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 
 	id = phy_ida++;
 
-	dev_set_name(&phy->dev, "phy");
 	phy->dev.id = id;
 	phy->dev.parent = dev;
 	phy->dev.of_node = node ?: dev->of_node;
@@ -57,7 +60,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 		phy->pwr = NULL;
 	}
 
-	ret = register_device(&phy->dev);
+	ret = class_register_device(&phy_class, &phy->dev, "phy");
 	if (ret)
 		goto free_ida;
 

-- 
2.39.5



