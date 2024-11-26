Delivery-date: Tue, 26 Nov 2024 16:34:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaH-000flo-1B
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaG-0001dw-TF
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:34:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EZdEn7Lr7yiQupsXHk+AQYj0mGa08mH71Td0g36/LHw=; b=H3vIsz5BD8P2YJRZUFQiAIKYn1
	PGPWsRuN4QchsDzZM74vtCnfZrlSp1bvgCaqvfo9H8FPkPeLzSGcFxFxyw7peci1rRVxha95HzLdh
	WxdAVlthVJ3YRlWWYEvWsFBO1u9rDsVgMucU8Re67ySzqQKdi/P1EvAAh2rc0mNsi6oj6SoOiu6j1
	YeSYpNo4K2ic9FST0iYXZlasTGKFU60MEYQWQbD66vanGGyZZjmJYKKcpdcppsKeNco1pJxIynvgG
	frlTO51mtMAIknpwpwhoXtD1Ti/y5atYt3VaEGu//XRzooFpRYD3rNuOcH31d/M07gJoJD3nyUAT+
	hHJ2j02w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZp-0000000B11g-1s9J;
	Tue, 26 Nov 2024 15:34:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZ5-0000000B0ru-0rsz
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:33:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-0000vs-SM; Tue, 26 Nov 2024 16:33:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYu-000Gu6-2u;
	Tue, 26 Nov 2024 16:33:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYu-00Fme2-37;
	Tue, 26 Nov 2024 16:33:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:33:09 +0100
Message-Id: <20241126153312.3758355-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
References: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_073323_247171_7CEB057D 
X-CRM114-Status: GOOD (  16.61  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] nvmem: probe nvmem-cells container via driver model
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of adding NVMEM-related code into the generic OF partition
parsing, let's instead instantiate a device and bind to it via the
driver model.

This is also what Linux is currently doing for the u-boot,env driver
when not using the layout binding. The nvmem-cells binding itself is
using a MTD notifier, but for our purposes just using the driver model
is ok.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/partition.c      | 23 +++++++++++++++++++++--
 drivers/of/partition.c         |  8 ++------
 include/linux/nvmem-provider.h |  6 ------
 3 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/nvmem/partition.c b/drivers/nvmem/partition.c
index 14907e05ba2d..d1127c1401af 100644
--- a/drivers/nvmem/partition.c
+++ b/drivers/nvmem/partition.c
@@ -18,9 +18,15 @@ static int nvmem_cdev_read(void *ctx, unsigned offset, void *buf, size_t bytes)
 	return cdev_read(ctx, buf, bytes, offset, 0);
 }
 
-struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
+static int nvmem_cells_probe(struct device *dev)
 {
 	struct nvmem_config config = {};
+	struct device_node *node = dev->of_node;
+	struct cdev *cdev;
+
+	cdev = cdev_by_device_node(node);
+	if (!cdev)
+		return -EINVAL;
 
 	config.name = cdev->name;
 	config.dev = cdev->dev;
@@ -32,5 +38,18 @@ struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
 	config.reg_read = nvmem_cdev_read;
 	config.reg_write = nvmem_cdev_write;
 
-	return nvmem_register(&config);
+	return PTR_ERR_OR_ZERO(nvmem_register(&config));
 }
+
+static __maybe_unused struct of_device_id nvmem_cells_dt_ids[] = {
+	{ .compatible = "nvmem-cells", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, nvmem_cells_dt_ids);
+
+static struct driver nvmem_cells_driver = {
+	.name	= "nvmem_cells",
+	.probe	= nvmem_cells_probe,
+	.of_compatible = nvmem_cells_dt_ids,
+};
+device_platform_driver(nvmem_cells_driver);
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 70297da9d231..56933cc958f7 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -76,12 +76,6 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	new->device_node = node;
 	new->flags |= DEVFS_PARTITION_FROM_OF | DEVFS_PARTITION_FOR_FIXUP;
 
-	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
-		struct nvmem_device *nvmem = nvmem_partition_register(new);
-		if (IS_ERR(nvmem))
-			dev_warn(cdev->dev, "nvmem registeration failed: %pe\n", nvmem);
-	}
-
 out:
 	free(filename);
 
@@ -108,6 +102,8 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 		of_parse_partition(cdev, n);
 	}
 
+	if (subnode)
+		of_platform_populate(subnode, NULL, cdev->dev);
 	return 0;
 }
 
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 41c636b3a4e0..c1765673eb23 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -47,7 +47,6 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *cfg);
 struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *name);
 struct nvmem_device *nvmem_regmap_register_with_pp(struct regmap *regmap,
 		const char *name, nvmem_cell_post_process_t cell_post_process);
-struct nvmem_device *nvmem_partition_register(struct cdev *cdev);
 struct device *nvmem_device_get_device(struct nvmem_device *nvmem);
 
 #else
@@ -69,11 +68,6 @@ nvmem_regmap_register_with_pp(struct regmap *regmap, const char *name,
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
 static inline struct device *nvmem_device_get_device(struct nvmem_device *nvmem)
 {
 	return ERR_PTR(-ENOSYS);
-- 
2.39.5



