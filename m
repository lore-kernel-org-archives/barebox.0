Delivery-date: Tue, 09 Dec 2025 14:06:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxPx-009Z3P-0w
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 14:06:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxPw-0003im-63
	for lore@pengutronix.de; Tue, 09 Dec 2025 14:06:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OMRits7bGO+A/TZX0zvqkYYrSgb5fUh+5gd5csQA6ZI=; b=oI8Ft/mfdKSP9q9iS+EB/BGWui
	qfUmgStUZke5W3aNfNAZqGRPgagw1mKSZB54nk8JRUMjK1hJJ0Nqb1iw7WFiY39RwDiHnka/s1yRe
	yptUW9nzMlqpSl/ZzacxyWElFKvmNEH9Sq1wcKGiC1j9jFmIRJScrei3DKqizPPONldEQLVIOWL3Q
	pxue3AT/R4zxD383nrnOrRcmatbcyoE67mFIHFJnwVbtX6UK5iDyjVX7Up2GJjNhkgOAmMgV9kq6r
	xzW+Oonizvv/KqCxxCDsyGScupEmIG0ZpxWO822S+GYnNa67QJQ4278Kw45/Sjft1EWaqX91qQx6r
	2I+Q6hJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxPT-0000000EId2-0H64;
	Tue, 09 Dec 2025 13:05:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxPP-0000000EIb6-1jIa
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 13:05:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxPN-0003Wo-T3; Tue, 09 Dec 2025 14:05:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxPN-004n1K-2I;
	Tue, 09 Dec 2025 14:05:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-069T;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-12-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=13264;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Yo4km6dekwzzeOEF5/eGdRG+8owi/9++H/2Ufw28C9w=;
 b=QPwpBbZXOKubGLQ9/XGxVa7kmdRAkibOtKsKoqKs8dhHLv8Jh4c0XDJEzv9T3AMtQXlbRcBIg
 TRj6gfdjKy8BP2hLUZt45qLq5+tpb2sUnVj7OnE5mG7y8hQ/l5WHRCU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_050539_759392_7B7CDFA7 
X-CRM114-Status: GOOD (  23.24  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/13] fs: replace cdev links with aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devinfo.c              |   7 +-
 common/partitions.c             |   2 +-
 drivers/block/dm/dm-core.c      |   1 -
 drivers/misc/storage-by-alias.c |   2 +-
 fs/devfs-core.c                 | 191 +++++++++++++++++++++-------------------
 include/block.h                 |   2 -
 include/driver.h                |  20 +++--
 7 files changed, 121 insertions(+), 104 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index c87b30e84307e5053bc35e8bd70ac7af63f688b8..c5417cb7bbe9c7beacd85888fb34405bdc279aea 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -9,7 +9,8 @@
 static int do_devinfo_subtree(struct device *dev, int depth)
 {
 	struct device *child;
-	struct cdev *cdev, *cdevl;
+	struct cdev *cdev;
+	struct cdev_alias *alias;
 	int i;
 
 	for (i = 0; i < depth; i++)
@@ -26,8 +27,8 @@ static int do_devinfo_subtree(struct device *dev, int depth)
 					cdev->offset + cdev->size - 1,
 					size_human_readable(cdev->size),
 					cdev->name);
-			list_for_each_entry(cdevl, &cdev->links, link_entry)
-				printf(", %s", cdevl->name);
+			cdev_for_each_alias(alias, cdev)
+				printf(", %s", alias->name);
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
diff --git a/drivers/misc/storage-by-alias.c b/drivers/misc/storage-by-alias.c
index 6c759867ccbb7a7b4bc922152699eb346d42d271..196346c8eafcc7868aa279353414409617e1e907 100644
--- a/drivers/misc/storage-by-alias.c
+++ b/drivers/misc/storage-by-alias.c
@@ -38,7 +38,7 @@ static int sba_add_partitions(struct cdev *rcdev, void *data)
 
 	dev_info(sba->dev, "Adding %s -> %s\n", sba->alias, rcdev->name);
 
-	ret = devfs_create_link_node(rcdev, sba->alias, sba->dev->device_node);
+	ret = devfs_add_alias_node(rcdev, sba->alias, sba->dev->device_node);
 	if (ret)
 		return ret;
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 3a5667b9f723fa718453bdc58827f4b760f3565a..b285b7ede029b14bb0bbc1dbf60ba8a8895c3f26 100644
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
+	struct cdev_alias *alias;
 
 	for_each_cdev(cdev) {
 		if (!strcmp(cdev->name, filename))
 			return cdev;
+		cdev_for_each_alias(alias, cdev)
+			if (!strcmp(alias->name, filename))
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
@@ -94,8 +73,14 @@ struct cdev *cdev_by_device_node(struct device_node *node)
 		return NULL;
 
 	for_each_cdev(cdev) {
+		struct cdev_alias *alias;
+
 		if (cdev_of_node(cdev) == node)
-			return cdev_readlink(cdev);
+			return cdev;
+
+		cdev_for_each_alias(alias, cdev)
+			if (alias->device_node == node)
+				return cdev;
 	}
 	return NULL;
 }
@@ -133,9 +118,6 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 {
 	struct cdev *partcdev;
 
-        /* Follow links to support storage-by-alias */
-        cdev = cdev_readlink(cdev);
-
 	if (!cdev_is_gpt_partitioned(cdev))
 		return ERR_PTR(-EINVAL);
 
@@ -153,6 +135,29 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 	return ERR_PTR(-ENOENT);
 }
 
+static bool cdev_has_partname_alias(struct cdev *cdev, const char *partname)
+{
+	char *fullname;
+	struct cdev_alias *alias;
+	bool ret = false;
+
+	if (!cdev->master)
+		return false;
+
+	fullname = xasprintf("%s.%s", cdev->master->name, partname);
+
+	cdev_for_each_alias(alias, cdev) {
+		if (streq_ptr(alias->name, fullname)) {
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
@@ -164,15 +169,10 @@ struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name)
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
@@ -190,15 +190,11 @@ struct cdev *device_find_partition(struct device *dev, const char *name)
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
@@ -460,25 +456,54 @@ static void cdev_free(struct cdev *cdev)
 
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
+	struct cdev_alias *alias;
 
 	if (!devfs_initialized)
 		return;
 
 	path = xasprintf("/dev/%s", cdev->name);
 
-	if (cdev->link)
-		ret = symlink(cdev->link->name, path);
-	else
-		ret = mknod(path, S_IFCHR | 0600, cdev->name);
+	cdev_for_each_alias(alias, cdev)
+		cdev_symlink(cdev, alias->name);
+
+	ret = mknod(path, S_IFCHR | 0600, cdev->name);
 
 	free(path);
 
-	if (ret)
+	if (ret) {
 		pr_err("Failed to create /dev/%s: %pe\n", cdev->name, ERR_PTR(ret));
+		dump_stack();
+	}
+}
+
+static void devfs_unlink(const char *name)
+{
+	char *path;
+
+	path = xasprintf("/dev/%s", name);
+
+	unlink(path);
+
+	free(path);
 }
 
 void devfs_init(void)
@@ -499,8 +524,8 @@ int devfs_create(struct cdev *new)
 	if (cdev)
 		return -EEXIST;
 
-	INIT_LIST_HEAD(&new->links);
 	INIT_LIST_HEAD(&new->partitions);
+	INIT_LIST_HEAD(&new->aliases);
 
 	list_add_tail(&new->list, &cdev_list);
 	if (new->dev) {
@@ -509,54 +534,44 @@ int devfs_create(struct cdev *new)
 			new->device_node = new->dev->of_node;
 	}
 
-	if (new->link)
-		list_add_tail(&new->link_entry, &new->link->links);
-
 	devfs_mknod(new);
 
 	return 0;
 }
 
-int devfs_create_link_node(struct cdev *cdev, const char *name, struct device_node *node)
+int devfs_add_alias_node(struct cdev *cdev, const char *name, struct device_node *np)
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
-	new->device_node = node;
-
-	ret = devfs_create(new);
-	if (ret) {
-		cdev_free(new);
-		return ret;
-	}
-
-	if (cdev->partname) {
-		size_t partnameoff = 0;
+	struct cdev *conflict;
+	struct cdev_alias *alias;
 
-		if (cdev->master) {
-			size_t masterlen = strlen(cdev->master->name);
+	conflict = cdev_by_name(name);
+	if (conflict)
+		return -EEXIST;
 
-			if (!strncmp(name, cdev->master->name, masterlen))
-				partnameoff += masterlen + 1;
-		}
+	alias = xzalloc(sizeof(*alias));
+	alias->name = xstrdup(name);
+	alias->device_node = np;
+	list_add_tail(&alias->list, &cdev->aliases);
 
-		new->partname = xstrdup(name + partnameoff);
-	}
+	cdev_symlink(cdev, name);
 
 	return 0;
 }
 
-int devfs_create_link(struct cdev *cdev, const char *name)
+int devfs_add_alias(struct cdev *cdev, const char *name)
+{
+	return devfs_add_alias_node(cdev, name, NULL);
+}
+
+static void devfs_remove_aliases(struct cdev *cdev)
 {
-	return devfs_create_link_node(cdev, name, NULL);
+	struct cdev_alias *alias, *tmp;
+
+	list_for_each_entry_safe(alias, tmp, &cdev->aliases, list) {
+		devfs_unlink(alias->name);
+		free(alias->name);
+		free(alias);
+	}
 }
 
 int devfs_remove(struct cdev *cdev)
@@ -571,8 +586,9 @@ int devfs_remove(struct cdev *cdev)
 	if (cdev->dev)
 		list_del(&cdev->devices_list);
 
-	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
-		devfs_remove(c);
+	devfs_unlink(cdev->name);
+
+	devfs_remove_aliases(cdev);
 
 	list_for_each_entry_safe(c, tmp, &cdev->partitions, partition_entry)
 		cdevfs_del_partition(c);
@@ -580,9 +596,6 @@ int devfs_remove(struct cdev *cdev)
 	if (cdev_is_partition(cdev))
 		list_del(&cdev->partition_entry);
 
-	if (cdev->link)
-		cdev_free(cdev);
-
 	return 0;
 }
 
@@ -687,7 +700,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
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
index 802917f1c20727272364d094552e4e5b40a6165b..1c78f35f7eb960ac231ee6ad20db8a2a7cbb6a19 100644
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
+	struct list_head aliases;
 	struct list_head partition_entry, partitions;
 	struct cdev *master;
 	enum filetype filetype;
@@ -443,6 +443,15 @@ struct cdev {
 	};
 };
 
+#define cdev_for_each_alias(alias, cdev) \
+	list_for_each_entry(alias, &cdev->aliases, list)
+
+struct cdev_alias {
+	char *name;
+	struct device_node *device_node;
+	struct list_head list;
+};
+
 static inline struct device_node *cdev_of_node(const struct cdev *cdev)
 {
 	return IS_ENABLED(CONFIG_OFDEVICE) ? cdev->device_node : NULL;
@@ -461,15 +470,12 @@ static inline const char *cdev_name(struct cdev *cdev)
 
 void devfs_init(void);
 int devfs_create(struct cdev *);
-int devfs_create_link(struct cdev *, const char *name);
-int devfs_create_link_node(struct cdev *cdev, const char *name,
-			   struct device_node *node);
+int devfs_add_alias(struct cdev *, const char *name);
+int devfs_add_alias_node(struct cdev *, const char *name, struct device_node *np);
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



