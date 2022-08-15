Delivery-date: Mon, 15 Aug 2022 13:55:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNYgm-006Nx8-Vs
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 13:55:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNYgn-0002SD-6P
	for lore@pengutronix.de; Mon, 15 Aug 2022 13:55:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XHDrzfKVH8OzMZCQUHAFMozflUXZuiFX589MTw1HiKY=; b=vUH7j8G21fp9SRkdfQvQBdGGuc
	huPaAvuhvbSoe6ILAPq1w8o3gTSNvH3tvlFrl9vZriWUb5ytv8TLmhzTpCwd1NFr+yrWLNyr7m6Cw
	LFu3jqlmBLM2T+y4TiKozmXlqJ/xkmqW+TgBf066DGIhdyipf7jC2V7oGGrN7iA9kjQsJPd+jA4Pb
	z85n98Mbyc+4qIIYIhiNflNtADzHqsCoP4wkUE5QNa//aaFY251W/BsRoPSz4UQXb53wQqT2H7Yeo
	uYmmxYU7q09HvuMGLoZ1sSN3b3HTK6hy3Poh3Jf3nr6nw1sPJSpOSFsQBpjq9Udfaz0OI7YGylgO7
	oEjW8KxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNYfC-00FhpL-31; Mon, 15 Aug 2022 11:53:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNYaE-00Fe2n-E3
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 11:48:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYaC-0001cC-Qf; Mon, 15 Aug 2022 13:48:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYa9-003uPo-Rb; Mon, 15 Aug 2022 13:48:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYaB-009Ybu-J9; Mon, 15 Aug 2022 13:48:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 13:48:34 +0200
Message-Id: <20220815114835.2277946-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_044838_573939_DAE17EB5 
X-CRM114-Status: GOOD (  17.62  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] fs: export cdev_get_linux_rootarg() for reuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We've the root=PARTUUID=%s generation at two places: Once to populate
fsdev->linux_rootarg and once to handle struct bootm_data::root_dev.

In preparation for dropping the duplicate out-of-sync code in the bootm
code, export the originl fs/fs.c code as cdev_get_linux_rootarg().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c      | 50 +++++++++++++++++++++++++++++++++++---------------
 include/fs.h |  1 +
 2 files changed, 36 insertions(+), 15 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index bd6f144742ac..620cd6597a63 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2876,12 +2876,23 @@ int popd(char *oldcwd)
 	return ret;
 }
 
-static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
+static bool cdev_partname_equal(const struct cdev *a,
+				const struct cdev *b)
 {
-	struct cdev *cdevm, *cdev;
+	return a->partname && b->partname &&
+		!strcmp(a->partname, b->partname);
+}
+
+static char *get_linux_mmcblkdev(const struct cdev *root_cdev)
+{
+	struct cdev *cdevm = root_cdev->master, *cdev;
 	int id, partnum;
 
-	cdevm = fsdev->cdev->master;
+	if (!IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG))
+		return NULL;
+	if (!cdevm || !cdev_is_mci_main_part_dev(cdevm))
+		return NULL;
+
 	id = of_alias_get_id(cdevm->device_node, "mmc");
 	if (id < 0)
 		return NULL;
@@ -2894,8 +2905,7 @@ static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
 		 * in the partitions list so we need to count it instead of
 		 * skipping it.
 		 */
-		if (cdev->partname &&
-		    !strcmp(cdev->partname, fsdev->cdev->partname))
+		if (cdev_partname_equal(root_cdev, cdev))
 			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
 		partnum++;
 	}
@@ -2903,6 +2913,23 @@ static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
 	return NULL;
 }
 
+char *cdev_get_linux_rootarg(const struct cdev *cdev)
+{
+	char *str;
+
+	if (!cdev)
+		return NULL;
+
+	str = get_linux_mmcblkdev(cdev);
+	if (str)
+		return str;
+
+	if (cdev->uuid[0] != 0)
+		return basprintf("root=PARTUUID=%s", cdev->uuid);
+
+	return NULL;
+}
+
 /*
  * Mount a device to a directory.
  * We do this by registering a new device on which the filesystem
@@ -2991,17 +3018,10 @@ int mount(const char *device, const char *fsname, const char *pathname,
 
 	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
 
-	if (!fsdev->linux_rootarg && fsdev->cdev) {
-		char *str = NULL;
-
-		if (IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) &&
-		    fsdev->cdev->master &&
-		    cdev_is_mci_main_part_dev(fsdev->cdev->master))
-			str = get_linux_mmcblkdev(fsdev);
-
-		if (!str && fsdev->cdev->uuid[0] != 0)
-			str = basprintf("root=PARTUUID=%s", fsdev->cdev->uuid);
+	if (!fsdev->linux_rootarg) {
+		char *str;
 
+		str = cdev_get_linux_rootarg(fsdev->cdev);
 		if (str)
 			fsdev_set_linux_rootarg(fsdev, str);
 	}
diff --git a/include/fs.h b/include/fs.h
index cd5eb571e08e..894cae3e4c2f 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -168,6 +168,7 @@ void mount_all(void);
 
 void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str);
 char *path_get_linux_rootarg(const char *path);
+char *cdev_get_linux_rootarg(const struct cdev *cdev);
 
 static inline const char *devpath_to_name(const char *devpath)
 {
-- 
2.30.2



