Delivery-date: Mon, 14 Apr 2025 08:32:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNE-000Wzz-18
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DND-0001Qm-KG
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gH631E8zm4BiF6HtHj0ROmkG4Oc7WeuV96K+eYSffHI=; b=OtY3MqLGtSSSdulf12a2GuwNL6
	uYTGlB6Wb2kLMBu2ig+6reQGjc063tYkJyCdcPdZm221q+z8yxjuXB628M0zdoM9StMlPcje/laEc
	3/20RQUEQTWhLbFOd/CnqTx0YAub/TGxu/wIkN0q+VVoCFBoTNDA/mg4KyNgzjBJW766l7RcA9QCY
	g47F0zAuQDAah1biDGr3+qgQRFNOB4qtsT2OnQ5uIuQX5Rgc4pA2r7QNCE84dGiJ1nqj6+AFDg8Ic
	lfFPAIvzzG4Ng7QR0y//HmnzXkid8HKTXZScO/fudk87Iv1ji2zkR6bpy88bpTAcGMnvTnbmpscOq
	R3h5SFag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMj-00000000nwK-1VfM;
	Mon, 14 Apr 2025 06:32:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMJ-00000000npl-0Sv9
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:31:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-0000lO-Ty; Mon, 14 Apr 2025 08:31:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000Chm-2G;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-1x;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:41 +0200
Message-Id: <20250414063152.2736649-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233155_179171_CC1C246D 
X-CRM114-Status: GOOD (  14.63  )
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
Subject: [PATCH 07/18] cdev: alias: add support for partition links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently support bootsource.2, but not bootsource.root-A.
Fix this and while at it, factor out the logic for general reuse.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/cdev-alias.c | 22 +++-------------------
 fs/devfs-core.c     | 29 +++++++++++++++++++++++++++++
 include/driver.h    |  1 +
 3 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index 5c37c2e58bf3..09e6770f5dea 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -17,22 +17,6 @@ struct cdev_alias {
 		       cdev_alias_processor_t fn, void *data);
 };
 
-static struct cdev *resolve_partition(struct cdev *cdev,
-				      const char *partname)
-{
-	struct cdev *partcdev;
-
-	if (!partname)
-		return cdev;
-
-	for_each_cdev_partition(partcdev, cdev) {
-		if (streq_ptr(partcdev->partname, partname))
-			return partcdev;
-	}
-
-	return ERR_PTR(-ENODEV);
-}
-
 static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
 					 const char *partname,
 					 cdev_alias_processor_t fn,
@@ -44,9 +28,9 @@ static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
 	if (!cdev)
 		return -ENODEV;
 
-	cdev = resolve_partition(cdev, partname);
-	if (IS_ERR(cdev))
-		return PTR_ERR(cdev);
+	cdev = cdev_find_partition(cdev, partname);
+	if (!cdev)
+		return -ENODEV;
 
 	return fn(cdev, data);
 }
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c69c38d6506e..e32bce9e307e 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -21,6 +21,7 @@
 #include <malloc.h>
 #include <ioctl.h>
 #include <nand.h>
+#include <string.h>
 #include <linux/err.h>
 #include <linux/fs.h>
 #include <linux/mtd/mtd.h>
@@ -149,6 +150,34 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 	return ERR_PTR(-ENOENT);
 }
 
+/**
+ * cdev_find_partition - find a partition belonging to a physical device
+ *
+ * @cdev: the cdev which should be searched for partitions
+ * @name: the partition name
+ */
+struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name)
+{
+	struct cdev *partcdev;
+
+	if (!name)
+		return cdevm;
+
+	for_each_cdev_partition(partcdev, cdevm) {
+		struct cdev *cdevl;
+
+		if (streq_ptr(partcdev->partname, name))
+			return partcdev;
+
+		list_for_each_entry(cdevl, &partcdev->links, link_entry) {
+			if (streq_ptr(cdevl->partname, name))
+				return cdevl;
+		}
+	}
+
+	return NULL;
+}
+
 /**
  * device_find_partition - find a partition belonging to a physical device
  *
diff --git a/include/driver.h b/include/driver.h
index 3f2c681c0e80..ca002c5164c2 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -503,6 +503,7 @@ int devfs_create(struct cdev *);
 int devfs_create_link(struct cdev *, const char *name);
 int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
+struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);
 struct cdev *device_find_partition(struct device *dev, const char *name);
 struct cdev *lcdev_by_name(const char *filename);
 struct cdev *cdev_readlink(struct cdev *cdev);
-- 
2.39.5



