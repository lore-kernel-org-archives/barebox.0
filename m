Delivery-date: Fri, 19 Jan 2024 17:27:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriU-007GmU-0G
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriU-00040q-B4
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wU/QqsUvVHkKt1PUxCMauheDcJP2/7vvb1S+bu0lA7k=; b=CVzKCm8wjNSCxBAWeaWKX+cDiA
	kKI6GQY7ItZcA+wUPuZ95nk8ozhWpKYXVneZ/I0+OAF61MPw1Vr5ru+q25juxjAFgErN6SmwpIaZ9
	ntE3de9DFjz+64KitKeBnE5eLsTI8aRYEr1CnmXWng215bHqQ/ox3ZlQmIyuY+ACEQG3rTXOv86bB
	avsAnrJT0K9yaNiq370WvBpUyrQYy4PRj2vJwwA9c4YT0F6bJuWik6z7894GpvGdiwEptJqNzmqdP
	YB0++CPvhhoLHVnlR0ye7trCInV8voLrrpiObwBr59vm9saAcwhQZjExPF8Sb8VHLPIy1IAZk9Pyu
	BP7k/Mhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhR-0066nR-1K;
	Fri, 19 Jan 2024 16:26:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066cN-1N
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003Rl-VF; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTj-GI; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-1M;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:58 +0100
Message-Id: <20240119162610.1014870-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_759765_775DA3A8 
X-CRM114-Status: GOOD (  21.26  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/19] pmdomain: implement dev_pm_domain_attach_by_id/name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux, dev_pm_domain_attach() enables a device's sole power domain,
but dev_pm_domain_attach_by_id/name(), attaches the power domain to a
virtual device and returns it for use with runtime PM API.

Import these two functions into barebox, so drivers can use them to
implement more elaborate power up sequences. The power up operation
itself follows in a follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 106 +++++++++++++++++++++++++++++++++++++++++++
 include/pm_domain.h  |  68 +++++++++++++++++++++++++++
 2 files changed, 174 insertions(+)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index daec443a7000..98164431aaeb 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <driver.h>
 #include <errno.h>
+#include <linux/device.h>
 #include <of.h>
 
 #include <pm_domain.h>
@@ -306,6 +307,16 @@ void genpd_activate(void)
 	have_genpd_providers = true;
 }
 
+static struct bus_type genpd_bus_type = {
+	.name		= "genpd",
+};
+
+static int __init genpd_bus_init(void)
+{
+	return bus_register(&genpd_bus_type);
+}
+core_initcall(genpd_bus_init);
+
 static int __genpd_dev_pm_attach(struct device *dev,
 				 unsigned int index, bool power_on)
 {
@@ -376,6 +387,101 @@ int genpd_dev_pm_attach(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(genpd_dev_pm_attach);
 
+/**
+ * dev_pm_domain_attach_by_id - Associate a device with one of its PM domains.
+ * @dev: The device used to lookup the PM domain.
+ * @index: The index of the PM domain.
+ *
+ * As @dev may only be attached to a single PM domain, the backend PM domain
+ * provider creates a virtual device to attach instead. If attachment succeeds,
+ * the ->detach() callback in the struct dev_pm_domain are assigned by the
+ * corresponding backend attach function, as to deal with detaching of the
+ * created virtual device.
+ *
+ * This function should typically be invoked by a driver during the probe phase,
+ * in case its device requires power management through multiple PM domains. The
+ * driver may benefit from using the received device, to configure device-links
+ * towards its original device. Depending on the use-case and if needed, the
+ * links may be dynamically changed by the driver, which allows it to control
+ * the power to the PM domains independently from each other.
+ *
+ * Callers must ensure proper synchronization of this function with power
+ * management callbacks.
+ *
+ * Returns the virtual created device when successfully attached to its PM
+ * domain, NULL in case @dev don't need a PM domain, else an ERR_PTR().
+ * Note that, to detach the returned virtual device, the driver shall call
+ * dev_pm_domain_detach() on it, typically during the remove phase.
+ */
+struct device *genpd_dev_pm_attach_by_id(struct device *dev,
+					 unsigned int index)
+{
+	struct device *virt_dev;
+	int num_domains;
+	int ret;
+
+	if (!dev->of_node)
+		return NULL;
+
+	/* Verify that the index is within a valid range. */
+	num_domains = of_count_phandle_with_args(dev->of_node, "power-domains",
+						 "#power-domain-cells");
+	if (index >= num_domains)
+		return NULL;
+
+	/* Allocate and register device on the genpd bus. */
+	virt_dev = kzalloc(sizeof(*virt_dev), GFP_KERNEL);
+	if (!virt_dev)
+		return ERR_PTR(-ENOMEM);
+
+	dev_set_name(virt_dev, "genpd");
+	virt_dev->bus = &genpd_bus_type;
+	virt_dev->parent = dev;
+	virt_dev->of_node = dev->of_node;
+	virt_dev->id = index;
+
+	ret = device_register(virt_dev);
+	if (ret) {
+		kfree(dev);
+		return ERR_PTR(ret);
+	}
+
+	/* Try to attach the device to the PM domain at the specified index. */
+	ret = __genpd_dev_pm_attach(virt_dev, index, false);
+	if (ret < 1) {
+		device_unregister(virt_dev);
+		return ret ? ERR_PTR(ret) : NULL;
+	}
+
+	return virt_dev;
+}
+EXPORT_SYMBOL_GPL(genpd_dev_pm_attach_by_id);
+
+/**
+ * genpd_dev_pm_attach_by_name - Associate a device with one of its PM domains.
+ * @dev: The device used to lookup the PM domain.
+ * @name: The name of the PM domain.
+ *
+ * Parse device's OF node to find a PM domain specifier using the
+ * power-domain-names DT property. For further description see
+ * genpd_dev_pm_attach_by_id().
+ */
+struct device *genpd_dev_pm_attach_by_name(struct device *dev, const char *name)
+{
+	int index;
+
+	if (!dev->of_node)
+		return NULL;
+
+	index = of_property_match_string(dev->of_node, "power-domain-names",
+					 name);
+	if (index < 0)
+		return NULL;
+
+	return genpd_dev_pm_attach_by_id(dev, index);
+}
+EXPORT_SYMBOL_GPL(genpd_dev_pm_attach_by_name);
+
 void pm_genpd_print(void)
 {
 	struct generic_pm_domain *genpd;
diff --git a/include/pm_domain.h b/include/pm_domain.h
index 59932ffee0b9..b02af0d46de0 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -31,6 +31,11 @@ void genpd_activate(void);
 
 int genpd_dev_pm_attach(struct device *dev);
 
+struct device *genpd_dev_pm_attach_by_id(struct device *dev,
+					 unsigned int index);
+struct device *genpd_dev_pm_attach_by_name(struct device *dev,
+					   const char *name);
+
 int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
 
 int of_genpd_add_provider_simple(struct device_node *np,
@@ -64,6 +69,18 @@ static inline int genpd_dev_pm_attach(struct device *dev)
 	return 0;
 }
 
+static inline struct device *genpd_dev_pm_attach_by_id(struct device *dev,
+						       unsigned int index)
+{
+	return NULL;
+}
+
+static inline struct device *genpd_dev_pm_attach_by_name(struct device *dev,
+							 const char *name)
+{
+	return NULL;
+}
+
 static inline int
 of_genpd_add_provider_simple(struct device_node *np,
 			     struct generic_pm_domain *genpd)
@@ -100,4 +117,55 @@ static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
 	return genpd_dev_pm_attach(dev);
 }
 
+/**
+ * dev_pm_domain_attach_by_id - Associate a device with one of its PM domains.
+ * @dev: The device used to lookup the PM domain.
+ * @index: The index of the PM domain.
+ *
+ * As @dev may only be attached to a single PM domain, the backend PM domain
+ * provider creates a virtual device to attach instead. If attachment succeeds,
+ * the ->detach() callback in the struct dev_pm_domain are assigned by the
+ * corresponding backend attach function, as to deal with detaching of the
+ * created virtual device.
+ *
+ * This function should typically be invoked by a driver during the probe phase,
+ * in case its device requires power management through multiple PM domains. The
+ * driver may benefit from using the received device, to configure device-links
+ * towards its original device. Depending on the use-case and if needed, the
+ * links may be dynamically changed by the driver, which allows it to control
+ * the power to the PM domains independently from each other.
+ *
+ * Callers must ensure proper synchronization of this function with power
+ * management callbacks.
+ *
+ * Returns the virtual created device when successfully attached to its PM
+ * domain, NULL in case @dev don't need a PM domain, else an ERR_PTR().
+ * Note that, to detach the returned virtual device, the driver shall call
+ * dev_pm_domain_detach() on it, typically during the remove phase.
+ */
+static inline struct device *dev_pm_domain_attach_by_id(struct device *dev,
+							unsigned int index)
+{
+	if (dev->pm_domain)
+		return ERR_PTR(-EEXIST);
+
+	return genpd_dev_pm_attach_by_id(dev, index);
+}
+
+/**
+ * dev_pm_domain_attach_by_name - Associate a device with one of its PM domains.
+ * @dev: The device used to lookup the PM domain.
+ * @name: The name of the PM domain.
+ *
+ * For a detailed function description, see dev_pm_domain_attach_by_id().
+ */
+static inline struct device *dev_pm_domain_attach_by_name(struct device *dev,
+							  const char *name)
+{
+	if (dev->pm_domain)
+		return ERR_PTR(-EEXIST);
+
+	return genpd_dev_pm_attach_by_name(dev, name);
+}
+
 #endif
-- 
2.39.2



