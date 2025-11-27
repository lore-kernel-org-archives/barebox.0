Delivery-date: Thu, 27 Nov 2025 10:20:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAa-005NYt-1r
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAW-0003WG-Ul
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yp2Qfq+sn/sYTMxsIUqT2IRA+ZfxihB40agpaQWUYK8=; b=Ya54qHEJ40Jd8Cb2GmgoWUAY24
	wWv26JDwl3Sm3k5+mYidj70lAoMoOHrJAv4dQCrQF7rxra/yqBdw627k8Wnms0Xx4qoX4O2Q0jjtR
	NmuC1PaGe2JdqVt0pOlSOZd5YV7D8FcEI1YeT+GF1QxTkjR5NECdrD1ICrif0HS/reqvdbNaKdWwZ
	QYtT6ZmRKuBCEnpqwsHavmqv8Vo3Yu6oc8ky9Um5HRjrx7vmCtpSHXp6zRNzN66XdV23Z5L23alZ6
	g07wJdJAinvgoeS+vc01Rw5eFoPrv1dE6kMjXXLUjoQ/XGKZVX4Ovk6MsfvcqqVkfcTAlWz2IwTps
	yUGKmeMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA3-0000000GGku-0zuC;
	Thu, 27 Nov 2025 09:19:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY9v-0000000GGfF-3ToB
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00035H-9p; Thu, 27 Nov 2025 10:19:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9t-002lPG-3C;
	Thu, 27 Nov 2025 10:19:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-1Nbd;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-devfs-v1-9-4aff12818757@pengutronix.de>
References: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
In-Reply-To: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=10849;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=O+igSMdwQZi3usy56hZ9EAAVr4zXc977gqYGhIebSPE=;
 b=amA6PfUd/o8iDlm2+QW3UYKak5M7fFByCAodBPwlsoCRddjZKnNTJKZeNwbMq/RCuWzoMMmqe
 xeJteqZf8DZAu9ejXzr0BiY7OwlOY/KhrgWAcy/fg8pdAeo448v7FNX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011928_037120_55BF435C 
X-CRM114-Status: GOOD (  22.09  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] fs: replace cdev links with aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devinfo.c         |   7 ++-
 common/partitions.c        |   2 +-
 drivers/block/dm/dm-core.c |   1 -
 fs/devfs-core.c            | 148 +++++++++++++++++++--------------------------
 include/block.h            |   2 -
 include/driver.h           |   8 +--
 6 files changed, 71 insertions(+), 97 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index c87b30e84307e5053bc35e8bd70ac7af63f688b8..d898e81b3278808a7eed5116d210020d8715a09f 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -9,7 +9,8 @@
 static int do_devinfo_subtree(struct device *dev, int depth)
 {
 	struct device *child;
-	struct cdev *cdev, *cdevl;
+	struct cdev *cdev;
+	struct string_list *sl;
 	int i;
 
 	for (i = 0; i < depth; i++)
@@ -26,8 +27,8 @@ static int do_devinfo_subtree(struct device *dev, int depth)
 					cdev->offset + cdev->size - 1,
 					size_human_readable(cdev->size),
 					cdev->name);
-			list_for_each_entry(cdevl, &cdev->links, link_entry)
-				printf(", %s", cdevl->name);
+			string_list_for_each_entry(sl, &cdev->aliases)
+				printf(", %s", sl->str);
 			printf("\n");
 		}
 	} else {
diff --git a/common/partitions.c b/common/partitions.c
index 7563cb0e6767891ee7f1fe264ce86703408f790a..1a4e046c5f55314ccb2abf5094b0966def8c5b55 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -63,7 +63,7 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
 		return 0;
 
 	partition_name = xasprintf("%s.%s", blk->cdev.name, part->name);
-	ret = devfs_create_link(cdev, partition_name);
+	ret = devfs_add_alias(cdev, partition_name);
 	if (ret)
 		dev_warn(blk->dev, "Failed to create link from %s to %s\n",
 			 partition_name, cdev->name);
diff --git a/drivers/block/dm/dm-core.c b/drivers/block/dm/dm-core.c
index fd7ed0d84ed7388f8c1cd4aa19e0466191459fd6..2f48cfeb06f7b2da6d26850820f228a6f522fc2f 100644
--- a/drivers/block/dm/dm-core.c
+++ b/drivers/block/dm/dm-core.c
@@ -77,7 +77,6 @@ int dm_cdev_open(struct dm_cdev *dmcdev, const char *path, ulong flags,
 			return -ENODEV;
 		}
 
-		dmcdev->cdev = cdev_readlink(dmcdev->cdev);
 		break;
 	default:
 		*errmsg = xstrdup("Only regular files and device specials are supported");
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c4ff5fe5718ea2c0236fdbf124e56a13e17702d1..32e9b5f867ed1d1696a4c16fb154474f933de342 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -50,42 +50,21 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 }
 #endif
 
-struct cdev *cdev_readlink(const struct cdev *cdev)
-{
-	if (!cdev)
-		return NULL;
-
-	if (cdev->link)
-		cdev = cdev->link;
-
-	/* links to links are not allowed */
-	BUG_ON(cdev->link);
-
-	return (void *)cdev;
-}
-
-struct cdev *lcdev_by_name(const char *filename)
+struct cdev *cdev_by_name(const char *filename)
 {
 	struct cdev *cdev;
+	struct string_list *entry;
 
 	for_each_cdev(cdev) {
 		if (!strcmp(cdev->name, filename))
 			return cdev;
+		string_list_for_each_entry(entry, &cdev->aliases)
+			if (!strcmp(entry->str, filename))
+				return cdev;
 	}
 	return NULL;
 }
 
-struct cdev *cdev_by_name(const char *filename)
-{
-	struct cdev *cdev;
-
-	cdev = lcdev_by_name(filename);
-	if (!cdev)
-		return NULL;
-
-	return cdev_readlink(cdev);
-}
-
 struct cdev *cdev_by_device_node(struct device_node *node)
 {
 	struct cdev *cdev;
@@ -95,7 +74,7 @@ struct cdev *cdev_by_device_node(struct device_node *node)
 
 	for_each_cdev(cdev) {
 		if (cdev_of_node(cdev) == node)
-			return cdev_readlink(cdev);
+			return cdev;
 	}
 	return NULL;
 }
@@ -133,9 +112,6 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 {
 	struct cdev *partcdev;
 
-        /* Follow links to support storage-by-alias */
-        cdev = cdev_readlink(cdev);
-
 	if (!cdev_is_gpt_partitioned(cdev))
 		return ERR_PTR(-EINVAL);
 
@@ -153,6 +129,29 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 	return ERR_PTR(-ENOENT);
 }
 
+static bool cdev_has_partname_alias(struct cdev *cdev, const char *partname)
+{
+	char *fullname;
+	struct string_list *sl;
+	bool ret = false;
+
+	if (!cdev->master)
+		return false;
+
+	fullname = xasprintf("%s.%s", cdev->master->name, partname);
+
+	string_list_for_each_entry(sl, &cdev->aliases) {
+		if (streq_ptr(sl->str, fullname)) {
+			ret = true;
+			break;
+		}
+	}
+
+	free(fullname);
+
+	return ret;
+}
+
 /**
  * cdev_find_partition - find a partition belonging to a physical device
  *
@@ -164,15 +163,10 @@ struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name)
 	struct cdev *partcdev;
 
 	for_each_cdev_partition(partcdev, cdevm) {
-		struct cdev *cdevl;
-
 		if (streq_ptr(partcdev->partname, name))
 			return partcdev;
-
-		list_for_each_entry(cdevl, &partcdev->links, link_entry) {
-			if (streq_ptr(cdevl->partname, name))
-				return cdevl;
-		}
+		if (cdev_has_partname_alias(partcdev, name))
+			return partcdev;
 	}
 
 	return NULL;
@@ -190,15 +184,11 @@ struct cdev *device_find_partition(struct device *dev, const char *name)
 	struct device *child;
 
 	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
-		struct cdev *cdevl;
-
 		if (streq_ptr(cdev->partname, name))
 			return cdev;
 
-		list_for_each_entry(cdevl, &cdev->links, link_entry) {
-			if (streq_ptr(cdevl->partname, name))
-				return cdev_readlink(cdevl);
-		}
+		if (cdev_has_partname_alias(cdev, name))
+			return cdev;
 	}
 
 	device_for_each_child(dev, child) {
@@ -460,20 +450,36 @@ static void cdev_free(struct cdev *cdev)
 
 static bool devfs_initialized;
 
+static int cdev_symlink(struct cdev *cdev, const char *linkname)
+{
+	char *path;
+	int ret;
+
+	if (!devfs_initialized)
+		return 0;
+
+	path = xasprintf("/dev/%s", linkname);
+	ret = symlink(cdev->name, path);
+	free(path);
+
+	return ret;
+}
+
 static void devfs_mknod(struct cdev *cdev)
 {
 	char *path;
 	int ret;
+	struct string_list *sl;
 
 	if (!devfs_initialized)
 		return;
 
 	path = xasprintf("/dev/%s", cdev->name);
 
-	if (cdev->link)
-		ret = symlink(cdev->link->name, path);
-	else
-		ret = mknod(path, S_IFCHR | 0600, cdev->name);
+	string_list_for_each_entry(sl, &cdev->aliases)
+		cdev_symlink(cdev, sl->str);
+
+	ret = mknod(path, S_IFCHR | 0600, cdev->name);
 
 	free(path);
 
@@ -499,8 +505,8 @@ int devfs_create(struct cdev *new)
 	if (cdev)
 		return -EEXIST;
 
-	INIT_LIST_HEAD(&new->links);
 	INIT_LIST_HEAD(&new->partitions);
+	string_list_init(&new->aliases);
 
 	list_add_tail(&new->list, &cdev_list);
 	if (new->dev) {
@@ -509,46 +515,22 @@ int devfs_create(struct cdev *new)
 			new->device_node = new->dev->of_node;
 	}
 
-	if (new->link)
-		list_add_tail(&new->link_entry, &new->link->links);
-
 	devfs_mknod(new);
 
 	return 0;
 }
 
-int devfs_create_link(struct cdev *cdev, const char *name)
+int devfs_add_alias(struct cdev *cdev, const char *name)
 {
-	struct cdev *new;
-	int ret;
-
-	/*
-	 * Create a link to the real cdev instead of creating
-	 * a link to a link.
-	 */
-	cdev = cdev_readlink(cdev);
-
-	new = cdev_alloc(name);
-	new->link = cdev;
+	struct cdev *conflict;
 
-	ret = devfs_create(new);
-	if (ret) {
-		cdev_free(new);
-		return ret;
-	}
-
-	if (cdev->partname) {
-		size_t partnameoff = 0;
-
-		if (cdev->master) {
-			size_t masterlen = strlen(cdev->master->name);
+	conflict = cdev_by_name(name);
+	if (conflict)
+		return -EEXIST;
 
-			if (!strncmp(name, cdev->master->name, masterlen))
-				partnameoff += masterlen + 1;
-		}
+	string_list_add(&cdev->aliases, name);
 
-		new->partname = xstrdup(name + partnameoff);
-	}
+	cdev_symlink(cdev, name);
 
 	return 0;
 }
@@ -565,8 +547,7 @@ int devfs_remove(struct cdev *cdev)
 	if (cdev->dev)
 		list_del(&cdev->devices_list);
 
-	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
-		devfs_remove(c);
+	string_list_free(&cdev->aliases);
 
 	list_for_each_entry_safe(c, tmp, &cdev->partitions, partition_entry)
 		cdevfs_del_partition(c);
@@ -574,9 +555,6 @@ int devfs_remove(struct cdev *cdev)
 	if (cdev_is_partition(cdev))
 		list_del(&cdev->partition_entry);
 
-	if (cdev->link)
-		cdev_free(cdev);
-
 	return 0;
 }
 
@@ -681,7 +659,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	if (overlap) {
 		if (!IS_ERR(overlap)) {
 			/* only fails with -EEXIST, which is fine */
-			(void)devfs_create_link(overlap, partinfo->name);
+			(void)devfs_add_alias(overlap, partinfo->name);
 		}
 
 		return overlap;
diff --git a/include/block.h b/include/block.h
index fc7a0a32fb2d6bc579aa6305433fb2a9e39f336a..a8ebe202288fff83677948f3d67bc12cae5dc107 100644
--- a/include/block.h
+++ b/include/block.h
@@ -104,13 +104,11 @@ static inline bool cdev_is_block_device(const struct cdev *cdev)
 
 static inline bool cdev_is_block_partition(const struct cdev *cdev)
 {
-	cdev = cdev_readlink(cdev);
 	return cdev_is_block_device(cdev) && cdev_is_partition(cdev);
 }
 
 static inline bool cdev_is_block_disk(const struct cdev *cdev)
 {
-	cdev = cdev_readlink(cdev);
 	return cdev_is_block_device(cdev) && !cdev_is_partition(cdev);
 }
 
diff --git a/include/driver.h b/include/driver.h
index 5a67d20ccff3fca339e7b40c32ecfbc244f358f5..afd22b88e5116c73bd79fc650fee9cbf6acfe247 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -17,6 +17,7 @@
 #include <init.h>
 #include <errno.h>
 #include <filetype.h>
+#include <stringlist.h>
 
 #define FORMAT_DRIVER_NAME_ID	"%s%d"
 
@@ -432,8 +433,7 @@ struct cdev {
 	u16 typeflags; /* GPT type-specific attributes */
 	int open;
 	struct mtd_info *mtd;
-	struct cdev *link;
-	struct list_head link_entry, links;
+	struct string_list aliases;
 	struct list_head partition_entry, partitions;
 	struct cdev *master;
 	enum filetype filetype;
@@ -461,13 +461,11 @@ static inline const char *cdev_name(struct cdev *cdev)
 
 void devfs_init(void);
 int devfs_create(struct cdev *);
-int devfs_create_link(struct cdev *, const char *name);
+int devfs_add_alias(struct cdev *, const char *name);
 int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
 struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);
 struct cdev *device_find_partition(struct device *dev, const char *name);
-struct cdev *lcdev_by_name(const char *filename);
-struct cdev *cdev_readlink(const struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_by_partuuid(const char *partuuid);
 struct cdev *cdev_by_diskuuid(const char *partuuid);

-- 
2.47.3



