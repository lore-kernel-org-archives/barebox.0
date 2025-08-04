Delivery-date: Mon, 04 Aug 2025 17:32:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAY-006z7C-1g
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAV-0006G6-Sa
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Td8Gh4Nsh/kdU6Zky67b8gJ9pRDzSOEAd8mB1Ie2i50=; b=REuW/0bKh6FUSWt1+pC7yn3i1R
	GBcDk5sq2l9O2XzhdTV9gRT1pkN/Vu5WhNCVG+q956dDIvrEzfEQkKTz0vHF81DKH1obXGQWFldom
	++O9OBw2zKEToFXna0TX4wS7zisniMiuZXCn6qVVRW8garzE2T7lsV1uMLJ+M6psL5avCw8ba/an+
	LuGkCzReGgQoA4w9AsTk9I0Iif9nRulJPJcyHW9PTDghrzK8JyjdQEkanpmWYidnHXomOsFfLHSi5
	MOSryVrKcQWgIcYN1L16Fry35YupSdQESYSWln1g9JD0KVBeP4CsfAMIngJ1YBiahkHn2UusOROjo
	F3Sc1OsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9i-0000000Anrf-2mji;
	Mon, 04 Aug 2025 15:31:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmF-1XMn
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:53 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-C3; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-6-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_446105_E71E7583 
X-CRM114-Status: GOOD (  16.68  )
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
Subject: [PATCH 06/15] nvmem: core: expose nvmem cells as cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has added the support to expose nvmem-cells via the sysfs by
commit 0331c611949f ("nvmem: core: Expose cells through sysfs"). This
commit adds an equivalent mechanism by exposing the nvmem-cells via
cdevs. The name scheme is: <nvmem-dev-name>.<cell-name>.

With this in place it is possible for board code and/or shell to query
the nvmem-cell values without specifying the consumer API within DT. At
the moment the access is RO like Linux does since write support requires
more corner case handling.

The naming scheme for nvmem_populate_sysfs_cells() was kept to reduce the
Linux diff.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index c9afbb242f945df8a770b783bb02c8132dc59347..328e2839cc47326de53a5950ffaa676926882c32 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -43,6 +43,8 @@ struct nvmem_cell_entry {
 	struct device_node	*np;
 	struct nvmem_device	*nvmem;
 	struct list_head	node;
+
+	struct cdev		cdev;
 };
 
 struct nvmem_cell {
@@ -136,6 +138,71 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
 	return NULL;
 }
 
+static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
+					    const char *id, int index);
+
+static ssize_t nvmem_cell_cdev_read(struct cdev *cdev, void *buf, size_t count,
+				    loff_t offset, unsigned long flags)
+{
+	struct nvmem_cell_entry *entry;
+	struct nvmem_cell *cell = NULL;
+	size_t cell_sz, read_len;
+	void *content;
+
+	entry = container_of(cdev, struct nvmem_cell_entry, cdev);
+	cell = nvmem_create_cell(entry, entry->name, 0);
+	if (IS_ERR(cell))
+		return PTR_ERR(cell);
+
+	content = nvmem_cell_read(cell, &cell_sz);
+	if (IS_ERR(content)) {
+		read_len = PTR_ERR(content);
+		goto destroy_cell;
+	}
+
+	read_len = min_t(unsigned int, cell_sz - offset, count);
+	memcpy(buf, content + offset, read_len);
+	kfree(content);
+
+destroy_cell:
+	kfree_const(cell->id);
+	kfree(cell);
+
+	return read_len;
+}
+
+static struct cdev_operations nvmem_cell_chrdev_ops = {
+	.read  = nvmem_cell_cdev_read,
+};
+
+static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
+{
+	struct device *dev = &nvmem->dev;
+	struct nvmem_cell_entry *entry;
+
+	list_for_each_entry(entry, &nvmem->cells, node) {
+		struct cdev *cdev;
+		int ret;
+
+		cdev = &entry->cdev;
+		cdev->name = xasprintf("%s.%s", dev_name(dev),
+				       kbasename(entry->name));
+		cdev->ops = &nvmem_cell_chrdev_ops;
+		cdev->dev = dev;
+		cdev->size = entry->bytes;
+
+		/* Ignore the error but throw a warning for the user */
+		ret = devfs_create(cdev);
+		if (ret) {
+			dev_err(dev, "Failed to register %s with %pe\n",
+				cdev->name, ERR_PTR(ret));
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static void nvmem_cell_entry_drop(struct nvmem_cell_entry *cell)
 {
 	list_del(&cell->node);
@@ -152,6 +219,26 @@ static void nvmem_device_remove_all_cells(const struct nvmem_device *nvmem)
 		nvmem_cell_entry_drop(cell);
 }
 
+static void nvmem_device_remove_all_cdevs(struct nvmem_device *nvmem)
+{
+	struct nvmem_cell_entry *cell, *p;
+
+	list_for_each_entry_safe(cell, p, &nvmem->cells, node) {
+		if (cell->cdev.name && cdev_by_name(cell->cdev.name)) {
+			devfs_remove(&cell->cdev);
+			free(cell->cdev.name);
+			cell->cdev.name = NULL;
+		}
+	}
+
+	if (!nvmem->cdev.name)
+		return;
+
+	devfs_remove(&nvmem->cdev);
+	free(nvmem->cdev.name);
+	nvmem->cdev.name = NULL;
+}
+
 static void nvmem_cell_entry_add(struct nvmem_cell_entry *cell)
 {
 	list_add_tail(&cell->node, &cell->nvmem->cells);
@@ -338,10 +425,16 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 			goto err_unregister;
 	}
 
+	rval = nvmem_populate_sysfs_cells(nvmem);
+	if (rval)
+		goto err_remove_cdevs;
+
 	list_add_tail(&nvmem->node, &nvmem_devs);
 
 	return nvmem;
 
+err_remove_cdevs:
+	nvmem_device_remove_all_cdevs(nvmem);
 err_unregister:
 	unregister_device(&nvmem->dev);
 err_remove_cells:

-- 
2.39.5



