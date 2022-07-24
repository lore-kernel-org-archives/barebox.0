Delivery-date: Sun, 24 Jul 2022 08:08:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUn7-001iKq-Tt
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 08:08:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUn5-0006Rh-JO
	for lore@pengutronix.de; Sun, 24 Jul 2022 08:08:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AjaH+DMNBxHyIdhF0tL3oNmw4vQo7dpfX8kyTvXRk+4=; b=qZkGgOPL22mPEHLcG4/2kXbV80
	nzGixRxhd9h/32OHJzXhTQyb47sFm0GTxk3PA+FrN2JCHkUZKk5Lgs0S19uGfysmAfzpbFFipbCXY
	zv3YrWRm+phxe1/g2ppK4vPDsfNDizfZdEFrYgaMZuWlcAE8yQPnsfc2H2taLK1ln7HjPc2UzqE/+
	wMfam8N/x6QDly1LmR4MfDHMcWYnW3OCM/EAkpT3DX5hsDeKUbXdHKitmKdepDXPi5J7FZAomULqx
	KPsLypRwrZeCSSfFzuQyW7lI1ZswQgdnhrGg95m3hZAs7ZRDP6T60BLCnpaE0CB8bs5WnNzLkslhW
	AaeXNW0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlZ-00GzsS-Jf; Sun, 24 Jul 2022 06:07:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlG-00Gzij-7k
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 06:06:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUlB-00065N-3W; Sun, 24 Jul 2022 08:06:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUlA-002rUH-CL; Sun, 24 Jul 2022 08:06:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUl9-007R2d-3Z; Sun, 24 Jul 2022 08:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 08:06:24 +0200
Message-Id: <20220724060629.1772193-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_230642_350641_B72D108E 
X-CRM114-Status: GOOD (  19.78  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] mfd: implement mfd_add_devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes it easier to port Linux drivers like PMICs, where a device
tree probed MFD node exists and the driver matching against it then
registers a number of MFD cell devices, which don't have their own
DT compatibles.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
v0 (before folding into series) -> v1:
  - call device_add_data before platform_device_register, which
    may immediately probe (Sascha)
---
 drivers/base/resource.c  |  2 +-
 drivers/mfd/Makefile     |  2 ++
 drivers/mfd/core.c       | 25 +++++++++++++++++++++++++
 include/driver.h         |  2 +-
 include/linux/mfd/core.h | 23 +++++++++++++++++++++++
 5 files changed, 52 insertions(+), 2 deletions(-)
 create mode 100644 drivers/mfd/core.c
 create mode 100644 include/linux/mfd/core.h

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index d0d39620772e..0134456ffac2 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -20,7 +20,7 @@ struct device_d *device_alloc(const char *devname, int id)
 	return dev;
 }
 
-int device_add_data(struct device_d *dev, void *data, size_t size)
+int device_add_data(struct device_d *dev, const void *data, size_t size)
 {
 	free(dev->platform_data);
 
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 50f54cfcf21c..2b988bdc9a3d 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-y				+= core.o
+
 obj-$(CONFIG_MFD_ACT8846)	+= act8846.o
 obj-$(CONFIG_MFD_DA9053)	+= da9053.o
 obj-$(CONFIG_MFD_DA9063)	+= da9063.o
diff --git a/drivers/mfd/core.c b/drivers/mfd/core.c
new file mode 100644
index 000000000000..495427ae9c87
--- /dev/null
+++ b/drivers/mfd/core.c
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/mfd/core.h>
+#include <driver.h>
+
+int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs)
+{
+	struct device_d *dev;
+	int ret, i;
+
+	for (i = 0; i < n_devs; i++) {
+		dev = device_alloc(cells[i].name, DEVICE_ID_DYNAMIC);
+		dev->parent = parent;
+
+		ret = device_add_data(dev, &cells[i], sizeof(cells[i]));
+		if (ret)
+			return ret;
+
+		ret = platform_device_register(dev);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/include/driver.h b/include/driver.h
index a89ce7af9ddd..67ffbba6be80 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -243,7 +243,7 @@ int device_add_resources(struct device_d *dev, const struct resource *res, int n
 int device_add_resource(struct device_d *dev, const char *resname,
 		resource_size_t start, resource_size_t size, unsigned int flags);
 
-int device_add_data(struct device_d *dev, void *data, size_t size);
+int device_add_data(struct device_d *dev, const void *data, size_t size);
 
 /*
  * register a generic device
diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
new file mode 100644
index 000000000000..2b3b51c69e5f
--- /dev/null
+++ b/include/linux/mfd/core.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2006 Ian Molton
+ * Copyright (c) 2007 Dmitry Baryshkov
+ */
+
+#ifndef MFD_CORE_H
+#define MFD_CORE_H
+
+struct device_d;
+
+/*
+ * This struct describes the MFD part ("cell").
+ * After registration the copy of this structure will become the platform data
+ * of the resulting device_d
+ */
+struct mfd_cell {
+	const char		*name;
+};
+
+int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs);
+
+#endif
-- 
2.30.2



