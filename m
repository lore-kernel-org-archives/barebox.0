Delivery-date: Wed, 07 Jun 2023 14:08:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryA-00EJT8-N2
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ry8-0003xc-1Y
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HDizqLvcLl4H3htLTPqYqd6Hs24aMh/GoeiMxJjPayM=; b=t/nhV7tVIUKr/Sc2lrM+nA8jav
	ysWEtLngNbH1kq3vduyC74H2+3RMZjPoKB78ZycHz7BbKcoy7EntOHZuKlLAmKqnGTUEubo3y13Ca
	Hq6YbY5yww7F80BbY8+1ji0p5J39fFzAyz6ss0X5EymgUD8smL2JVs/aKEjXAfX4zg9eeDgb7mtey
	oDGgmrvXfSd/QpqML4/CdNBBJWQwODYiBYESAoQ8oBqh39qffHiXoCjFE9Tk+Dh+m+wyojtub1MaY
	L9SlzhNq1f4rrLZknjxhdvLKFI0+UBwyEECtwfmukcdvN7yo8XoPKs/EalYK3i2fJmd7b6Pth/PSA
	VBWB6dKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwz-005ky4-2s;
	Wed, 07 Jun 2023 12:07:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwl-005kni-1j
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-00033e-On; Wed, 07 Jun 2023 14:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-005jkS-3o; Wed, 07 Jun 2023 14:07:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyMk-0V; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:02 +0200
Message-Id: <20230607120714.3083182-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050727_567440_34665CBB 
X-CRM114-Status: GOOD (  14.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/19] driver: add new cdev_is_partition helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Partitions will have cdev->master != NULL, so often code will just do
if (cdev->master) to check if a cdev is a partition. This is suboptimal
as it may be misinterpreted by readers as meaning that the cdev is the
master device, while it's the other way round.

Let's define cdev_is_partition instead and use it everywhere, where
cdev->master is only checked, but not dereferenced.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Add Marco's Reviewed-by
---
 drivers/base/driver.c |  2 +-
 fs/devfs-core.c       | 10 +++++-----
 include/driver.h      |  4 ++++
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index f00be99cdcbf..10d765e1a213 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -277,7 +277,7 @@ int unregister_device(struct device *old_dev)
 	}
 
 	list_for_each_entry_safe(cdev, ct, &old_dev->cdevs, devices_list) {
-		if (cdev->master) {
+		if (cdev_is_partition(cdev)) {
 			dev_dbg(old_dev, "unregister part %s\n", cdev->name);
 			devfs_del_partition(cdev->name);
 		}
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 68a41ed20dd1..7525fd7f49cb 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -38,7 +38,7 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 	len = strlen(instr);
 
 	for_each_cdev(cdev) {
-		if (cdev->master &&
+		if (cdev_is_partition(cdev) &&
 		    !strncmp(instr, cdev->name, len)) {
 			string_list_add_asprintf(sl, "%s ", cdev->name);
 		}
@@ -104,7 +104,7 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
 		return NULL;
 
 	for_each_cdev(cdev) {
-		if (cdev->master && !strcasecmp(cdev->uuid, partuuid))
+		if (cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, partuuid))
 			return cdev;
 	}
 	return NULL;
@@ -118,7 +118,7 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
 		return NULL;
 
 	for_each_cdev(cdev) {
-		if (!cdev->master && !strcasecmp(cdev->uuid, diskuuid))
+		if (!cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, diskuuid))
 			return cdev;
 	}
 	return NULL;
@@ -396,7 +396,7 @@ int devfs_remove(struct cdev *cdev)
 	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
 		devfs_remove(c);
 
-	if (cdev->master)
+	if (cdev_is_partition(cdev))
 		list_del(&cdev->partition_entry);
 
 	if (cdev->link)
@@ -552,7 +552,7 @@ int devfs_del_partition(const char *name)
 		return ret;
 	}
 
-	if (!cdev->master)
+	if (!cdev_is_partition(cdev))
 		return -EINVAL;
 	if (cdev->flags & DEVFS_PARTITION_FIXED)
 		return -EPERM;
diff --git a/include/driver.h b/include/driver.h
index 66ae52d0004c..22dba61439cd 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -564,6 +564,10 @@ int cdev_discard_range(struct cdev*, loff_t count, loff_t offset);
 int cdev_memmap(struct cdev*, void **map, int flags);
 int cdev_truncate(struct cdev*, size_t size);
 loff_t cdev_unallocated_space(struct cdev *cdev);
+static inline bool cdev_is_partition(const struct cdev *cdev)
+{
+	return cdev->master != NULL;
+}
 
 extern struct list_head cdev_list;
 #define for_each_cdev(cdev) \
-- 
2.39.2



