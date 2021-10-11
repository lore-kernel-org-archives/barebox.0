Delivery-date: Mon, 11 Oct 2021 09:32:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZpn5-0006C0-7d
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 09:32:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZpn4-00024T-4N
	for lore@pengutronix.de; Mon, 11 Oct 2021 09:32:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7csvKO+4h+ix606lzA3DUek0Afib60RbSnIIbW+TR5w=; b=yRm3K87hNjDGPR
	1yvri7Urg0+OR1CEHEHDpzuV/lO2iKVFM1fwpMU+12Ztr+w+vwTZrNaVAi6R5ecjJA55zcLNm1Ry3
	90CJerOj5g1JNKLs44J+7xpnfIvhztjnKrtscrSdZV4d1XB51GKT2sZZgtdpYFU2LBDxqEMvJVE43
	Oef42SBhnD2SzQxEILaQRl8mWYeRqWTxwwKPtOylbjBJ0r2DSw3Pw0246Cmwzk7mNE7Uz7PE/iaeU
	rSaYEbvUSKNGasmVp/bdH1E7v++RdnMG7uhTysFG6nZZDtn9w+fDzCtW+DymlSoImMoP08vrXsaEL
	gFbLzXWOqhK83olwQStA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZplZ-008AMw-8R; Mon, 11 Oct 2021 07:30:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZplU-008AMR-71
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 07:30:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZplS-0001qw-MY; Mon, 11 Oct 2021 09:30:26 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZplS-00HZO7-6s; Mon, 11 Oct 2021 09:30:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 09:30:25 +0200
Message-Id: <20211011073025.4187545-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_003028_303021_89022263 
X-CRM114-Status: GOOD (  16.22  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] devfs: Do not create overlapping partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Until now it has been possible to create overlapping partitions. Go away
from that and allow to create partitions only in unallocated areas of a
device. This lowers the risk of having inconsistent partitioning and
increases the chance that inconsistent partitioning is recognized by
the user.

We had explicit overlap checking for the environment partition which
becomes unnecessary with this change and is removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 70 +-----------------------------------------------
 fs/devfs-core.c  | 34 +++++++++++++++++++++++
 2 files changed, 35 insertions(+), 69 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index f72902fc53..f53b73f81a 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -68,70 +68,6 @@ static int mount_root(void)
 fs_initcall(mount_root);
 #endif
 
-#ifdef CONFIG_ENV_HANDLING
-static bool region_overlap(loff_t starta, loff_t lena,
-			   loff_t startb, loff_t lenb)
-{
-	if (starta + lena <= startb)
-		return 0;
-	if (startb + lenb <= starta)
-		return 0;
-	return 1;
-}
-
-static int check_overlap(const char *path)
-{
-	struct cdev *cenv, *cdisk, *cpart;
-	const char *name;
-
-	name = devpath_to_name(path);
-
-	if (name == path)
-		/*
-		 * no /dev/ in front, so *path is some file. No need to
-		 * check further.
-		 */
-		return 0;
-
-	cenv = cdev_by_name(name);
-	if (!cenv)
-		return -EINVAL;
-
-	if (cenv->mtd)
-		return 0;
-
-	cdisk = cenv->master;
-
-	if (!cdisk)
-		return 0;
-
-	list_for_each_entry(cpart, &cdisk->partitions, partition_entry) {
-		if (cpart == cenv)
-			continue;
-
-		if (region_overlap(cpart->offset, cpart->size,
-				   cenv->offset, cenv->size))
-			goto conflict;
-	}
-
-	return 0;
-
-conflict:
-	pr_err("Environment partition (0x%08llx-0x%08llx) "
-		"overlaps with partition %s (0x%08llx-0x%08llx), not using it\n",
-		cenv->offset, cenv->offset + cenv->size - 1,
-		cpart->name,
-		cpart->offset, cpart->offset + cpart->size - 1);
-
-	return -EINVAL;
-}
-#else
-static int check_overlap(const char *path)
-{
-	return 0;
-}
-#endif
-
 static int load_environment(void)
 {
 	const char *default_environment_path;
@@ -143,11 +79,7 @@ static int load_environment(void)
 		defaultenv_load("/env", 0);
 
 	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
-		ret = check_overlap(default_environment_path);
-		if (ret)
-			default_environment_path_set(NULL);
-		else
-			envfs_load(default_environment_path, "/env", 0);
+		envfs_load(default_environment_path, "/env", 0);
 	} else {
 		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
 			pr_notice("No support for persistent environment. Using default environment\n");
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 30ad0e0508..3715e543e6 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -301,6 +301,37 @@ int devfs_remove(struct cdev *cdev)
 	return 0;
 }
 
+static bool region_overlap(loff_t starta, loff_t lena,
+			   loff_t startb, loff_t lenb)
+{
+	if (starta + lena <= startb)
+		return 0;
+	if (startb + lenb <= starta)
+		return 0;
+	return 1;
+}
+
+static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
+{
+	struct cdev *cpart;
+
+	list_for_each_entry(cpart, &cdev->partitions, partition_entry) {
+		if (region_overlap(cpart->offset, cpart->size,
+				   offset, size))
+			goto conflict;
+	}
+
+	return 0;
+
+conflict:
+	pr_err("New partition %s (0x%08llx-0x%08llx) on %s "
+		"overlaps with partition %s (0x%08llx-0x%08llx), not creating it\n",
+		name, offset, offset + size - 1, cpart->name,
+		cpart->name, cpart->offset, cpart->offset + cpart->size - 1);
+
+	return -EINVAL;
+}
+
 static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		const struct devfs_partition *partinfo, loff_t *end)
 {
@@ -336,6 +367,9 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		return ERR_PTR(-EINVAL);
 	}
 
+	if (check_overlap(cdev, partinfo->name, offset, size))
+		return ERR_PTR(-EINVAL);
+
 	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
 		struct mtd_info *mtd;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

