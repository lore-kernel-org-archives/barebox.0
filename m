Delivery-date: Wed, 11 Jan 2023 09:04:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5c-008duU-BD
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:04:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5a-0000kD-3t
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:04:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ee11EAR9LcliniumyHIsJzSQZqoxtzeQb2GOpXIMkjs=; b=i0vXPgycSsPzVi9IOnkPe7l5ES
	UYs3IDPcC//60XNChHgDIksAHUWL6yr8ArYfGAO9FaDGNnCr2W/Kp6K+3XyQvSCLlb+70M8tNyqpy
	TuaMRv6RZ8vJW3WKteZIU7aSrSYGnMUrWBIoVW7aNriNkartr3yna0MFRjB2I8txxoa1YU1MuTW2o
	Rzh2CzaN5htqTRGeTe0x9BaiB9bOjfuldMbYJxtDC8aCR5zBXq43QDnnhhZdDdXNE5OacIfyf/pvf
	QC2RmcCh85Wg5SNhI5jGRINs8OK6RkUf+TmX15Ao9c/d65KQTFix+TlgosSK9GEK9gq0cDQILpkMg
	gDlLNowQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW4A-00AF5Y-Rg; Wed, 11 Jan 2023 08:02:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW36-00AEWq-Tf
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW35-0008Lm-Lm; Wed, 11 Jan 2023 09:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW34-005Ff0-Tl; Wed, 11 Jan 2023 09:01:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003v03-Ap; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 09:01:14 +0100
Message-Id: <20230111080119.933475-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111080119.933475-1-a.fatoum@pengutronix.de>
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000129_032919_EFB7E6BF 
X-CRM114-Status: GOOD (  20.61  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/11] net: dsa: ksz9477: create regmap cdev for switch registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that we use regmap for the KSZ9477 driver, we can make the register
map available for introspection as a device file. As the KSZ driver has
a separate regmap for each of the three access sizes, we add a new
regmap_multi_register_cdev abstraction that multiplexes device file
access to the regmap with the best matching alignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/Makefile       |  1 +
 drivers/base/regmap/regmap-multi.c | 81 ++++++++++++++++++++++++++++++
 drivers/net/ksz9477.c              |  6 ++-
 include/regmap.h                   |  2 +
 4 files changed, 89 insertions(+), 1 deletion(-)
 create mode 100644 drivers/base/regmap/regmap-multi.c

diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
index d99db4277149..fe5beaaaa382 100644
--- a/drivers/base/regmap/Makefile
+++ b/drivers/base/regmap/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y	+= regmap.o
+obj-y	+= regmap-multi.o
 obj-y	+= regmap-mmio.o
 obj-$(CONFIG_REGMAP_FORMATTED)	+= regmap-fmt.o
 obj-$(CONFIG_I2C)	+= regmap-i2c.o
diff --git a/drivers/base/regmap/regmap-multi.c b/drivers/base/regmap/regmap-multi.c
new file mode 100644
index 000000000000..79dd1ba9bd95
--- /dev/null
+++ b/drivers/base/regmap/regmap-multi.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2022 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <regmap.h>
+#include <linux/export.h>
+
+#include "internal.h"
+
+enum { MULTI_MAP_8, MULTI_MAP_16, MULTI_MAP_32, MULTI_MAP_COUNT };
+struct regmap_multi {
+	struct cdev cdev;
+	struct regmap *map[MULTI_MAP_COUNT];
+};
+
+static struct regmap *regmap_multi_cdev_get_map(struct cdev *cdev, size_t count)
+{
+	struct regmap_multi *multi = container_of(cdev, struct regmap_multi, cdev);
+	struct regmap *map = NULL;
+
+	if (count % 4 == 0)
+		map = multi->map[MULTI_MAP_32];
+	if (!map && count % 2 == 0)
+		map = multi->map[MULTI_MAP_16];
+	return map ?: multi->map[MULTI_MAP_8];
+}
+
+static ssize_t regmap_multi_cdev_read(struct cdev *cdev, void *buf, size_t count,
+				      loff_t offset, unsigned long flags)
+{
+	struct regmap *map = regmap_multi_cdev_get_map(cdev, count);
+
+	return regmap_bulk_read(map, offset, buf, count) ?: count;
+}
+
+static ssize_t regmap_multi_cdev_write(struct cdev *cdev, const void *buf, size_t count,
+				       loff_t offset, unsigned long flags)
+{
+	struct regmap *map = regmap_multi_cdev_get_map(cdev, count);
+
+	return regmap_bulk_write(map, offset, buf, count) ?: count;
+}
+
+static struct cdev_operations regmap_multi_fops = {
+	.read	= regmap_multi_cdev_read,
+	.write	= regmap_multi_cdev_write,
+};
+
+int regmap_multi_register_cdev(struct regmap *maps[3])
+{
+	struct regmap_multi *multi;
+	struct cdev *cdev;
+	int i;
+
+	multi = xzalloc(sizeof(*multi));
+	cdev = &multi->cdev;
+
+	cdev->ops = &regmap_multi_fops;
+	cdev->size = LLONG_MAX;
+
+	for (i = 0; i < MULTI_MAP_COUNT; i++) {
+		struct regmap *map = maps[i];
+		if (!map)
+			continue;
+
+		multi->map[i] = map;
+		cdev->size = min_t(loff_t, regmap_size_bytes(map), cdev->size);
+		cdev->dev = cdev->dev ?: map->dev;
+	}
+
+	if (!cdev->dev) {
+		free(multi);
+		return -EINVAL;
+	}
+
+	cdev->name = xstrdup(dev_name(cdev->dev));
+
+	return devfs_create(cdev);
+}
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index a980735e8e3a..93ce0dab813b 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -450,7 +450,11 @@ static int microchip_switch_probe(struct device *dev)
 
 	ksz_default_setup(priv);
 
-	return dsa_register_switch(ds);
+	ret = dsa_register_switch(ds);
+	if (ret)
+		return ret;
+
+	return regmap_multi_register_cdev(priv->regmap);
 }
 
 static const struct of_device_id microchip_switch_dt_ids[] = {
diff --git a/include/regmap.h b/include/regmap.h
index 986ed391ab28..76e648a5d73f 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -175,6 +175,8 @@ struct device *regmap_get_device(struct regmap *map);
 
 int regmap_register_cdev(struct regmap *map, const char *name);
 
+int regmap_multi_register_cdev(struct regmap *map[3]);
+
 int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
 int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val);
 
-- 
2.30.2



