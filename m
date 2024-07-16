Delivery-date: Tue, 16 Jul 2024 13:57:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoV-005QsK-2X
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:57:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoV-0001CX-2U
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:57:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KQK2CV67468i0SoDCjb4QNKO6egZP141R+wS3wphH5c=; b=s4dAntlVKOOkYGAu7d55Tw1Wr0
	TbJD4GDxCzu8XfuoZpp53r1IVRDN6CDe0nNCE9Z0mG5jcY6lIdBUAESY6UAfx83/EFFgVn0eNqtOW
	s4R5mKshCdJwzJeA4o3IL2Trd9KVLpCqQhXdRyDMVkOPPXFycn1HYrdnbEAabWGAmHyjnsvGQRQpG
	UwHxguAlI0XQsot4ZijxgL7V56iXBGmFvyVOVZOVlGFUk0OsLz+5+bkOuLC3AJ4g3SkE8PvG1MhN9
	fBGsUCi/y09VMxy5MnPccT+Orlt5BhqLF5c43T7eGwLhjvFqUoMtXws3QVTYvQA7Xnc4lelcJjEpD
	gTlgjuuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgo4-0000000AKGP-1PTh;
	Tue, 16 Jul 2024 11:57:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgny-0000000AKCy-3BoJ
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:57:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-0000wq-HY; Tue, 16 Jul 2024 13:57:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-0007Yk-3C; Tue, 16 Jul 2024 13:57:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-008DFD-01;
	Tue, 16 Jul 2024 13:57:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:57:11 +0200
Message-Id: <20240716115711.1956907-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
References: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045714_876109_D8A42613 
X-CRM114-Status: GOOD (  14.60  )
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
Subject: [PATCH 4/4] watchdog: factor out device registration into common class code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Watchdog devices are called wdog[0-...], unless a DT alias is available
and no device had been registered with that name.

This is a useful scheme for other devices as well, so move it to a
generic place for reuse.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/class.c       | 38 ++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/wd_core.c | 25 +++----------------------
 include/device.h           |  4 ++++
 3 files changed, 45 insertions(+), 22 deletions(-)

diff --git a/drivers/base/class.c b/drivers/base/class.c
index 5fbbae0ff025..d0765e496f9e 100644
--- a/drivers/base/class.c
+++ b/drivers/base/class.c
@@ -17,6 +17,44 @@ int class_add_device(struct class *class, struct device *dev)
 	return 0;
 }
 
+static int __class_register_device(struct device *class_dev, const char *name, int id)
+{
+	class_dev->id = id;
+	dev_set_name(class_dev, name);
+
+	return register_device(class_dev);
+}
+
+int class_register_device(struct class *class,
+			  struct device *class_dev,
+			  const char *name)
+{
+	struct device *parent = class_dev->parent;
+	const char *alias = NULL;
+	int ret = 0;
+
+	if (dev_of_node(parent))
+		alias = of_alias_get(parent->of_node);
+
+	if (alias)
+		ret = __class_register_device(class_dev, alias, DEVICE_ID_SINGLE);
+
+	if (!alias || ret)
+		ret = __class_register_device(class_dev, name, DEVICE_ID_DYNAMIC);
+
+	if (ret)
+		return ret;
+
+	class_add_device(class, class_dev);
+	return 0;
+}
+
+void class_unregister_device(struct device *class_dev)
+{
+	list_del(&class_dev->class_list);
+	unregister_device(class_dev);
+}
+
 void class_remove_device(struct class *class, struct device *dev)
 {
 	list_del(&dev->class_list);
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 44f2b6da8cf2..adb4c639097e 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -119,15 +119,6 @@ static void watchdog_register_poller(struct watchdog *wd)
 			   NULL, &wd->poller_enable, wd);
 }
 
-static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
-{
-	wd->dev.parent = wd->hwdev;
-	wd->dev.id = id;
-	dev_set_name(&wd->dev, name);
-
-	return register_device(&wd->dev);
-}
-
 /**
  * dev_get_watchdog_priority() - get a device's desired watchdog priority
  * @dev:	The device, which device_node to read the property from
@@ -187,18 +178,10 @@ static struct restart_handler restart_handler = {
 
 int watchdog_register(struct watchdog *wd)
 {
-	const char *alias = NULL;
-	int ret = 0;
-
-	if (wd->hwdev)
-		alias = of_alias_get(wd->hwdev->of_node);
-
-	if (alias)
-		ret = watchdog_register_dev(wd, alias, DEVICE_ID_SINGLE);
-
-	if (!alias || ret)
-		ret = watchdog_register_dev(wd, "wdog", DEVICE_ID_DYNAMIC);
+	int ret;
 
+	wd->dev.parent = wd->hwdev;
+	ret = class_register_device(&watchdog_class, &wd->dev, "wdog");
 	if (ret)
 		return ret;
 
@@ -239,8 +222,6 @@ int watchdog_register(struct watchdog *wd)
 			dev_warn(&wd->dev, "failed to register restart handler\n");
 	}
 
-	class_add_device(&watchdog_class, &wd->dev);
-
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
 			wd->priority);
 
diff --git a/include/device.h b/include/device.h
index 4c76da2f82dd..5d3923786167 100644
--- a/include/device.h
+++ b/include/device.h
@@ -128,6 +128,10 @@ void class_register(struct class *class);
 int class_add_device(struct class *class, struct device *dev);
 void class_remove_device(struct class *class, struct device *dev);
 
+int class_register_device(struct class *class, struct device *class_dev,
+			  const char *name);
+void class_unregister_device(struct device *class_dev);
+
 extern struct list_head class_list;
 #define class_for_each_device(class, dev) list_for_each_entry((dev), &(class)->devices, class_list)
 #define class_for_each(class) list_for_each_entry((class), &class_list, list)
-- 
2.39.2



