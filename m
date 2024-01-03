Delivery-date: Wed, 03 Jan 2024 11:17:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJj-001mb7-36
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:17:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJi-0003GR-Sw
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:17:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z83OaVwGHLyZFhM9Ut2TW9ReRt9PUlqrVx4O0XRp5aM=; b=mZDkQdIjOE2+ioUqnUO4uJ2QTW
	7vmR5MuJ6au8/wD+d/T7bzEbUqRMdrDHN/XqUzjkOYL28wjPppVTJ/bfPB+oHG++S8WXAkBWrrzJW
	PBG2sc+xJu2bW9sJD526Fvh/M9zieHR4j8DGJ00FcAJSQHTY4bZ3lbgoROsIQkJlK2HApIrUtSP8Q
	SSyjzBmw9aXKc6ASDdG1npDvjuB4iICnQIU3SI1k5K67pX4lneonEQf99KvGA1WqXeunTwr/lGThv
	ty95DEeH3GuGe9DaczYuBptYD8SeRWIYsKpQmIJIENVpK4yDR0s+IFE1KE8aPdcrZTz2+4o37OZPQ
	jBd/KAyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIk-00AMTO-0s;
	Wed, 03 Jan 2024 10:16:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIa-00AMOW-1q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:16:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0002hq-Eq; Wed, 03 Jan 2024 11:16:31 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-0005wE-Vi; Wed, 03 Jan 2024 11:16:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-00B286-2s;
	Wed, 03 Jan 2024 11:16:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:16:27 +0100
Message-Id: <20240103101629.2629497-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
References: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021632_647662_3287421A 
X-CRM114-Status: GOOD (  13.20  )
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
Subject: [PATCH 4/6] partition: switch to using cdevfs_add_partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have a cdev, so it's wasteful to do a lookup by cdev name
using devfs_add_partition. Use the newly exported cdevfs_add_partition
helper directly instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c    | 12 ++++++++----
 drivers/of/partition.c | 16 ++++++++--------
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index e3e8a9f3044d..8a245a1eee3d 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -32,17 +32,21 @@ static int register_one_partition(struct block_device *blk,
 {
 	char *partition_name;
 	int ret;
-	uint64_t start = part->first_sec * SECTOR_SIZE;
-	uint64_t size = part->size * SECTOR_SIZE;
 	struct cdev *cdev;
+	struct devfs_partition partinfo = {
+		.offset = part->first_sec * SECTOR_SIZE,
+		.size = part->size * SECTOR_SIZE,
+	};
 
 	partition_name = basprintf("%s.%d", blk->cdev.name, no);
 	if (!partition_name)
 		return -ENOMEM;
+
+	partinfo.name = partition_name;
+
 	dev_dbg(blk->dev, "Registering partition %s on drive %s (partuuid=%s)\n",
 				partition_name, blk->cdev.name, part->partuuid);
-	cdev = devfs_add_partition(blk->cdev.name,
-				start, size, 0, partition_name);
+	cdev = cdevfs_add_partition(&blk->cdev, &partinfo, NULL);
 	if (IS_ERR(cdev)) {
 		ret = PTR_ERR(cdev);
 		goto out;
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 9b73419a83af..b91fe616d990 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -26,13 +26,12 @@ enum of_binding_name {
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 {
+	struct devfs_partition partinfo = {};
 	const char *partname;
 	char *filename;
 	struct cdev *new;
 	const __be32 *reg;
-	u64 offset, size;
 	int len;
-	unsigned long flags = 0;
 	int na, ns;
 
 	if (!node)
@@ -50,8 +49,8 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 		return NULL;
 	}
 
-	offset = of_read_number(reg, na);
-	size = of_read_number(reg + na, ns);
+	partinfo.offset = of_read_number(reg, na);
+	partinfo.size = of_read_number(reg + na, ns);
 
 	partname = of_get_property(node, "label", NULL);
 	if (!partname)
@@ -59,14 +58,15 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (!partname)
 		return NULL;
 
-	debug("add partition: %s.%s 0x%08llx 0x%08llx\n", cdev->name, partname, offset, size);
+	debug("add partition: %s.%s 0x%08llx 0x%08llx\n", cdev->name, partname,
+	      partinfo.offset, partinfo.size);
 
 	if (of_get_property(node, "read-only", NULL))
-		flags = DEVFS_PARTITION_READONLY;
+		partinfo.flags = DEVFS_PARTITION_READONLY;
 
-	filename = basprintf("%s.%s", cdev->name, partname);
+	partinfo.name = filename = basprintf("%s.%s", cdev->name, partname);
 
-	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
+	new = cdevfs_add_partition(cdev, &partinfo, NULL);
 	if (IS_ERR(new)) {
 		pr_err("Adding partition %s failed: %pe\n", filename, new);
 		new = NULL;
-- 
2.39.2



