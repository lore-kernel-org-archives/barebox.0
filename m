Delivery-date: Wed, 11 Jan 2023 14:32:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbDb-008r8O-P7
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 14:32:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbDY-0002kp-Id
	for lore@pengutronix.de; Wed, 11 Jan 2023 14:32:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/rvQUnfgPBSYjVipvfEbizoSqoaGWo7rn2t7MbXKO48=; b=x/6Ng1CXsroOvQj7yE4jgJyhJt
	MjW7fRLz9I0d03MAx9xVHK962bLsvdhEIS+diFCTxnq4eyePCizEqcHhfjV/hKII3epHWeuFbqkev
	BQEwTeHODRBrrLdZkU0UH3Yoqh3sQYIkRropZH6tuQAQV8lwASSdQkCWS7Oovcuxx35iN2HLSsvgO
	BcK4K5+Net8p2gOPaDUshm4Wm/NcbAOuahYOCIa5+i/oxHnlreVh6ky0zSlXng1TrOq2/qVvEZiG1
	ktur9xcTmIRK96mdQdL7EroCrWVLrEWLTaEQAKMp1p9Lhj0oDpf7Sdga1XBsEI6iRuWp3WcqWwT3z
	BqqRlrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbC6-00Ba8g-EE; Wed, 11 Jan 2023 13:31:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbB7-00BZaG-GI
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 13:30:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-0001fK-Lh; Wed, 11 Jan 2023 14:30:01 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-005JQ8-0h; Wed, 11 Jan 2023 14:30:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB1-004rpX-GV; Wed, 11 Jan 2023 14:29:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 14:29:51 +0100
Message-Id: <20230111132956.1153359-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_053005_762369_197082A5 
X-CRM114-Status: GOOD (  21.67  )
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
Subject: [PATCH v2 06/11] net: dsa: ksz9477: create regmap cdev for switch registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that we use regmap for the KSZ9477 driver, we can make the register
map available for introspection as a device file. As the KSZ driver has
a separate regmap for each of the three access sizes, we add a new
regmap_multi_register_cdev abstraction that multiplexes device file
access to the regmap with the best matching alignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/Makefile       |   1 +
 drivers/base/regmap/regmap-multi.c | 104 +++++++++++++++++++++++++++++
 drivers/net/ksz9477.c              |   7 +-
 include/regmap.h                   |  21 ++++++
 4 files changed, 132 insertions(+), 1 deletion(-)
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
index 000000000000..e3f5b9aec1e4
--- /dev/null
+++ b/drivers/base/regmap/regmap-multi.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2022 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <fcntl.h>
+#include <regmap.h>
+#include <linux/bitfield.h>
+#include <linux/export.h>
+
+#include "internal.h"
+
+enum { MULTI_MAP_8, MULTI_MAP_16, MULTI_MAP_32, MULTI_MAP_64, MULTI_MAP_COUNT };
+struct regmap_multi {
+	struct cdev cdev;
+	struct regmap *map[MULTI_MAP_COUNT];
+};
+
+static struct regmap *regmap_multi_cdev_get_map(struct cdev *cdev, unsigned rwsize)
+{
+	struct regmap_multi *multi = container_of(cdev, struct regmap_multi, cdev);
+
+	switch (rwsize) {
+		case 8:
+			return multi->map[MULTI_MAP_64];
+		case 4:
+			return multi->map[MULTI_MAP_32];
+		case 2:
+			return multi->map[MULTI_MAP_16];
+		case 1:
+			return multi->map[MULTI_MAP_8];
+	}
+
+	return NULL;
+}
+
+static ssize_t regmap_multi_cdev_read(struct cdev *cdev, void *buf, size_t count,
+				      loff_t offset, unsigned long flags)
+{
+	unsigned rwsize = FIELD_GET(O_RWSIZE_MASK, flags);
+	struct regmap *map;
+
+	map = regmap_multi_cdev_get_map(cdev, rwsize);
+	if (!map)
+		return -EINVAL;
+
+	count = ALIGN_DOWN(count, rwsize);
+	return regmap_bulk_read(map, offset, buf, count) ?: count;
+}
+
+static ssize_t regmap_multi_cdev_write(struct cdev *cdev, const void *buf, size_t count,
+				       loff_t offset, unsigned long flags)
+{
+	unsigned rwsize = FIELD_GET(O_RWSIZE_MASK, flags);
+	struct regmap *map;
+
+	map = regmap_multi_cdev_get_map(cdev, rwsize);
+	if (!map)
+		return -EINVAL;
+
+	count = ALIGN_DOWN(count, rwsize);
+	return regmap_bulk_write(map, offset, buf, count) ?: count;
+}
+
+static struct cdev_operations regmap_multi_fops = {
+	.read	= regmap_multi_cdev_read,
+	.write	= regmap_multi_cdev_write,
+};
+
+int regmap_multi_register_cdev(struct regmap *map8,
+			       struct regmap *map16,
+			       struct regmap *map32,
+			       struct regmap *map64)
+{
+	struct regmap *maps[MULTI_MAP_COUNT] = { map8, map16, map32, map64 };
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
+		if (!maps[i])
+			continue;
+
+		multi->map[i] = maps[i];
+		cdev->size = min_t(loff_t, regmap_size_bytes(maps[i]), cdev->size);
+		cdev->dev = cdev->dev ?: maps[i]->dev;
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
index a980735e8e3a..92e08f45bf03 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -450,7 +450,12 @@ static int microchip_switch_probe(struct device *dev)
 
 	ksz_default_setup(priv);
 
-	return dsa_register_switch(ds);
+	ret = dsa_register_switch(ds);
+	if (ret)
+		return ret;
+
+	return regmap_multi_register_cdev(priv->regmap[0], priv->regmap[1],
+					  priv->regmap[2], NULL);
 }
 
 static const struct of_device_id microchip_switch_dt_ids[] = {
diff --git a/include/regmap.h b/include/regmap.h
index 986ed391ab28..98ac90523b07 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -175,6 +175,27 @@ struct device *regmap_get_device(struct regmap *map);
 
 int regmap_register_cdev(struct regmap *map, const char *name);
 
+/**
+ * regmap_multi_register_cdev() - Initialize cdev backed by multiple regmaps
+ *
+ * @map8:  regmap for  8-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ * @map16: regmap for 16-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ * @map32: regmap for 32-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ * @map64: regmap for 64-bit wide accesses. NULL if such access
+ *         should fail with -EINVAL
+ *
+ * Registers a cdev that demultiplexes cdev accesses to one
+ * of the underlying regmaps according to the access size
+ * (e.g. mw -b => map8, mw -l => map32)
+ */
+int regmap_multi_register_cdev(struct regmap *map8,
+			       struct regmap *map16,
+			       struct regmap *map32,
+			       struct regmap *map64);
+
 int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
 int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val);
 
-- 
2.30.2



