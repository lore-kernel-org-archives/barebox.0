Delivery-date: Wed, 03 Jan 2024 11:17:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJi-001ma5-2s
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:17:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJh-0003FP-P4
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:17:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rlKGCsHk/gIPbTc4N2txVcHShATjJOmYk151eL8L0Iw=; b=VlePVYg0zAJo3VEh+OwOvuAsLQ
	Zw3x3DOSGBQRAIkKjpXdf9htWyGf+DWnVViiotY8N58QeLlLu+VeWnVmQ3buykAHW7rzhxlEMFnpm
	6zBO9Soa0yolnasp1h/3qFVG4dc9uGdug8WjBTDvYrbiT1g50fZ930XzA4Quxmg8BJaNHfhCLZXHB
	EotXOvfrWeQxILJw7qyl1Eq6qslu018VCmxozelNHZqJ9jX4FHXzogKV38mw297+NhyMP8t8Hr7w+
	ygfwLrL9x0VxLQDui/76V7mh5WCLU1Gzof1nh39dbNhSz5TRXCZJh7f0JMZXDIifyoCN2OFMoQMi7
	7IlYzzEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIj-00AMSu-1l;
	Wed, 03 Jan 2024 10:16:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIa-00AMOV-1q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:16:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0002ht-EI; Wed, 03 Jan 2024 11:16:31 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0005wH-0w; Wed, 03 Jan 2024 11:16:31 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-00B286-32;
	Wed, 03 Jan 2024 11:16:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:16:28 +0100
Message-Id: <20240103101629.2629497-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
References: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021632_661286_AE9D6CBB 
X-CRM114-Status: GOOD (  14.02  )
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
Subject: [PATCH 5/6] cdev: export and use cdevfs_del_partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like what's the case with cdevfs_add_partition, a couple of users
already have a cdev, so it's wasteful to get its name and do a lookup
only to arrive at the same cdev. Export a cdevfs_del_partition that
directly works on the cdev and start using it instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c |  2 +-
 fs/devfs-core.c       | 23 +++++++++++++++--------
 include/driver.h      |  1 +
 lib/bootstrap/devfs.c |  2 +-
 4 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 93607fc3b09d..4f18f5bb8123 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -295,7 +295,7 @@ int unregister_device(struct device *old_dev)
 	list_for_each_entry_safe(cdev, ct, &old_dev->cdevs, devices_list) {
 		if (cdev_is_partition(cdev)) {
 			dev_dbg(old_dev, "unregister part %s\n", cdev->name);
-			devfs_del_partition(cdev->name);
+			cdevfs_del_partition(cdev);
 		}
 	}
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 912bfeede8dc..fef66e08e293 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -575,17 +575,10 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 	return cdevfs_add_partition(cdev, &partinfo, NULL);
 }
 
-int devfs_del_partition(const char *name)
+int cdevfs_del_partition(struct cdev *cdev)
 {
-	struct cdev *cdev;
 	int ret;
 
-	cdev = cdev_by_name(name);
-	if (!cdev)
-		return -ENOENT;
-
-	if (!cdev_is_partition(cdev))
-		return -EINVAL;
 	if (cdev->flags & DEVFS_PARTITION_FIXED)
 		return -EPERM;
 
@@ -605,6 +598,20 @@ int devfs_del_partition(const char *name)
 	return 0;
 }
 
+int devfs_del_partition(const char *name)
+{
+	struct cdev *cdev;
+
+	cdev = cdev_by_name(name);
+	if (!cdev)
+		return -ENOENT;
+
+	if (!cdev_is_partition(cdev))
+		return -EINVAL;
+
+	return cdevfs_del_partition(cdev);
+}
+
 int devfs_create_partitions(const char *devname,
 		const struct devfs_partition partinfo[])
 {
diff --git a/include/driver.h b/include/driver.h
index 373c4f1d0bca..f4f26151e365 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -683,6 +683,7 @@ int devfs_del_partition(const char *name);
 
 struct cdev *cdevfs_add_partition(struct cdev *cdev,
 		const struct devfs_partition *partinfo, loff_t *end);
+int cdevfs_del_partition(struct cdev *cdev);
 
 #define of_match_ptr(compat) \
 	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index b127b27c1d58..b023da1f941e 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -150,7 +150,7 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 	}
 
 delete_devfs_partition:
-	devfs_del_partition(partname);
+	cdevfs_del_partition(partition);
 
 	return result;
 }
-- 
2.39.2



