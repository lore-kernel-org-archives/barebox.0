Delivery-date: Fri, 06 Jun 2025 07:58:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6S-004HHk-0Q
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:58:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6N-0004qC-5r
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:58:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pugg3tDLREoCKNJflbD3Onbjzj3pieuV3ZLLpuLsKdA=; b=SJphGKkhLhNNZXvKzG4RUn8RfC
	OfcbXMGy30OjGKwcltuIZMsuF13qzyzT0uzvyenXqbhSLm9cInfzKP8YTWjUBp8umlMqNYqigtb+r
	iddF+nZloVxsz87YrwDmZMKvpNnLWmLMxeChn3mRqeSxey9ev0D8iSVXcWbvDpGB20+DbHIy3BidU
	7AzT2veUyT1tBBYtVx3xgSTlBzxLO2MaRBu/ZInyBZbURLfYOKcg+HG6wOR75IjJzO2mdo01YN0cr
	juCYRYgNV0m9xOQ7VwhkllriEjiMKsFImaPCTQKiOooJQKcV8Jy/8Ax3hQMDF6Vv4wJ3FVE8Z2pKj
	3F0mqxrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5Y-0000000H9K2-2PIz;
	Fri, 06 Jun 2025 05:58:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5Q-0000000H9DO-2mcj
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5O-0003r4-Uu; Fri, 06 Jun 2025 07:57:51 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:35 +0200
Message-Id: <20250606055748.1990383-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225752_718797_56E68FD8 
X-CRM114-Status: GOOD (  14.10  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/16] driver: factor out bus definitions into separate header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

driver.h combines a lot of driver model related definitions making it
inconvenient to include from other headers. Let's split out the bus type
parts.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/driver.h           | 32 +----------------------------
 include/linux/device/bus.h | 42 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 31 deletions(-)
 create mode 100644 include/linux/device/bus.h

diff --git a/include/driver.h b/include/driver.h
index 581f59754bab..a2337f2f4f95 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -12,6 +12,7 @@
 #include <linux/printk.h>
 #include <linux/module.h>
 #include <device.h>
+#include <linux/device/bus.h>
 #include <of.h>
 #include <init.h>
 #include <errno.h>
@@ -352,43 +353,12 @@ ssize_t mem_copy(struct device *dev, void *dst, const void *src,
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-struct bus_type {
-	char *name;
-	int (*match)(struct device *dev, const struct driver *drv);
-	int (*probe)(struct device *dev);
-	void (*remove)(struct device *dev);
-
-	struct device dev;
-
-	struct list_head device_list;
-	struct list_head driver_list;
-};
-
-int bus_register(struct bus_type *bus);
-int device_match(struct device *dev, const struct driver *drv);
-
 static inline int driver_match_device(const struct driver *drv,
 				      struct device *dev)
 {
 	return drv->bus->match ? drv->bus->match(dev, drv) : true;
 }
 
-extern struct class bus_class;
-
-/* Iterate over all buses
- */
-#define for_each_bus(bus) class_for_each_container_of_device(&bus_class, bus, dev)
-
-/* Iterate over all devices of a bus
- */
-#define bus_for_each_device(bus, dev) list_for_each_entry(dev, &(bus)->device_list, bus_list)
-
-/* Iterate over all drivers of a bus
- */
-#define bus_for_each_driver(bus, drv) list_for_each_entry(drv, &(bus)->driver_list, bus_list)
-
-extern struct bus_type platform_bus;
-
 int platform_driver_register(struct driver *drv);
 
 /* register_driver_macro() - Helper macro for drivers that don't do
diff --git a/include/linux/device/bus.h b/include/linux/device/bus.h
new file mode 100644
index 000000000000..8837ce3c2ed2
--- /dev/null
+++ b/include/linux/device/bus.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * (C) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ */
+
+#ifndef __BUS_H
+#define __BUS_H
+
+#include <device.h>
+
+struct bus_type {
+	char *name;
+	int (*match)(struct device *dev, const struct driver *drv);
+	int (*probe)(struct device *dev);
+	void (*remove)(struct device *dev);
+
+	struct device dev;
+
+	struct list_head device_list;
+	struct list_head driver_list;
+};
+
+int bus_register(struct bus_type *bus);
+int device_match(struct device *dev, const struct driver *drv);
+
+extern struct class bus_class;
+
+/* Iterate over all buses
+ */
+#define for_each_bus(bus) class_for_each_container_of_device(&bus_class, bus, dev)
+
+/* Iterate over all devices of a bus
+ */
+#define bus_for_each_device(bus, dev) list_for_each_entry(dev, &(bus)->device_list, bus_list)
+
+/* Iterate over all drivers of a bus
+ */
+#define bus_for_each_driver(bus, drv) list_for_each_entry(drv, &(bus)->driver_list, bus_list)
+
+extern struct bus_type platform_bus;
+
+#endif
-- 
2.39.5



