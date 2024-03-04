Delivery-date: Mon, 04 Mar 2024 20:09:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgX-008dbK-2s
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgW-00047Y-Bm
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lkn971gCSV5eLbC2UIw8LQqPpsRRS5D/AFNLMMLwdCM=; b=cubuM4OPqv7EKyMBbEobdx54RL
	IOfk2vBKWX81PNzKWEcuiEVl7y2+j4ZrnPbyjG+dRPu33z+YlcifSSvQ2He4LGDlsAtq+D3+2k1i0
	fotQx7R6egkDsajY+oPTGt6YIEfOoKAmncZIdFlK/U/qlPeExpALMhJv8GfMbVa9KC3LGwArCw+u9
	kYF8+/ERUIsbax5OD0tdUbDzeox/6xGFY+M5Z7VCxAv/8qo6QqhFxvGfodHd2hVn2ciXNQ5x1T2gX
	djS5KRiDLt7WrZoObuDrl+w42zvab0HlBnVFEOV/aaKlVBlq14YSpX9l/y8qWaWe/imUUFSRjbFSc
	ps+TU1rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfw-0000000AM9V-1crh;
	Mon, 04 Mar 2024 19:08:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaY-0000000AIYU-22qn
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Lkn971gCSV5eLbC2UIw8LQqPpsRRS5D/AFNLMMLwdCM=; b=FeIWbpXp6DWhHwXS/tw4Vfk8qL
	Jv0PvnHpOc9Y9BQTIWnw2/ayzgvCD2Eo5ddlpI60Ek4F5fAKPCKV3iPkYg+2wDwcrAt61u0EP9STV
	SZqYp2fIRYgy8TJehziCSrQK2RkgyIImLhymwlq6VmE8SiiBLqOzQfUviTHE44b39IKpYF5GRdO7v
	Ir9snJyTK/K7bhb/Kva/7t1bT81yHBg2h4wqP39gev6O+nSuShe8ApA/+VoUQrdUXhTRBOUZXr799
	OgC/OVg3TzizMpfZ6OITZj2Pa8xh6vkgd+OQeNGOem0fX50WdQutaPfnkqnQwV7wh6WZno0mwDItW
	Osu1cCNg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-00000002BSn-3jfB
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00065t-NL; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PIv-8H; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-2q;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:03 +0100
Message-Id: <20240304190038.3486881-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190259_079599_F89D2B07 
X-CRM114-Status: GOOD (  15.06  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 018/113] cdev: implement setter/getter for cdev device node
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
index 7c9f443ee7bd..729ea238b97d 100644
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
index 87d4591d99c5..376c62be9eab 100644
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
index b7c950620bca..cda1dfac9dac 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -578,6 +578,17 @@ struct cdev {
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



