Delivery-date: Fri, 10 Mar 2023 10:44:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZIB-00Fvk4-PY
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 10:44:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZIB-0006n8-JK
	for lore@pengutronix.de; Fri, 10 Mar 2023 10:44:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VZsDS9vD1qQFrkdqUbeetr5Ik6XOoY1ZMx+3li+//FI=; b=A/83iJbVXWdAc+Hu2ow1LxWlKF
	F1ftVh6LQqkYoF7WEJQZ0tOn+YWiLBNoaUPXyn35HbKIShSla2i61aa3Z+1w1CSagagsYmhjPdKOe
	Ni7y6NgUMo5/nAuCFJyUEvVxACeH7BJ6Zq4XWGwkxYMdshoIEO53vGDsVZlyBCCQlFDRkplpZRcyR
	sYT4Mw5uao6HCarJ8Yw3tG3ZzCcI79wwyXnS3HPUxc26NV84jKTNUgOTbv4n8qINVAGfK1s9cq033
	zydNuL01s+HH3wxARa6NldJdfdY1tflOjrIowXrV6awCRjoul+MKhnMj2aOehHhf/iEKfhbKSD8IY
	vczAIL4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGl-00Dz98-Rw; Fri, 10 Mar 2023 09:42:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGd-00Dz4l-Jt
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 09:42:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGb-0006M0-FW; Fri, 10 Mar 2023 10:42:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGa-003943-Rd; Fri, 10 Mar 2023 10:42:24 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGZ-00B49O-GF; Fri, 10 Mar 2023 10:42:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Mar 2023 10:42:18 +0100
Message-Id: <20230310094222.2538259-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230310094222.2538259-1-s.hauer@pengutronix.de>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_014227_728391_B4F785D9 
X-CRM114-Status: GOOD (  15.94  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/7] i2c: implement rescan
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
 drivers/i2c/i2c.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index efcad29342..4c7b7008ce 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -420,6 +420,10 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 {
 	struct device_node *n;
 
+	/* Only register child devices if the adapter has a node pointer set */
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.of_node)
+		return;
+
 	for_each_available_child_of_node(adap->dev.of_node, n) {
 		struct i2c_board_info info = {};
 		struct i2c_client *result;
@@ -471,15 +475,7 @@ int of_i2c_register_devices_by_node(struct device_node *node)
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
 
@@ -489,8 +485,6 @@ static int i2c_hw_detect(struct device *dev)
 		of_i2c_register_devices(adap);
 		break;
 	}
-
-	return 0;
 }
 
 /**
@@ -720,7 +714,6 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	}
 
 	adapter->dev.id = adapter->nr;
-	adapter->dev.detect = i2c_bus_detect;
 	dev_set_name(&adapter->dev, "i2c");
 
 	ret = register_device(&adapter->dev);
@@ -732,11 +725,12 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
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



