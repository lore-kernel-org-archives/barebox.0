Delivery-date: Thu, 15 Feb 2024 11:36:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZ6e-007JVV-0R
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 11:36:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZ6d-0008Dm-FB
	for lore@pengutronix.de; Thu, 15 Feb 2024 11:36:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yqdnwy5n96rb/sHGIzRvUliwFrZt2r45uM8hkqy2XyE=; b=wzgSa2QFfHL1OVP/kTmltznHmN
	Kd16EUBItmXOwkU9+XVr+MIKbrLui2hRkqK5APKEcc0mMkzISLhlod5bqDFfscpKij1GH3XCf8gkC
	Pb+mkPx4ie24Dh5vkIejWlQItoQLCIThK4qENsnzCTkWKtu+eAphlzKzYU21HedSdtkKxtv1rfwQM
	Z0+u/VhXWYFK8QaqFU6KMOe4uKs/qrJ1XpPtd3Hl5AM9jzD6pP46DSeWTugFD5ubCt0haafS+Q393
	i5sSPKOQcwhx+34Q8wsomsUCuS6HtYQALWBbmtxgT517DafQsBgFZFkHs9aIGQXoOEVqTf+sXItHS
	y076NaEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ6C-0000000Fnvo-2LMN;
	Thu, 15 Feb 2024 10:36:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ69-0000000Fnto-2DdV
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 10:36:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ60-00084x-Bz; Thu, 15 Feb 2024 11:36:00 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ5y-000rje-7m; Thu, 15 Feb 2024 11:35:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ5y-00BmHC-0R;
	Thu, 15 Feb 2024 11:35:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 11:33:51 +0100
Message-Id: <20240215103353.2799723-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_023609_590615_1CE5B6FB 
X-CRM114-Status: GOOD (  17.96  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] driver: make CONFIG_DEBUG_PROBES more useful for removal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When CONFIG_DEBUG_PROBES is enabled, barebox will print a message on
every device probe and removal. Unfortunately, the removal prints are not
very useful, because the removal happens in the bus remove function,
which is often a no-op, but that's not known to driver core.

To make this a bit more useful, let's allow skipping bus remove
functions like Linux does and only print that a remove is happening if
either a bus or driver remove function is available.

At present, this doesn't change much, but the follow-up commit will drop
bus remove functions that only call the driver remove function, which
will shorten the CONFIG_DEBUG_PROBES output on shutdown a fair bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devunbind.c  | 14 +++++++++-----
 drivers/base/driver.c | 28 ++++++++++++++++++----------
 include/driver.h      | 10 ++++++++++
 3 files changed, 37 insertions(+), 15 deletions(-)

diff --git a/commands/devunbind.c b/commands/devunbind.c
index dab7f834db9f..d30193b28527 100644
--- a/commands/devunbind.c
+++ b/commands/devunbind.c
@@ -20,9 +20,14 @@ static int do_devunbind(int argc, char *argv[])
 			break;
 		case 'l':
 			list_for_each_entry(dev, &active_device_list, active) {
+				void *rm_dev;
+
 				BUG_ON(!dev->driver);
-				if (dev->bus->remove)
-					printf("%pS(%s, %s)\n", dev->bus->remove,
+
+				rm_dev = dev->bus->remove ?: dev->driver->remove;
+
+				if (rm_dev)
+					printf("%pS(%s, %s)\n", rm_dev,
 					       dev->driver->name, dev_name(dev));
 			}
 			return 0;
@@ -47,13 +52,12 @@ static int do_devunbind(int argc, char *argv[])
 			continue;
 		}
 
-		if (!dev->driver || !dev->bus->remove) {
-			printf("skipping unbound %s\n", argv[i]);
+		if (!device_remove(dev)) {
+			printf("no remove callback registered for %s\n", argv[i]);
 			ret = COMMAND_ERROR;
 			continue;
 		}
 
-		dev->bus->remove(dev);
 		dev->driver = NULL;
 		list_del(&dev->active);
 	}
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 6548aec9b27b..8bd187eef57f 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -280,7 +280,7 @@ int unregister_device(struct device *old_dev)
 	dev_remove_parameters(old_dev);
 
 	if (old_dev->driver)
-		old_dev->bus->remove(old_dev);
+		device_remove(old_dev);
 
 	list_for_each_entry_safe(alias, at, &device_alias_list, list) {
 		if(alias->dev == old_dev)
@@ -432,7 +432,7 @@ void unregister_driver(struct driver *drv)
 
 	bus_for_each_device(drv->bus, dev) {
 		if (dev->driver == drv) {
-			drv->bus->remove(dev);
+			device_remove(dev);
 			dev->driver = NULL;
 			list_del(&dev->active);
 			INIT_LIST_HEAD(&dev->active);
@@ -641,19 +641,27 @@ int dev_add_alias(struct device *dev, const char *fmt, ...)
 }
 EXPORT_SYMBOL_GPL(dev_add_alias);
 
+bool device_remove(struct device *dev)
+{
+	if (dev->bus && dev->bus->remove)
+		dev->bus->remove(dev);
+	else if (dev->driver->remove)
+		dev->driver->remove(dev);
+	else
+		return false; /* nothing to do */
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(device_remove);
+
 static void devices_shutdown(void)
 {
 	struct device *dev;
-	int depth = 0;
 
 	list_for_each_entry(dev, &active_device_list, active) {
-		if (dev->bus->remove) {
-			depth++;
-			pr_report_probe("%*sremove-> %s\n", depth * 4, "", dev_name(dev));
-			dev->bus->remove(dev);
-			dev->driver = NULL;
-			depth--;
-		}
+		if (device_remove(dev))
+			pr_report_probe("%*sremove-> %s\n", 1 * 4, "", dev_name(dev));
+		dev->driver = NULL;
 	}
 }
 devshutdown_exitcall(devices_shutdown);
diff --git a/include/driver.h b/include/driver.h
index 638426b9606a..b7c950620bca 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -166,6 +166,16 @@ int register_device(struct device *);
  */
 int device_probe(struct device *dev);
 
+/**
+ * device_remove - Remove a device from its bus and driver
+ *
+ * @dev: Device
+ *
+ * Returns true if there was any bus or driver specific removal
+ * code that was executed and false if the function was a no-op.
+ */
+bool device_remove(struct device *dev);
+
 /* detect devices attached to this device (cards, disks,...) */
 int device_detect(struct device *dev);
 int device_detect_by_name(const char *devname);
-- 
2.39.2



