Delivery-date: Thu, 20 Mar 2025 06:20:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kv-001l6y-0W
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kt-0003iq-VX
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Pqrz3Jz+VAoivxOKB4b2vRCMF8L1TVkzGdbsSfHe5A0=; b=jfWnHTXQUSS+yJohEVgz4oYo8W
	/qyJ7rAl7athjHyZoOvEuhi+8qbdfC0KyDBCz09pWhX7VEO7X6YeKD5I0jMV19jSoPU/V1n7HaevB
	f+CAXSEGjFl6PnsECDhBraDHx2mwVWLym1LFpg2BXLGAnGX9Ej2P/hKfqgwH+k1sr8S+65VSjeEDw
	n+yHACY8eAz71T6Oq3KoDiADZ6GoRJMyadnPg8tPQobFa/EhhRjQDxKLDkj6kT0s5drVuFAJI2rHk
	wJt9oiWshQyp1RL3hMiiB/2p1+ccetxKypfhUwe8lT7sVhv0pIM5EDPR+d5yHEyGkqFauX8I0ewLt
	Ml3KsrGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KW-0000000BCcL-1sRa;
	Thu, 20 Mar 2025 05:20:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KT-0000000BCYM-2hgn
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KS-0003HC-DO; Thu, 20 Mar 2025 06:20:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KR-000hvg-2b;
	Thu, 20 Mar 2025 06:20:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KS-007GLx-0S;
	Thu, 20 Mar 2025 06:20:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:27 +0100
Message-Id: <20250320052027.1731144-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222029_685713_994BA161 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: base: class: remove device from class on registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

class_remove_device is the exception and normally, a device class
doesn't change for the lifetime of a device after it's set the first
time and removal from a class is done alongside removal of the device
itself.

Let's therefore move the removal from class into core driver code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/class.c       | 11 -----------
 drivers/base/driver.c      |  2 ++
 drivers/watchdog/wd_core.c |  2 +-
 include/device.h           |  2 --
 net/eth.c                  |  2 --
 5 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/base/class.c b/drivers/base/class.c
index d0765e496f9e..b7cc58ce0750 100644
--- a/drivers/base/class.c
+++ b/drivers/base/class.c
@@ -48,14 +48,3 @@ int class_register_device(struct class *class,
 	class_add_device(class, class_dev);
 	return 0;
 }
-
-void class_unregister_device(struct device *class_dev)
-{
-	list_del(&class_dev->class_list);
-	unregister_device(class_dev);
-}
-
-void class_remove_device(struct class *class, struct device *dev)
-{
-	list_del(&dev->class_list);
-}
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 603fc9d9cb0a..6363b3948f1d 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -265,6 +265,7 @@ int register_device(struct device *new_device)
 	INIT_LIST_HEAD(&new_device->parameters);
 	INIT_LIST_HEAD(&new_device->active);
 	INIT_LIST_HEAD(&new_device->bus_list);
+	INIT_LIST_HEAD(&new_device->class_list);
 
 	if (new_device->bus) {
 		if (!new_device->parent)
@@ -318,6 +319,7 @@ int unregister_device(struct device *old_dev)
 
 	list_del(&old_dev->list);
 	list_del(&old_dev->bus_list);
+	list_del(&old_dev->class_list);
 	list_del(&old_dev->active);
 
 	/* remove device from parents child list */
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 27371672f39c..6e239edf612d 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -255,7 +255,7 @@ int watchdog_deregister(struct watchdog *wd)
 		poller_async_unregister(&wd->poller);
 	}
 
-	class_remove_device(&watchdog_class, &wd->dev);
+	list_del_init(&wd->dev.class_list);
 
 	return 0;
 }
diff --git a/include/device.h b/include/device.h
index d3936d3b3ad6..e0c130551f9a 100644
--- a/include/device.h
+++ b/include/device.h
@@ -128,11 +128,9 @@ void class_register(struct class *class);
 	pure_initcall(register_##_name);
 
 int class_add_device(struct class *class, struct device *dev);
-void class_remove_device(struct class *class, struct device *dev);
 
 int class_register_device(struct class *class, struct device *class_dev,
 			  const char *name);
-void class_unregister_device(struct device *class_dev);
 
 extern struct list_head class_list;
 #define class_for_each_device(class, dev) list_for_each_entry((dev), &(class)->devices, class_list)
diff --git a/net/eth.c b/net/eth.c
index e4025753518c..bc2527de3670 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -539,8 +539,6 @@ void eth_unregister(struct eth_device *edev)
 	if (IS_ENABLED(CONFIG_OFDEVICE))
 		free_const(edev->nodepath);
 
-	class_remove_device(&eth_class, &edev->dev);
-
 	free(edev->devname);
 
 	unregister_device(&edev->dev);
-- 
2.39.5



