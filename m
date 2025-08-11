Delivery-date: Mon, 11 Aug 2025 14:29:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf3-009KgH-33
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:29:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRem-0005mp-Us
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1VMJmLYf542WdW3KcmAjuDCOYeI2ulxCJS1qBOZIyxQ=; b=qlfpRlzepD5dP2a5lZNiHVnUmP
	xW15NQQe4veW2i85c1QoXEDBXsNKTK4TMmy2FoUSmvlky7BxaSf2ra07SruYX5EcLp2p1eQNaNxfu
	CHAS0xhQZ3+EiLKGaOfTYJxaYiRTuvtM5ynoFq3GZQmiEdFHI1e0mJntbBcIaxG3MgacbgVoOBXoG
	b8xNWsiQghaNdnyxFVzV1fiChSx5z6n8KZegkOQeWiuDh8auqSoOC3f3VyR2aqM/icOrD3hp6khQQ
	7xAB0oMMSgPF7gs8Dx59poztWOfhxS5l5yP2yy2X1vlze7TEzNAN4GrJRxpWNUffj8YDnlfw+iu2T
	l1dUz+7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdn-00000007dhf-0M93;
	Mon, 11 Aug 2025 12:28:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVw-2o4q
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdc-0004WP-28; Mon, 11 Aug 2025 14:28:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:46 +0200
Message-Id: <20250811122824.1667791-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_713835_6A99C8E1 
X-CRM114-Status: GOOD (  18.94  )
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
Subject: [PATCH 06/44] driver: initialize device parameters as part of bobject
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By moving the parameters to the bobjects, we pave the way for building
an OOP system that doesn't require each object to be a device.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/driver.c |  5 +++--
 include/bobject.h     | 20 ++++++++++++++++++++
 include/device.h      |  8 ++------
 include/param.h       |  4 ----
 lib/bobject.c         | 38 ++++++++++++++++++++++++++++++++++++++
 lib/parameter.c       | 17 ++---------------
 6 files changed, 65 insertions(+), 27 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4f3ae4909e07..61118385f1df 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -262,11 +262,12 @@ int register_device(struct device *new_device)
 	list_add_tail(&new_device->list, &device_list);
 	INIT_LIST_HEAD(&new_device->children);
 	INIT_LIST_HEAD(&new_device->cdevs);
-	INIT_LIST_HEAD(&new_device->parameters);
 	INIT_LIST_HEAD(&new_device->active);
 	INIT_LIST_HEAD(&new_device->bus_list);
 	INIT_LIST_HEAD(&new_device->class_list);
 
+	bobject_init(&new_device->bobject);
+
 	if (new_device->bus) {
 		if (!new_device->parent)
 			new_device->parent = &new_device->bus->dev;
@@ -295,7 +296,7 @@ int unregister_device(struct device *old_dev)
 
 	dev_dbg(old_dev, "unregister\n");
 
-	dev_remove_parameters(old_dev);
+	bobject_del(&old_dev->bobject);
 
 	if (old_dev->driver)
 		device_remove(old_dev);
diff --git a/include/bobject.h b/include/bobject.h
index 783ab64569dc..b159ac875f0c 100644
--- a/include/bobject.h
+++ b/include/bobject.h
@@ -3,14 +3,17 @@
 #ifndef __BOBJECT_H_
 #define __BOBJECT_H_
 
+#include <linux/list.h>
 #include <linux/compiler.h>
 
 /**
  * struct bobject - barebox object
  * @name: name of object (must be first member)
+ * @parameters: list of struct param_d parameters
  */
 struct bobject {
 	char			*name;
+	struct list_head	parameters;
 };
 
 struct device;
@@ -23,4 +26,21 @@ typedef union {
 
 __printf(2, 3) int bobject_set_name(bobject_t bobj, const char *name, ...);
 
+static inline void bobject_init(struct bobject *bobj)
+{
+	/* We have code that iterates over parameters unconditionally,
+	 * so initialize it even if !IS_ENABLED(CONFIG_PARAMETER)
+	 */
+	INIT_LIST_HEAD(&bobj->parameters);
+}
+
+struct bobject *bobject_alloc(const char *name);
+void bobject_free(struct bobject *bobj);
+
+#ifdef CONFIG_PARAMETER
+void bobject_del(struct bobject *bobj);
+#else
+static inline void bobject_del(struct bobject *bobj) { }
+#endif
+
 #endif
diff --git a/include/device.h b/include/device.h
index 1158ec59b5e8..5bb5a28619a2 100644
--- a/include/device.h
+++ b/include/device.h
@@ -55,8 +55,6 @@ struct of_device_id;
  *          If parent is NULL, the device is a top-level device.
  * @pm_domain: Attached power domain.
  * @bus: Type of bus device is on.
- * @parameters: The parameters for this device. This is used to carry information
- *              of board specific data from the board code to the device driver
  * @dma_mask: DMA mask.
  * @dma_offset: DMA offset.
  * @detect: For devices which take longer to probe, this is called when the driver
@@ -101,8 +99,6 @@ struct device {
 
 	struct bus_type *bus;
 
-	struct list_head parameters;
-
 	struct list_head cdevs;
 
 	struct list_head class_list;
@@ -163,9 +159,9 @@ extern struct list_head class_list;
 #define class_for_each(class) list_for_each_entry((class), &class_list, list)
 
 #define dev_for_each_param(dev, param) \
-	list_for_each_entry((param), &(dev)->parameters, list)
+	list_for_each_entry((param), &(dev)->bobject.parameters, list)
 #define dev_for_each_param_safe(dev, param, tmp) \
-	list_for_each_entry_safe((param), (tmp), &(dev)->parameters, list)
+	list_for_each_entry_safe((param), (tmp), &(dev)->bobject.parameters, list)
 
 struct device_alias {
 	struct device *dev;
diff --git a/include/param.h b/include/param.h
index 856f7a52e1b8..bb90d0240828 100644
--- a/include/param.h
+++ b/include/param.h
@@ -107,8 +107,6 @@ struct param_d *dev_add_param_fixed(struct device *dev, const char *name,
 
 void param_remove(struct param_d *p);
 
-void dev_remove_parameters(struct device *dev);
-
 int dev_param_set_generic(struct device *dev, struct param_d *p,
 			  const char *val);
 
@@ -234,8 +232,6 @@ static inline struct param_d *dev_add_param_fixed(struct device *dev,
 
 static inline void param_remove(struct param_d *p) {}
 
-static inline void dev_remove_parameters(struct device *dev) {}
-
 static inline int dev_param_set_generic(struct device *dev, struct param_d *p,
 					const char *val)
 {
diff --git a/lib/bobject.c b/lib/bobject.c
index a770993b90bd..eb140b90a2d5 100644
--- a/lib/bobject.c
+++ b/lib/bobject.c
@@ -34,3 +34,41 @@ int bobject_set_name(bobject_t bobj, const char *fmt, ...)
 	return WARN_ON(err < 0) ? err : 0;
 }
 EXPORT_SYMBOL_GPL(bobject_set_name);
+
+struct bobject *bobject_alloc(const char *name)
+{
+	struct bobject *bobj = xzalloc(sizeof(*bobj));
+
+	bobject_init(bobj);
+	bobject_set_name(bobj, "%s", name);
+
+	return bobj;
+}
+EXPORT_SYMBOL_GPL(bobject_alloc);
+
+void bobject_free(struct bobject *bobj)
+{
+	if (!bobj)
+		return;
+
+	free(bobj->name);
+	bobject_del(bobj);
+	free(bobj);
+}
+EXPORT_SYMBOL_GPL(bobject_free);
+
+#ifdef CONFIG_PARAMETER
+/**
+ * bobject_remove_parameters - remove all parameters from a bobject and free their
+ * memory
+ * @param bobject	The barebox object
+ */
+void bobject_del(struct bobject *bobj)
+{
+	struct param_d *p, *n;
+
+	list_for_each_entry_safe(p, n, &bobj->parameters, list)
+		param_remove(p);
+}
+EXPORT_SYMBOL(bobject_del);
+#endif
diff --git a/lib/parameter.c b/lib/parameter.c
index c550de050db0..7f89ac53e0d2 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -53,7 +53,7 @@ struct param_d *get_param_by_name(struct device *dev, const char *name)
 {
 	struct param_d *p;
 
-	list_for_each_entry(p, &dev->parameters, list) {
+	list_for_each_entry(p, &dev->bobject.parameters, list) {
 		if (!strcmp(p->name, name))
 			return p;
 	}
@@ -168,7 +168,7 @@ static int __dev_add_param(struct param_d *param, struct device *dev,
 
 	param->flags = flags;
 	param->dev = dev;
-	list_add_sort(&param->list, &dev->parameters, compare);
+	list_add_sort(&param->list, &dev->bobject.parameters, compare);
 
 	dev_param_init_from_nv(dev, name);
 
@@ -1017,19 +1017,6 @@ void param_remove(struct param_d *p)
 	free(p);
 }
 
-/**
- * dev_remove_parameters - remove all parameters from a device and free their
- * memory
- * @param dev	The device
- */
-void dev_remove_parameters(struct device *dev)
-{
-	struct param_d *p, *n;
-
-	dev_for_each_param_safe(dev, p, n)
-		param_remove(p);
-}
-
 /** @page dev_params Device parameters
 
 @section params_devices Devices can have several parameters.
-- 
2.39.5



