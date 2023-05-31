Delivery-date: Wed, 31 May 2023 17:01:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NKE-004OC7-2o
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK9-00016S-75
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uV5KpNbCdsvXbpf7bIsurBLRdKmIntjaSH7rLJQnZ6I=; b=OX96Szd7/Mc2ibZhAF1tGYkcds
	UkaG9WNoGTaIXtIU6AVmDSsmi8Kll10HuCtngV1DaJ7oW6jjjwd/Cjn95xdEbWmjMo8adIGOmCuSG
	yz3AnaEU7tG6JnbDpZ5sKtYCOf73Ouh+iTnhvm6D02CMejwKu2ZX/Up4+aOXXrwyEie0QNqA7BKux
	dxunsNwQdFmNxSm7R38RKGy/QTpbwCfptR25LJaxCStjpFP5i9PYmSqSJDrs8S+4RZl77tCs85o7f
	KyiGt3RExwpJ8hmZdDBQWXyK3CfU0P+B6oDka4v2W3DSVJRcWkgHxQIXoh5XkA4rsg9vpg01f98nn
	2Aiqs09g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIx-000CCT-2U;
	Wed, 31 May 2023 15:00:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIh-000Bx3-2H
	for barebox@bombadil.infradead.org;
	Wed, 31 May 2023 14:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uV5KpNbCdsvXbpf7bIsurBLRdKmIntjaSH7rLJQnZ6I=; b=Oxe2BGWw/0w5fsMJymD4OJXErr
	+7iJH6uc2cD7bWfiPxAfF4sxJPwAsaGwvs9AQserNGVVjVqMWEA3GnwztFtmjyYIpk+Yo+z9Z99pK
	4IMZbcmPpHmsJVXy8XecRYIYoUX6VIhUbrCDGGpkS6rG5iOJ1AND9+eBM3cYAThdATysuKLjdYXHx
	8B/WPbzrti8MoTGCrqni2cUtDJNNJ1MpcbBkvgM/1RLB0ApltMcMF5JD+qRGFyX/gTxFuqv7V2PIY
	NhyVuxbOylxjhx7bOnzdRKn41oe8bmDPUkM4941wqHthEIUwJhjDJtES6A8/gphvu8az5rzlrW8YG
	UPr/eGUg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIc-00FUiv-2t
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008EA-5N; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIS-0048HG-H1; Wed, 31 May 2023 16:59:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sCo-76; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:15 +0200
Message-Id: <20230531145927.1399282-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_155943_084958_24382B90 
X-CRM114-Status: GOOD (  13.93  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/18] driver: add new cdev_is_partition helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Partitions will have cdev->master != NULL, so often code will just do
if (cdev->master) to check if a cdev is a partition. This is suboptimal
as it may be misinterpreted by readers as meaning that the cdev is the
master device, while it's the other way round.

Let's define cdev_is_partition instead and use it everywhere, where
cdev->master is only checked, but not dereferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
index fbcf68e81597..bb66993b90f9 100644
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
@@ -101,7 +101,7 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
 		return NULL;
 
 	for_each_cdev(cdev) {
-		if (cdev->master && !strcasecmp(cdev->uuid, partuuid))
+		if (cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, partuuid))
 			return cdev;
 	}
 	return NULL;
@@ -115,7 +115,7 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
 		return NULL;
 
 	for_each_cdev(cdev) {
-		if (!cdev->master && !strcasecmp(cdev->uuid, diskuuid))
+		if (!cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, diskuuid))
 			return cdev;
 	}
 	return NULL;
@@ -393,7 +393,7 @@ int devfs_remove(struct cdev *cdev)
 	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
 		devfs_remove(c);
 
-	if (cdev->master)
+	if (cdev_is_partition(cdev))
 		list_del(&cdev->partition_entry);
 
 	if (cdev->link)
@@ -549,7 +549,7 @@ int devfs_del_partition(const char *name)
 		return ret;
 	}
 
-	if (!cdev->master)
+	if (!cdev_is_partition(cdev))
 		return -EINVAL;
 	if (cdev->flags & DEVFS_PARTITION_FIXED)
 		return -EPERM;
diff --git a/include/driver.h b/include/driver.h
index e1ee3dc2dd7c..00b4a0e4af75 100644
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



