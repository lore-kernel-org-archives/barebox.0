Delivery-date: Mon, 20 Mar 2023 16:31:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTf-007zGt-EA
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTe-0001kV-Se
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5rVbBLUVk2JIBy5O+D3jL3FyZG0jP0nOIUERp/vdJjA=; b=xrCjQDf6wFhVnCdgfjo5elJLeb
	N3tP7swL7h7x5EdRVJ5rOJfQc3zCbxDvZqQuKoJaIebVXL7YV796ae/R01omJ70IVJJnZj5dXpL2p
	AGmVcY09LFCE0F6I92UDS58whdLJSoRePWkkTj9W3odyT9wQnVPVg2XZIAZevPw6HlZW4/QZpzCn6
	msxehhyYs0pKmM2cY5aXzgZocbv1PFJ9qhAADmt/QUnBaiRrvGy/JDyzf5tQmy/CfZ8eJ//em7CmC
	Sz09Y0jwOjSO7/2vQKoPZF25O2K1aMaAeb1jAbbzbN+ifw7KGzI1HAkeuK8L1WerF4978jOWEStsv
	Ul2g4jiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSR-009XlX-1a;
	Mon, 20 Mar 2023 15:29:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009Xfe-2o
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-0000ow-MW; Mon, 20 Mar 2023 16:29:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSC-005UYs-UK; Mon, 20 Mar 2023 16:29:44 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc10-Ag; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:30 +0100
Message-Id: <20230320152941.3155428-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082950_935036_5FD4C2B2 
X-CRM114-Status: GOOD (  13.47  )
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
Subject: [PATCH 07/18] driver: Add unregister_driver()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Registering drivers is one thing, getting rid of them another. Add
unregister_driver() which is used in the coming USB gadget update.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 16 ++++++++++++++++
 include/driver.h      |  2 ++
 2 files changed, 18 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index efbffcdddb..719920ec67 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -405,6 +405,22 @@ int register_driver(struct driver *drv)
 }
 EXPORT_SYMBOL(register_driver);
 
+void unregister_driver(struct driver *drv)
+{
+	struct device *dev;
+
+	list_del(&drv->list);
+	list_del(&drv->bus_list);
+
+	bus_for_each_device(drv->bus, dev) {
+		if (dev->driver == drv) {
+			drv->bus->remove(dev);
+			dev->driver = NULL;
+			list_del(&dev->active);
+		}
+	}
+}
+
 struct resource *dev_get_resource(struct device *dev, unsigned long type,
 				  int num)
 {
diff --git a/include/driver.h b/include/driver.h
index 2cf0190699..5605a3db24 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -137,6 +137,8 @@ struct driver {
 /* Register devices and drivers.
  */
 int register_driver(struct driver *);
+void unregister_driver(struct driver *drv);
+
 int register_device(struct device *);
 
 /* manualy probe a device
-- 
2.30.2



