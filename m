Delivery-date: Thu, 09 Mar 2023 13:03:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEzZ-00Eoi8-R8
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 13:03:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEzY-0000xM-Ed
	for lore@pengutronix.de; Thu, 09 Mar 2023 13:03:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yQoXBs5XqB1nQ5gB5ZU7tMwo46s8V6HFx0C0BwtRuNE=; b=OKg9BBRhjg4RBowSsQivUxH3b6
	iZ+jWBKvayPj12dojgBpmt9GFIUldiHeWHwEXFWE6QEembCk5/VL1p45k6/VGRcFyxDlQxD398HYp
	H+zI22fJUHlIKvQazkL/ZKd9TsZ8TnWSnJqGsK9SoRavl32ZV1EXZNzgmKOTClGLksk07sKEdR6dU
	ZVUNy9XVxCs5la1TkxWMEuwlgKMETiEOFW6bpejZNdxUPOb/zEv5QcYe5ue6lSQZmpLVLfaXsKE8o
	EOVjnVAuPfSkrZ+aQ5GptLmGVK3lJztbRGiDnFoB5OEyp2iSPwXmI1ndD5REogE5ZSUvdWkcVTg9g
	ra+gLgOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEy6-009kSv-5U; Thu, 09 Mar 2023 12:01:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEoe-009gJE-H5
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:52:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paEod-0007AU-2t; Thu, 09 Mar 2023 12:52:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEoc-002w6m-EY; Thu, 09 Mar 2023 12:52:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEob-004NaU-I8; Thu, 09 Mar 2023 12:52:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 12:52:03 +0100
Message-Id: <20230309115208.973893-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230309115208.973893-1-s.hauer@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_035212_620702_17FD2E02 
X-CRM114-Status: GOOD (  19.99  )
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
Subject: [PATCH v2 2/7] driver: Add rescan hook to struct device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When devices are enabled with a device tree overlay the newly enabled
devices can be probed by doing a of_probe(). This works fine for the
regular platform devices, but doesn't work for devices which are not
probed by the core, but by the subsystem. Prominent examples are I2C or
SPI devices.

This patch adds a struct device::rescan hook that subsystems can
implement to trigger rescanning the device nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 11 +++++------
 include/driver.h      |  6 ++++++
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index edb082b106..2e9abe32bc 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -153,8 +153,10 @@ struct device *of_platform_device_create(struct device_node *np,
 	 * Linux uses the OF_POPULATED flag to skip already populated/created
 	 * devices.
 	 */
-	if (np->dev)
+	if (np->dev) {
+		device_rescan(np->dev);
 		return np->dev;
+	}
 
 	/* count the io resources */
 	if (of_can_translate_address(np))
@@ -420,11 +422,8 @@ static struct device *of_device_create_on_demand(struct device_node *np)
 	if (!parent)
 		return NULL;
 
-	if (!np->dev && parent->dev) {
-		ret = device_detect(parent->dev);
-		if (ret && ret != -ENOSYS)
-			return ERR_PTR(ret);
-	}
+	if (!np->dev && parent->dev)
+		device_rescan(parent->dev);
 
 	if (!np->dev)
 		pr_debug("Creating device for %s\n", np->full_name);
diff --git a/include/driver.h b/include/driver.h
index f53668711b..91e1f01974 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -91,6 +91,7 @@ struct device {
 	 * when the driver should actually detect client devices
 	 */
 	int     (*detect) (struct device *);
+	void	(*rescan) (struct device *);
 
 	/*
 	 * if a driver probe is deferred, this stores the last error
@@ -158,7 +159,12 @@ static inline void put_device(struct device *dev) {}
 void free_device_res(struct device *dev);
 void free_device(struct device *dev);
 
+static inline void device_rescan(struct device *dev)
+{
+	if (dev->rescan)
+		dev->rescan(dev);
 
+}
 /* Iterate over a devices children
  */
 #define device_for_each_child(dev, child) \
-- 
2.30.2



