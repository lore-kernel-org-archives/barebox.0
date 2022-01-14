Delivery-date: Fri, 14 Jan 2022 09:48:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IGS-001srb-3S
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:48:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IGQ-0002Mf-LK
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/jFnY40uONjatgL1iOCWrhr/LEqYgmXlE7tmT/dQUFY=; b=kT2BxrgujxN1Ri
	GLMi4v21UUMn8P42FCSVdGa0Xr9HTgQxlcnUbqQ7i/uCe5HlJ80wedVacPoQp8Ag5kXlm4IeWpedN
	wqx3xuj8Y/LwBjjF0SXZfCIB8O2neQguqYf7lqp28lhYWST4q5W787L6Gc9Epsaa7F/mr26IAOcLP
	3eNilTe/9H7gQxQ9tcJMTICCE55OFjQT0G12ltUp9xecJnBMKRGm//ImK3eMip17RocxWor29ZWGI
	SByct+ksckpoWUvlyUa5dS9pudQ5S0Gl+sc8wzgMZ0+ioyc5vPIzjQ0wqVZ1TyclKskuag2/wCD1l
	M1xmzIfeLUzCKFJs/zLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IFD-008LB7-SF; Fri, 14 Jan 2022 08:47:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IF9-008LAQ-75
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:47:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IF7-00027D-Lx; Fri, 14 Jan 2022 09:47:29 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IF7-001IzP-7I; Fri, 14 Jan 2022 09:47:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Jan 2022 09:47:28 +0100
Message-Id: <20220114084728.311277-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_004731_292663_50390D73 
X-CRM114-Status: GOOD (  19.02  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: implement mfd_add_devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes it easier to port Linux drivers like PMICs, where a device
tree probed MFD node exists and the driver matching against it then
registers a number of MFD cell devices, which don't have their own
DT compatibles.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
index 2bcf90078ab4..a00119a1d5f4 100644
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
index 000000000000..fa6aa1c74a18
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
+		ret = platform_device_register(dev);
+		if (ret)
+			return ret;
+
+		ret = device_add_data(dev, &cells[i], sizeof(cells[i]));
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/include/driver.h b/include/driver.h
index 4f6d40e17c14..513b9ea794e6 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -234,7 +234,7 @@ int device_add_resources(struct device_d *dev, const struct resource *res, int n
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


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

