Delivery-date: Thu, 05 Jun 2025 23:14:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv2-0049P5-2z
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHux-0005zz-1G
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BYPMHt5vMyDazKxo/yHTwYjHuIDkLhLGzuE08WB5CTQ=; b=YPwK6wuHboaxiwjEryhF90PnAi
	V27QyYMpawJOAgXyV9bNCM86n8aMsKUouP5ff1mxEcGFn3iilGs2iNMs3k/tIf1Mr3hbUGDuHJXIJ
	AZoQGarP5pX+itpEhu5Z7YhD5+1iiG1DtjBiFXALbmkhjZKJmAKyO8NfyCjew7sQuqyrOPvHOaE/k
	4ww14QbCag+VyME1psXBZPVsrhGi+YFX2tqBczX2L6GS8oMZdw/nrm/k7GsPms3QC4+qza+TlMyBq
	l0x3oYtugH1xZxOYRt1OSeZkE3PLUFfQqaOv3ajbWqPbQ+hUK2d3VwfLmt2ILN6RUvwBfheJ0db69
	uldD/9tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuB-0000000Geqr-24MF;
	Thu, 05 Jun 2025 21:13:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHo9-0000000GeDy-341F
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHo8-00079B-G9; Thu, 05 Jun 2025 23:07:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:14 +0200
Message-Id: <20250605210726.1916656-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140729_773275_5010ACE5 
X-CRM114-Status: GOOD (  15.54  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/16] driver: bus: add helpers for finding devices in busses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make porting Linux drivers easier, let's import some bus lookup
functions that are going to be used in later commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/bus.c         | 56 ++++++++++++++++++++++++++++++++++++++
 include/linux/device.h     | 22 ---------------
 include/linux/device/bus.h | 38 ++++++++++++++++++++++++++
 3 files changed, 94 insertions(+), 22 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index fde27dd008e8..8edd8cb01fae 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -95,3 +95,59 @@ int device_match_of_modalias(struct device *dev, const struct driver *drv)
 
 	return false;
 }
+
+static struct device *__bus_for_each_dev(const struct bus_type *bus, struct device *start, void *data,
+					 int (*fn)(struct device *dev, void *data), int *result)
+{
+	struct device *dev;
+	int ret;
+
+	bus_for_each_device(bus, dev) {
+		if (start) {
+			if (dev == start)
+				start = NULL;
+			continue;
+		}
+
+		ret = fn(dev, data);
+		if (ret) {
+			if (result)
+				*result = ret;
+			return dev;
+		}
+	}
+
+	return NULL;
+}
+
+int bus_for_each_dev(const struct bus_type *bus, struct device *start, void *data,
+		     int (*fn)(struct device *dev, void *data))
+{
+	int ret = 0;
+	__bus_for_each_dev(bus, start, data, fn, &ret);
+	return ret;
+}
+
+struct check_match_data {
+	device_match_t match;
+};
+
+struct device *bus_find_device(const struct bus_type *bus, struct device *start,
+			       const void *data, device_match_t match)
+{
+	return __bus_for_each_dev(bus, start, (void *)data,
+				  (int (*)(struct device *dev, void *data))match,
+				  NULL);
+}
+
+int device_match_name(struct device *dev, const void *name)
+{
+	return !strcmp(dev_name(dev), name);
+}
+EXPORT_SYMBOL_GPL(device_match_name);
+
+int device_match_of_node(struct device *dev, const void *np)
+{
+	return np && dev->of_node == np;
+}
+EXPORT_SYMBOL_GPL(device_match_of_node);
diff --git a/include/linux/device.h b/include/linux/device.h
index d4098b85239f..e3934b505fe0 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -52,28 +52,6 @@ static inline void __iomem *devm_ioremap(struct device *dev,
 	return IOMEM(start);
 }
 
-static inline int bus_for_each_dev(const struct bus_type *bus, struct device *start, void *data,
-				   int (*fn)(struct device *dev, void *data))
-{
-	struct device *dev;
-	int ret;
-
-	bus_for_each_device(bus, dev) {
-		if (start) {
-			if (dev == start)
-				start = NULL;
-			continue;
-		}
-
-		ret = fn(dev, data);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
-
 /**
  * dev_set_drvdata - set driver private data for device
  * @dev: device instance
diff --git a/include/linux/device/bus.h b/include/linux/device/bus.h
index 8837ce3c2ed2..2364645bad4a 100644
--- a/include/linux/device/bus.h
+++ b/include/linux/device/bus.h
@@ -37,6 +37,44 @@ extern struct class bus_class;
  */
 #define bus_for_each_driver(bus, drv) list_for_each_entry(drv, &(bus)->driver_list, bus_list)
 
+int bus_for_each_dev(const struct bus_type *bus, struct device *start, void *data,
+		     int (*fn)(struct device *dev, void *data));
+
+/* Generic device matching functions that all busses can use to match with */
+int device_match_name(struct device *dev, const void *name);
+int device_match_of_node(struct device *dev, const void *np);
+
+/* Matching function type for drivers/base APIs to find a specific device */
+typedef int (*device_match_t)(struct device *dev, const void *data);
+
+struct device *bus_find_device(const struct bus_type *bus, struct device *start,
+			       const void *data, device_match_t match);
+/**
+ * bus_find_device_by_name - device iterator for locating a particular device
+ * of a specific name.
+ * @bus: bus type
+ * @start: Device to begin with
+ * @name: name of the device to match
+ */
+static inline struct device *bus_find_device_by_name(const struct bus_type *bus,
+						     struct device *start,
+						     const char *name)
+{
+	return bus_find_device(bus, start, name, device_match_name);
+}
+
+/**
+ * bus_find_device_by_of_node : device iterator for locating a particular device
+ * matching the of_node.
+ * @bus: bus type
+ * @np: of_node of the device to match.
+ */
+static inline struct device *
+bus_find_device_by_of_node(const struct bus_type *bus, const struct device_node *np)
+{
+	return bus_find_device(bus, NULL, np, device_match_of_node);
+}
+
 extern struct bus_type platform_bus;
 
 #endif
-- 
2.39.5



