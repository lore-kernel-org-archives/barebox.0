Delivery-date: Mon, 11 Aug 2025 14:30:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfd-009Klu-1R
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfJ-0006NS-61
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ZvzvaoyAK9S9RGB1NjIula/Nm4hNkRqv7rekjnOk64=; b=qiUOx0JIFaqyk9dYo1XxZVi/6+
	W8JPr3wttBgHPv/G5K6GAzgefNZ5SDbfNu+zpP77jyX8/qGlB+I7dNreXuVKLVjwT6mxdTpijvUQ5
	qaDCJ0GK7PL0jWJ2rOq0sTgiYcEQuoN6E3ptLqc9LfuvTeemd4v5kfgdWFyCXIWoARE5nUi2xiRJa
	zBxt7A1P8Mo2BzTQ/2J80xJ849P+EzkA77EzyCIr5ziaehE+PFrUmbeOJ9BY1KDg9N2+4g+AH270a
	a/Ifli6D1u/HAAGtWQPi8+zG57LRUg60eDmVd0z2Fo89GE8lKXsgp4rQk/i2HMBtO+on1qf/xvo2g
	cmjyvb9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe7-00000007eG6-3Ssi;
	Mon, 11 Aug 2025 12:28:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-00000007dbN-2D91
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdg-0004WP-Pa; Mon, 11 Aug 2025 14:28:32 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:06 +0200
Message-Id: <20250811122824.1667791-27-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052834_638000_3C0171BA 
X-CRM114-Status: GOOD (  12.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 26/44] nvmem: add devices to new nvmem class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already link all nvmem devices into a linked list, but we don't
export it for outside iteration.

Turn it into a class before exporting it.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/nvmem/core.c           | 10 ++++------
 include/linux/nvmem-consumer.h |  5 ++++-
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 68cb27093227..253c00575d88 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -16,7 +16,6 @@
 struct nvmem_device {
 	const char		*name;
 	struct device		dev;
-	struct list_head	node;
 	int			stride;
 	int			word_size;
 	int			ncells;
@@ -46,15 +45,14 @@ struct nvmem_cell {
 };
 
 static LIST_HEAD(nvmem_cells);
-static LIST_HEAD(nvmem_devs);
+DEFINE_DEV_CLASS(nvmem_class, "nvmem");
 
 void nvmem_devices_print(void)
 {
 	struct nvmem_device *dev;
 
-	list_for_each_entry(dev, &nvmem_devs, node) {
+	class_for_each_container_of_device(&nvmem_class, dev, dev)
 		printf("%s\n", dev_name(&dev->dev));
-	}
 }
 
 static ssize_t nvmem_cdev_read(struct cdev *cdev, void *buf, size_t count,
@@ -154,7 +152,7 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
 	if (!nvmem_np)
 		return NULL;
 
-	list_for_each_entry(dev, &nvmem_devs, node)
+	class_for_each_container_of_device(&nvmem_class, dev, dev)
 		if (dev->dev.of_node == nvmem_np)
 			return dev;
 
@@ -266,7 +264,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 		}
 	}
 
-	list_add_tail(&nvmem->node, &nvmem_devs);
+	class_add_device(&nvmem_class, &nvmem->dev);
 
 	return nvmem;
 }
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 397c4c29dafd..c711b63aeeb0 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -12,7 +12,8 @@
 #ifndef _LINUX_NVMEM_CONSUMER_H
 #define _LINUX_NVMEM_CONSUMER_H
 
-struct device;
+#include <device.h>
+
 struct device_node;
 /* consumer cookie */
 struct nvmem_cell;
@@ -26,6 +27,8 @@ struct nvmem_cell_info {
 	unsigned int		nbits;
 };
 
+extern struct class nvmem_class;
+
 #if IS_ENABLED(CONFIG_NVMEM)
 
 /* Cell based interface */
-- 
2.39.5



