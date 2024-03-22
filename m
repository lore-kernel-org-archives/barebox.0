Delivery-date: Fri, 22 Mar 2024 17:46:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni2P-00076O-05
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:46:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni2O-0001AE-CS
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:46:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0kM4XhLWwHQojBJ9jOtHIKndQZUeHeX12XeiumlD8Uw=; b=JDJrM74Gy4HSpJchDGpGWscF90
	I3XfnUIjf13cU7vDknQW6/wkHToTHNSfSYa2YPn4TcGZIeE3DevRH3zg851LizOT6dvCxNM6c0NIr
	jgjQ63wBlYU5ZFDKVdPQlqaLsJJ8EAQoCV4h/3j0vwFk+aFczH9oQINrfRv0CxhEg1QBZZBkTITeJ
	Y8CsW40/wimtIAmTPu4vvijeYEq079P7rWiTDIaQRr4zRYLXO3r0DRycy5oLznIz+/oxFBMSNCVKl
	bTlDqL2ifj9RSH6sMkSj5aNoWdj2YsAn3L95Vv276x2ROTye9sJBEMIX9N8Dpg4SgVYbCRSgWLAIT
	mxr2z37Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni1y-00000008058-1IE6;
	Fri, 22 Mar 2024 16:46:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni1t-0000000802M-3nF5
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:46:07 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni1r-0000uV-4h
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:46:03 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:45:56 +0100
Message-Id: <20240322164559.1768983-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164559.1768983-1-m.felsch@pengutronix.de>
References: <20240322164559.1768983-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094605_972877_337C300A 
X-CRM114-Status: GOOD (  13.60  )
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
Subject: [PATCH 2/5] nvmem: expose nvmem cells as cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Expose the nvmem cells via cdevs which is our equivalent to the Linux
sysfs exposure. This allows the easier user queries for board code and
shell. Keep the Linux function name scheme for
nvmem_populate_sysfs_cells() to reduce the diff for nvmem_register()
function.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c | 109 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 109 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 657025daddb3..b4a29e4b67f3 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -44,6 +44,8 @@ struct nvmem_cell_entry {
 	struct device_node	*np;
 	struct nvmem_device	*nvmem;
 	struct list_head	node;
+
+	struct cdev		cdev;
 };
 
 struct nvmem_cell {
@@ -144,6 +146,107 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
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
+	if (!cell)
+		return -EINVAL;
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
+static ssize_t nvmem_cell_cdev_write(struct cdev *cdev, const void *buf, size_t count,
+				     loff_t offset, unsigned long flags)
+{
+	struct nvmem_cell_entry *entry;
+	struct nvmem_cell *cell;
+	int ret;
+
+	entry = container_of(cdev, struct nvmem_cell_entry, cdev);
+
+	if (!entry->nvmem->reg_write)
+		return -EPERM;
+
+	if (offset >= entry->bytes)
+		return -EFBIG;
+
+	if (offset + count > entry->bytes)
+		count = entry->bytes - offset;
+
+	cell = nvmem_create_cell(entry, entry->name, 0);
+	if (IS_ERR(cell))
+		return PTR_ERR(cell);
+
+	if (!cell)
+		return -EINVAL;
+
+	ret = nvmem_cell_write(cell, buf, count);
+
+	kfree_const(cell->id);
+	kfree(cell);
+
+	return ret;
+}
+
+static struct cdev_operations nvmem_cell_chrdev_ops = {
+	.read  = nvmem_cell_cdev_read,
+	.write = nvmem_cell_cdev_write,
+};
+
+static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
+{
+	struct device *dev = &nvmem->dev;
+	struct nvmem_cell_entry *entry;
+
+	if (list_empty(&nvmem->cells))
+		return 0;
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
+		ret = devfs_create(cdev);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static void nvmem_cell_entry_add(struct nvmem_cell_entry *cell)
 {
 	list_add_tail(&cell->node, &cell->nvmem->cells);
@@ -337,6 +440,12 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 		}
 	}
 
+	rval = nvmem_populate_sysfs_cells(nvmem);
+	if (rval) {
+		kfree(nvmem);
+		return ERR_PTR(rval);
+	}
+
 	list_add_tail(&nvmem->node, &nvmem_devs);
 
 	return nvmem;
-- 
2.39.2



