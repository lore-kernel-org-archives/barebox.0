Delivery-date: Wed, 08 Mar 2023 15:26:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZukm-00DfYM-FJ
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 15:26:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZukl-0003bX-NU
	for lore@pengutronix.de; Wed, 08 Mar 2023 15:26:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wN0LhS8Izt5naQAoWfDtdQAMjm0+cs3RouBFG6fyPq0=; b=FPL1zdmV+m8srHlDxKeL4KNBSE
	legvhWRQ5yYG/YNVJt3dI0eNfFXB181xc2SZFDrrqKwQNWE9wMdgFmHZZqaLxsCiMYjBvpJ9foGpO
	rrGTGFhHXzFBBDTptT6wV5G04R9TB0vE1b/EePpwN4PDnstnuvLZN3raaEUVq+zQG6XWeRbkkLJkL
	vND/Vx8sowAO71fbUVSZm1F8TWw5z34TfI7KkMMhp30SgHr6i1nzflHj0BGm1GdW7EQ3QcgK67ZQw
	0xj8yYpapITDgIS5lny5iY4WnvDp7Jz8C5RlWytj0PqMdIJDwQZSu5+QBM46jGkXiYD2ikpYvVFAa
	4qTKL7aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujS-005QqC-3b; Wed, 08 Mar 2023 14:25:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujF-005Ql3-2d
	for barebox@lists.infradead.org; Wed, 08 Mar 2023 14:25:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuj6-0002wp-F7; Wed, 08 Mar 2023 15:25:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQN-002jFz-Oo; Wed, 08 Mar 2023 15:05:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQM-00E7mC-GU; Wed, 08 Mar 2023 15:05:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Mar 2023 15:05:41 +0100
Message-Id: <20230308140545.3366052-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230308140545.3366052-1-s.hauer@pengutronix.de>
References: <20230308140545.3366052-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_062517_347024_7D60D741 
X-CRM114-Status: GOOD (  13.51  )
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
Subject: [PATCH 3/7] i2c: implement rescan
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
 drivers/i2c/i2c.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index efcad29342..aac4488b5c 100644
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
+static int i2c_hw_rescan(struct device *dev)
 {
 	struct i2c_adapter *adap;
 
@@ -720,7 +712,6 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	}
 
 	adapter->dev.id = adapter->nr;
-	adapter->dev.detect = i2c_bus_detect;
 	dev_set_name(&adapter->dev, "i2c");
 
 	ret = register_device(&adapter->dev);
@@ -734,9 +725,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 
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



