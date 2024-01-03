Delivery-date: Wed, 03 Jan 2024 20:46:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cd-002V29-0t
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:46:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cc-00046K-0b
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:46:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o6p+jpLctcE80TgIqtVFegTGqmcZnCKCesAgea5vuyU=; b=U4kDrSyQGEjf8h2zFDBUlhElEc
	CtTKfZN1gwn5JVRn05kFL868xaqMnAroJEXo0jgiVXT3zYVlKSIQTc/OlsYWLMT/nGrJXKogSd5y0
	zmDcBXQuG4g/V5V5o41sw0fECPcCG0BwHgaRzpckFAahdVG9+EKm0wGzYJiKs3kDFzaatVy/mU9Tq
	++VWBV7AAi1JmPiPVEhoDJAxhFVOzRF201eIeWJADkUH7b0nPmyTU5ITMC/Zlvtpa4qCj+rV5MOKy
	v6A9NpLuBo8xW+XUTcWr7dR/NNaFxNdLqs+7iib+Fb+Tdp5ZHlYlvgzXFkgIpLUI0+evbrkwFrYc5
	8PgymR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BW-00Bw6z-02;
	Wed, 03 Jan 2024 19:45:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh1H-2h
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001Og-M8; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000AsQ-9Y; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-2T;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:38 +0100
Message-Id: <20240103181312.409668-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103053_904504_E5622399 
X-CRM114-Status: GOOD (  17.37  )
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
Subject: [PATCH 018/112] cdev: implement setter/getter for cdev device node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A cdev has two device tree node pointers, one directly at struct
cdev.device_node and another indirectly via cdev.dev->device_node.

We may want to remove cdev::device_node in future, but till then to
avoid users having to guess, which device_node is the correct one, add a
helper to set and get the device tree node.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c |  2 +-
 drivers/mci/mci-core.c        |  2 +-
 drivers/nvmem/core.c          |  2 +-
 drivers/of/of_path.c          |  4 ++--
 drivers/of/partition.c        | 12 ++++++------
 fs/devfs-core.c               |  2 +-
 fs/fs.c                       |  2 +-
 include/driver.h              | 11 +++++++++++
 8 files changed, 24 insertions(+), 13 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 225617fe910f..88d4d6605fd1 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -153,7 +153,7 @@ static int hf_probe(struct device *dev)
 
 	cdev = is_blockdev ? &priv->blk.cdev : &priv->cdev;
 
-	cdev->device_node = np;
+	cdev_set_of_node(cdev, np);
 
 	if (is_blockdev) {
 		cdev->name = np->name;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2b39985d5e72..663d366666b0 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -557,7 +557,7 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->idx = idx;
 
 	if (area_type == MMC_BLK_DATA_AREA_MAIN) {
-		part->blk.cdev.device_node = mci->host->hw_dev->of_node;
+		cdev_set_of_node(&part->blk.cdev, mci->host->hw_dev->of_node);
 		part->blk.cdev.flags |= DEVFS_IS_MCI_MAIN_PART_DEV;
 	}
 
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 67bb1d799376..e7341b62f6e6 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -213,7 +213,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->dev.parent = config->dev;
 	nvmem->reg_read = config->reg_read;
 	nvmem->reg_write = config->reg_write;
-	np = config->cdev ? config->cdev->device_node : config->dev->of_node;
+	np = config->cdev ? cdev_of_node(config->cdev) : config->dev->of_node;
 	nvmem->dev.of_node = np;
 	nvmem->priv = config->priv;
 	nvmem->cell_post_process = config->cell_post_process;
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 12a2dfce553e..42efb1ad1dbf 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -181,9 +181,9 @@ struct device_node *of_find_node_by_devpath(struct device_node *root, const char
 		part_size = cdev->size;
 		pr_debug("%s path %s: is a partition with offset 0x%08llx, size 0x%08llx\n",
 			 __func__, path, part_offset, part_size);
-		np = cdev->master->device_node;
+		np = cdev_of_node(cdev->master);
 	} else {
-		np = cdev->device_node;
+		np = cdev_of_node(cdev);
 	}
 
 	/*
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index b91fe616d990..395ebbc45ac8 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -95,7 +95,7 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	if (!node)
 		return -EINVAL;
 
-	cdev->device_node = node;
+	cdev_set_of_node(cdev, node);
 
 	subnode = of_get_child_by_name(node, "partitions");
 	if (subnode) {
@@ -276,21 +276,21 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 static int of_partition_fixup(struct device_node *root, void *ctx)
 {
 	struct cdev *cdev = ctx;
-	struct device_node *np;
+	struct device_node *cdev_np, *np;
 	char *name;
 
-	if (!cdev->device_node)
+	cdev_np = cdev_of_node(cdev);
+	if (!cdev_np)
 		return -EINVAL;
 
 	if (list_empty(&cdev->partitions))
 		return 0;
 
-	name = of_get_reproducible_name(cdev->device_node);
+	name = of_get_reproducible_name(cdev_np);
 	np = of_find_node_by_reproducible_name(root, name);
 	free(name);
 	if (!np) {
-		dev_err(cdev->dev, "Cannot find nodepath %pOF, cannot fixup\n",
-				cdev->device_node);
+		dev_err(cdev->dev, "Cannot find nodepath %pOF, cannot fixup\n", cdev_np);
 		return -EINVAL;
 	}
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 9f5b41761f52..c5c62028a03f 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -91,7 +91,7 @@ struct cdev *cdev_by_device_node(struct device_node *node)
 		return NULL;
 
 	for_each_cdev(cdev) {
-		if (cdev->device_node == node)
+		if (cdev_of_node(cdev) == node)
 			return cdev_readlink(cdev);
 	}
 	return NULL;
diff --git a/fs/fs.c b/fs/fs.c
index 4b64f6fcf1df..1e357872f6ae 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3038,7 +3038,7 @@ static char *get_linux_mmcblkdev(const struct cdev *root_cdev)
 	if (!cdevm || !cdev_is_mci_main_part_dev(cdevm))
 		return NULL;
 
-	id = of_alias_get_id(cdevm->device_node, "mmc");
+	id = of_alias_get_id(cdev_of_node(cdevm), "mmc");
 	if (id < 0)
 		return NULL;
 
diff --git a/include/driver.h b/include/driver.h
index f4f26151e365..c6da5a3d0d54 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -556,6 +556,17 @@ struct cdev {
 	};
 };
 
+static inline struct device_node *cdev_of_node(const struct cdev *cdev)
+{
+	return IS_ENABLED(CONFIG_OFDEVICE) ? cdev->device_node : NULL;
+}
+
+static inline void cdev_set_of_node(struct cdev *cdev, struct device_node *np)
+{
+	if (IS_ENABLED(CONFIG_OFDEVICE))
+		cdev->device_node = np;
+}
+
 int devfs_create(struct cdev *);
 int devfs_create_link(struct cdev *, const char *name);
 int devfs_remove(struct cdev *);
-- 
2.39.2



