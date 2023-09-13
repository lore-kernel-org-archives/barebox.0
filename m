Delivery-date: Wed, 13 Sep 2023 15:26:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsk-00Do38-7R
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 15:26:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsi-0002FJ-74
	for lore@pengutronix.de; Wed, 13 Sep 2023 15:26:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YbE9DLSdOKCO3h/UrrFkf/AOaTlndjOyNFkEjUvf+DI=; b=k5PqK1lfUcWwRtrx7QzJgEn6Fq
	q0g64nAgvChxL/NH3ZHUxrwqMxezlaaGZ/cRs3cYORjVaqtnFDB9b8a4UYcWUOb++zP3BNvm5lb6d
	Yy3cr+azOtp8At8MNkfZsWq3UhI7jXrfIP+dMBMENe5MKEsOeSmjiYNqzXdFpdyzrcFkEzTbyog6o
	26aCpoNLMe7lwwVz+8Y2qzy3yBfSzFzS/nEtrMTR7ysygOIz0TZlI/LOzwiizWJllTFUsEiXtDbnx
	Z8jFh02Scgy+jXGQp4ovf20ZvyQPncHVPj+ow2v4Di49eEX+nlDylT0P8cXT1utioK8+B4TjvFkem
	stzNy4Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPrd-005yQi-1C;
	Wed, 13 Sep 2023 13:25:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPrY-005yOu-2G
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 13:25:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrX-0001we-EC; Wed, 13 Sep 2023 15:24:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-00651G-R3; Wed, 13 Sep 2023 15:24:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-009HTh-2X;
	Wed, 13 Sep 2023 15:24:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 15:24:54 +0200
Message-Id: <20230913132456.2211919-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
References: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_062500_848354_D35AC8C5 
X-CRM114-Status: GOOD (  18.62  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] driver: add support for device aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device names can get quite long, which makes them cumbersome to use
on the shell, e.g.  firmware:zynqmp-firmware:clock-controller.of.

In addition, the names are prone to change when the device tree nodes
are renamed.

One way we work around this is using aliases, but that is partially at
odds with upstream binding. This commit adds an alternative way of
allowing drivers and board code to set an alias that affects only
device_param_complete.

This provides an easy way of defining device names that should be stable
for use in shell scripts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/complete.c     | 14 ++++++-------
 drivers/base/driver.c | 46 +++++++++++++++++++++++++++++++++++++++++++
 include/driver.h      |  7 +++++++
 3 files changed, 59 insertions(+), 8 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index e9f3f8ee033f..4137bb3084fc 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -154,8 +154,8 @@ int device_complete(struct string_list *sl, char *instr)
 }
 EXPORT_SYMBOL(device_complete);
 
-static int device_param_complete(struct device *dev, struct string_list *sl,
-				 char *instr, int eval)
+static int device_param_complete(struct device *dev, const char *devname,
+				 struct string_list *sl, char *instr, int eval)
 {
 	struct param_d *param;
 	int len;
@@ -167,7 +167,7 @@ static int device_param_complete(struct device *dev, struct string_list *sl,
 			continue;
 
 		string_list_add_asprintf(sl, "%s%s.%s%c",
-			eval ? "$" : "", dev_name(dev), param->name,
+			eval ? "$" : "", devname, param->name,
 			eval ? ' ' : '=');
 	}
 
@@ -308,14 +308,12 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 		char *devname;
 
 		devname = xstrndup(instr, dot - instr);
-
-
 		dev = get_device_by_name(devname);
-		free(devname);
 
 		if (dev)
-			device_param_complete(dev, sl, dot + 1, eval);
+			device_param_complete(dev, devname, sl, dot + 1, eval);
 
+		free(devname);
 		pos = dot + 1;
 	}
 
@@ -323,7 +321,7 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 
 	for_each_device(dev) {
 		if (!strncmp(instr, dev_name(dev), len))
-			device_param_complete(dev, sl, "", eval);
+			device_param_complete(dev, dev_name(dev), sl, "", eval);
 	}
 
 	return 0;
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 10d765e1a213..5811c7a11b75 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -24,6 +24,7 @@
 #include <fs.h>
 #include <of.h>
 #include <linux/list.h>
+#include <linux/overflow.h>
 #include <linux/err.h>
 #include <complete.h>
 #include <pinctrl.h>
@@ -46,6 +47,8 @@ LIST_HEAD(active_device_list);
 EXPORT_SYMBOL(active_device_list);
 static LIST_HEAD(deferred);
 
+static LIST_HEAD(device_alias_list);
+
 struct device *find_device(const char *str)
 {
 	struct device *dev;
@@ -65,12 +68,18 @@ struct device *find_device(const char *str)
 struct device *get_device_by_name(const char *name)
 {
 	struct device *dev;
+	struct device_alias *alias;
 
 	for_each_device(dev) {
 		if(!strcmp(dev_name(dev), name))
 			return dev;
 	}
 
+	list_for_each_entry(alias, &device_alias_list, list) {
+		if(!strcmp(alias->name, name))
+			return alias->dev;
+	}
+
 	return NULL;
 }
 
@@ -261,6 +270,7 @@ EXPORT_SYMBOL(register_device);
 
 int unregister_device(struct device *old_dev)
 {
+	struct device_alias *alias, *at;
 	struct cdev *cdev, *ct;
 	struct device *child, *dt;
 
@@ -271,6 +281,11 @@ int unregister_device(struct device *old_dev)
 	if (old_dev->driver)
 		old_dev->bus->remove(old_dev);
 
+	list_for_each_entry_safe(alias, at, &device_alias_list, list) {
+		if(alias->dev == old_dev)
+			list_del(&alias->list);
+	}
+
 	list_for_each_entry_safe(child, dt, &old_dev->children, sibling) {
 		dev_dbg(old_dev, "unregister child %s\n", dev_name(child));
 		unregister_device(child);
@@ -592,6 +607,37 @@ int dev_set_name(struct device *dev, const char *fmt, ...)
 }
 EXPORT_SYMBOL_GPL(dev_set_name);
 
+/**
+ * dev_add_alias - add alias for device
+ * @dev: device
+ * @fmt: format string for the device's alias
+ */
+int dev_add_alias(struct device *dev, const char *fmt, ...)
+{
+	va_list va, va_copy;
+	unsigned int len;
+	struct device_alias *alias;
+
+	va_start(va, fmt);
+	va_copy(va_copy, va);
+	len = vsnprintf(NULL, 0, fmt, va_copy);
+	va_end(va_copy);
+
+	alias = malloc(struct_size(alias, name, len + 1));
+	if (!alias)
+		return -ENOMEM;
+
+	vsnprintf(alias->name, len + 1, fmt, va);
+
+	va_end(va);
+
+	alias->dev = dev;
+	list_add_tail(&alias->list, &device_alias_list);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dev_set_alias);
+
 static void devices_shutdown(void)
 {
 	struct device *dev;
diff --git a/include/driver.h b/include/driver.h
index 2651cddecc21..a0234fb6c31b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -101,6 +101,12 @@ struct device {
 	char *deferred_probe_reason;
 };
 
+struct device_alias {
+	struct device *dev;
+	struct list_head list;
+	char name[];
+};
+
 /** @brief Describes a driver present in the system */
 struct driver {
 	/*! The name of this driver. Used to match to
@@ -216,6 +222,7 @@ static inline const char *dev_name(const struct device *dev)
 }
 
 int dev_set_name(struct device *dev, const char *fmt, ...);
+int dev_add_alias(struct device *dev, const char *fmt, ...);
 
 /*
  * get resource 'num' for a device
-- 
2.39.2



