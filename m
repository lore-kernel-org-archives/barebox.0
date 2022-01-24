Delivery-date: Mon, 24 Jan 2022 11:07:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGT-00Blfw-GZ
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 11:07:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGP-0002qc-0M
	for lore@pengutronix.de; Mon, 24 Jan 2022 11:07:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1x6ND3YMuCBP0wABDplltSnLKanOmonkOwssPT5qJM4=; b=MqSilV4Jn3EnN3
	lzFFN5M1XE2MYEqhKBH7329Zj1TMgTUSiKRXT3u/wjn5JsRqZ4/Gvgks2MpbGq4L/Fel0OsGCqfrF
	sZqZKMyBU5PmhMPSDo2fQwYXAphPigCemA1JQ0zB2r0UrJTY7aDtj42/yGzIlovvjO+JntkRr2fLm
	xEKS76mmfzyOZc/HjbFUMCHqwoZrRGfVFdySId8itjmCPxzsjlWV8WcoF5IA4OQm3I95Uaa0xe6Gf
	GCq13RIL5bCw1JiWu/TbCGbhJcXCEc6PqyMPH+JTwlKGtFKT3LkchAXQjWcLhXsuqUGauiH9sF0tN
	exlWbUOue42oPsag/mFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBwEa-002uvD-7O; Mon, 24 Jan 2022 10:06:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBwDt-002uYR-Ly
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 10:05:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDq-0002CH-52; Mon, 24 Jan 2022 11:05:14 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDp-00C6RQ-MW; Mon, 24 Jan 2022 11:05:12 +0100
Received: from mol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDn-00CGwF-KK; Mon, 24 Jan 2022 11:05:11 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Mon, 24 Jan 2022 11:04:56 +0100
Message-Id: <20220124100458.2924679-2-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_020517_788655_88B90045 
X-CRM114-Status: GOOD (  14.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] cdev: rename partuuid to uuid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Partitions are not the only devices that can have UUIDs. Change the name to
something more generic to prepare for other users.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 common/bootm.c             | 6 +++---
 common/partitions.c        | 2 +-
 common/partitions/parser.h | 2 +-
 fs/devfs-core.c            | 2 +-
 fs/fs.c                    | 4 ++--
 include/driver.h           | 4 ++--
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 89e3e93f2ce0..4652467448eb 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -709,15 +709,15 @@ int bootm_boot(struct bootm_data *bootm_data)
 			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
 			const struct cdev *root_cdev = cdev_by_name(root_dev_name);
 
-			if (root_cdev && root_cdev->partuuid[0] != 0) {
-				rootarg = basprintf("root=PARTUUID=%s", root_cdev->partuuid);
+			if (root_cdev && root_cdev->uuid[0] != 0) {
+				rootarg = basprintf("root=PARTUUID=%s", root_cdev->uuid);
 			} else {
 				rootarg = ERR_PTR(-EINVAL);
 
 				if (!root_cdev)
 					pr_err("no cdev found for %s, cannot set root= option\n",
 						root_dev_name);
-				else if (!root_cdev->partuuid[0])
+				else if (!root_cdev->uuid[0])
 					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
 						root_dev_name);
 			}
diff --git a/common/partitions.c b/common/partitions.c
index b579559672a0..9cca5c4a1546 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -51,7 +51,7 @@ static int register_one_partition(struct block_device *blk,
 	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
 
 	cdev->dos_partition_type = part->dos_partition_type;
-	strcpy(cdev->partuuid, part->partuuid);
+	strcpy(cdev->uuid, part->partuuid);
 
 	free(partition_name);
 
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 69508932b361..d67f8e1d6a09 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -17,7 +17,7 @@
 struct partition {
 	char name[MAX_PARTITION_NAME];
 	u8 dos_partition_type;
-	char partuuid[MAX_PARTUUID_STR];
+	char partuuid[MAX_UUID_STR];
 	uint64_t first_sec;
 	uint64_t size;
 };
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2d016e0e4861..82e4811b384a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -101,7 +101,7 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
 		return NULL;
 
 	list_for_each_entry(cdev, &cdev_list, list) {
-		if (!strcasecmp(cdev->partuuid, partuuid))
+		if (cdev->master && !strcasecmp(cdev->uuid, partuuid))
 			return cdev;
 	}
 	return NULL;
diff --git a/fs/fs.c b/fs/fs.c
index 7da3a050c1cb..a92b4e9dfca1 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2969,8 +2969,8 @@ int mount(const char *device, const char *fsname, const char *pathname,
 		    cdev_is_mci_main_part_dev(fsdev->cdev->master))
 			str = get_linux_mmcblkdev(fsdev);
 
-		if (!str && fsdev->cdev->partuuid[0] != 0)
-			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
+		if (!str && fsdev->cdev->uuid[0] != 0)
+			str = basprintf("root=PARTUUID=%s", fsdev->cdev->uuid);
 
 		if (str)
 			fsdev_set_linux_rootarg(fsdev, str);
diff --git a/include/driver.h b/include/driver.h
index 4f6d40e17c14..409ed7e02afd 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -447,7 +447,7 @@ struct cdev_operations {
 	int (*truncate)(struct cdev*, size_t size);
 };
 
-#define MAX_PARTUUID_STR	sizeof("00112233-4455-6677-8899-AABBCCDDEEFF")
+#define MAX_UUID_STR	sizeof("00112233-4455-6677-8899-AABBCCDDEEFF")
 
 struct cdev {
 	const struct cdev_operations *ops;
@@ -460,7 +460,7 @@ struct cdev {
 	char *partname; /* the partition name, usually the above without the
 			 * device part, i.e. name = "nand0.barebox" -> partname = "barebox"
 			 */
-	char partuuid[MAX_PARTUUID_STR];
+	char uuid[MAX_UUID_STR];
 	loff_t offset;
 	loff_t size;
 	unsigned int flags;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

