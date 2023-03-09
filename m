Delivery-date: Thu, 09 Mar 2023 13:02:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEz0-00EoDq-7s
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 13:02:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEyz-0000o1-9a
	for lore@pengutronix.de; Thu, 09 Mar 2023 13:02:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Pv0A+wKIniZpwzMnfFZ5pCOfG0h8iz3xuoMp4HS4QQ=; b=e9Hn/mPtRJWOqthc7hxniUDxai
	VZziyGtz0KDyDacDQdr/EoAqm/6CCwUTSpWEqDkSZUyMpMF09flUct4Kd+dAEWmLPq/5NjdP9qHgt
	4ffIOJeSJTfhfyznfnZtyTWIccpZedpEA/WJ8XE43moPR3RoC238ual25BSvNRax23S6cc6pIf/QZ
	gHqI024gTB3HTbkj4eKn5SE/ua9zlzdZ9ryeD+/PDoccbMdODM/7PJPmnJqYYesNZ0y94d8++DH2A
	7apP9291Rg24tdV2gTQpd9cF283qq75EXx7yO5abkwudO6nCq5TljIWdCAOMhO+ijXbrhwEMRAxyT
	sIi1qc2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paExY-009kDd-FI; Thu, 09 Mar 2023 12:01:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEoe-009gJD-HB
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:52:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paEod-0007AT-1L; Thu, 09 Mar 2023 12:52:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEoc-002w6k-Bu; Thu, 09 Mar 2023 12:52:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEob-004NbH-KJ; Thu, 09 Mar 2023 12:52:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 12:52:04 +0100
Message-Id: <20230309115208.973893-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230309115208.973893-1-s.hauer@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_035212_641063_64881791 
X-CRM114-Status: GOOD (  14.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/7] i2c: implement rescan
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

struct device::rescan is called by the core to let the subsystem rescan
the controllers device node. Implement that for I2C. Ahmad recently
implemented the struct device::detect hook for the very same purpose.
The downside of that approach was that device_detect() had to be called
manually and that either needs knowledge which device actually has
updated device nodes, or all devices were detected, like unrelated USB
or MMC/SD devices. The rescan hook doesn't need that manual detect call,
so just drop the I2C detect implementation in favour for implementing
rescan.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index efcad29342..df89b8fb65 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -471,15 +471,7 @@ int of_i2c_register_devices_by_node(struct device_node *node)
 	return 0;
 }
 
-static int i2c_bus_detect(struct device *dev)
-{
-	struct i2c_adapter *adap = container_of(dev, struct i2c_adapter, dev);
-
-	of_i2c_register_devices(adap);
-	return 0;
-}
-
-static int i2c_hw_detect(struct device *dev)
+static void i2c_hw_rescan(struct device *dev)
 {
 	struct i2c_adapter *adap;
 
@@ -489,8 +481,6 @@ static int i2c_hw_detect(struct device *dev)
 		of_i2c_register_devices(adap);
 		break;
 	}
-
-	return 0;
 }
 
 /**
@@ -720,7 +710,6 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	}
 
 	adapter->dev.id = adapter->nr;
-	adapter->dev.detect = i2c_bus_detect;
 	dev_set_name(&adapter->dev, "i2c");
 
 	ret = register_device(&adapter->dev);
@@ -732,11 +721,12 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	/* populate children from any i2c device tables */
 	scan_boardinfo(adapter);
 
+	of_i2c_register_devices(adapter);
+
 	hw_dev = adapter->dev.parent;
 	if (hw_dev && dev_of_node(hw_dev)) {
-		if (!hw_dev->detect)
-			hw_dev->detect = i2c_hw_detect;
-		i2c_hw_detect(hw_dev);
+		if (!hw_dev->rescan)
+			hw_dev->rescan = i2c_hw_rescan;
 	}
 
 	return 0;
-- 
2.30.2



