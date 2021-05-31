Delivery-date: Mon, 31 May 2021 09:25:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIk-00032z-2i
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:25:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIi-0005yz-VU
	for lore@pengutronix.de; Mon, 31 May 2021 09:25:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EszPM0ERoWEoM0uA/9fZmQrUBmW0aLcnen2tYL59kt4=; b=Yb8eO9rdKSOd6o
	8Bvs4l+Omrj0ITbxm62Gsy0ENqTOq6URIdDccsCP7bo4TykkUlZkpdwNSTxOfRzGtGKmArcOBa0GF
	jfwOUII0QlKSOF+1/H4eaoGoOq7G16bn5+2RE8VDv767t7x+1+oBNajCYG8loLq/UbZejsoMAF9UF
	pQ+RfTTPikC5744HV5z6sCb7huP7vhIYGIaSLu2iisC3106fvq7yobPo4WdHB/1fy/sSogYyqJWQP
	y3Xwq4t7KtjZkEVbdiBb+OhdPl19mbN3wvIqPjPOQqszAeJoiiSo973QGbLtaMZGVUsZcZNmhV4O1
	qccbRNWEHrIPc6kG+JPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncHd-00BAtW-7K; Mon, 31 May 2021 07:24:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncHR-00BAp2-Vi
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:24:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0005Mg-O0; Mon, 31 May 2021 09:24:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0001WT-Bt; Mon, 31 May 2021 09:24:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:24:05 +0200
Message-Id: <20210531072406.5630-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531072406.5630-1-a.fatoum@pengutronix.de>
References: <20210531072406.5630-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002410_056808_77EC87F1 
X-CRM114-Status: GOOD (  23.18  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] nvmem: add nvmem_regmap_register helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Registering a nvmem device for a regmap involves some boilerplate that
doesn't need to change from driver to driver:

  - Reads are made aligned, to support normal use with md
  - Writes are passed along as is
  - nvmem parameters can be extracted from regmap

Instead of having to replicate this driver by driver, add one helper to
make this adaptation easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap.c   |  5 +++
 drivers/nvmem/Makefile         |  2 +-
 drivers/nvmem/regmap.c         | 78 ++++++++++++++++++++++++++++++++++
 include/linux/nvmem-provider.h |  8 ++++
 include/regmap.h               |  1 +
 5 files changed, 93 insertions(+), 1 deletion(-)
 create mode 100644 drivers/nvmem/regmap.c

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 6613670263f6..1af0c15a7baf 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -132,6 +132,11 @@ struct regmap *dev_get_regmap(struct device_d *dev, const char *name)
 	return ERR_PTR(-ENOENT);
 }
 
+struct device_d *regmap_get_device(struct regmap *map)
+{
+	return map->dev;
+}
+
 /*
  * regmap_write - write a register in a map
  *
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 7101c5aca44c..617e3725a726 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -3,7 +3,7 @@
 #
 
 obj-$(CONFIG_NVMEM)		+= nvmem_core.o
-nvmem_core-y			:= core.o
+nvmem_core-y			:= core.o regmap.o
 
 # Devices
 obj-$(CONFIG_NVMEM_SNVS_LPGPR)	+= nvmem_snvs_lpgpr.o
diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
new file mode 100644
index 000000000000..346d2516f3c3
--- /dev/null
+++ b/drivers/nvmem/regmap.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <regmap.h>
+#include <linux/nvmem-provider.h>
+
+static int nvmem_regmap_write(void *ctx, unsigned offset, const void *val, size_t bytes)
+{
+	return regmap_bulk_write(ctx, offset, val, bytes);
+}
+
+static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes)
+{
+	struct regmap *map = ctx;
+	size_t rbytes, stride, skip_bytes;
+	u32 roffset, val;
+	u8 *buf8 = buf, *val8 = (u8 *)&val;
+	int i, j = 0, ret, size;
+
+	stride = regmap_get_reg_stride(map);
+
+	roffset = rounddown(offset, stride);
+	skip_bytes = offset & (stride - 1);
+	rbytes = roundup(bytes + skip_bytes, stride);
+
+	if (roffset + rbytes > stride * regmap_get_max_register(map))
+		return -EINVAL;
+
+	for (i = roffset; i < roffset + rbytes; i += stride) {
+		ret = regmap_bulk_read(map, i, &val, stride);
+		if (ret) {
+			dev_err(regmap_get_device(map), "Can't read data%d (%d)\n", i, ret);
+			return ret;
+		}
+
+		/* skip first bytes in case of unaligned read */
+		if (skip_bytes)
+			size = min(bytes, stride - skip_bytes);
+		else
+			size = min(bytes, stride);
+
+		memcpy(&buf8[j], &val8[skip_bytes], size);
+		bytes -= size;
+		j += size;
+		skip_bytes = 0;
+	}
+
+	return 0;
+}
+
+static struct nvmem_bus nvmem_regmap_bus = {
+	.read = nvmem_regmap_read,
+	.write = nvmem_regmap_write,
+};
+
+struct nvmem_device *nvmem_regmap_register(struct regmap *map, const char *name)
+{
+	struct nvmem_config config;
+
+	/* Can be retrofitted if needed */
+	if (regmap_get_reg_stride(map) != regmap_get_val_bytes(map))
+		return ERR_PTR(-EINVAL);
+
+	config.name = name;
+	config.dev = regmap_get_device(map);
+	config.priv = map;
+	config.stride = 1;
+	config.word_size = 1;
+	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
+	config.bus = &nvmem_regmap_bus;
+
+	return nvmem_register(&config);
+}
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index ac9ad21711aa..2d738983736e 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -33,9 +33,12 @@ struct nvmem_config {
 	void			*priv;
 };
 
+struct regmap;
+
 #if IS_ENABLED(CONFIG_NVMEM)
 
 struct nvmem_device *nvmem_register(const struct nvmem_config *cfg);
+struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *name);
 
 #else
 
@@ -44,5 +47,10 @@ static inline struct nvmem_device *nvmem_register(const struct nvmem_config *c)
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *name)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 #endif /* CONFIG_NVMEM */
 #endif  /* ifndef _LINUX_NVMEM_PROVIDER_H */
diff --git a/include/regmap.h b/include/regmap.h
index c5cf954ad6d9..f04319f20482 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -109,6 +109,7 @@ void regmap_mmio_detach_clk(struct regmap *map);
 void regmap_exit(struct regmap *map);
 
 struct regmap *dev_get_regmap(struct device_d *dev, const char *name);
+struct device_d *regmap_get_device(struct regmap *map);
 
 int regmap_register_cdev(struct regmap *map, const char *name);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

