Delivery-date: Mon, 07 Feb 2022 10:52:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0gl-0088s9-V1
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:52:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0gk-0003Wr-BL
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:52:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0lU6GtF7uHpaIRYhtcgnGim4yOuWDYui8OkrdI0cwQ=; b=q9GFfTzom9sO1/
	ZQfyoColpUjn+XoqTxcXODYenXUTJtplQ/h5W72VJRy5s4YpDES7QSvDEHvSE5E1gjRBAmOfm6x+h
	ygrcNl5UpChw2CEfC1LExTOD05zA816MX2U5nx5vBZfXsCOQuQ8UEfKeEzRav+vBgIrri/Ky6rH5/
	7kREQ6aIOjeK6Zpo+zB9pwguyzZa1m7o/sN9RRDr6EG/LEbkJ8nHv1H9igPT2emhXy5w8VXEeZIct
	2bPutjmarqT15Rm5EpXBXKWwteCblT2OenhOFgRCuL229Ri6W50cEquyHE0errFJc9R+B4EWNdnSa
	tnY+/FlUCLC6yPWUy3/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0fP-009dxC-W0; Mon, 07 Feb 2022 09:50:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0eo-009dke-M5
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:50:04 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0en-0002th-B5; Mon, 07 Feb 2022 10:50:01 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0em-0040M7-NN; Mon, 07 Feb 2022 10:50:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Feb 2022 10:49:52 +0100
Message-Id: <20220207094953.949868-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207094953.949868-1-s.hauer@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015002_817975_99621F26 
X-CRM114-Status: GOOD (  13.27  )
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
Cc: Michael Olbrich <mol@pengutronix.de>
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/8] cdev: create iterator for cdev list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This creates an iterator to iterate over all availabe cdevs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 10 +++++-----
 fs/devfs.c       |  4 +---
 include/driver.h |  4 ++++
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c9a8529737..2f2882dcc8 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -37,7 +37,7 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 
 	len = strlen(instr);
 
-	list_for_each_entry(cdev, &cdev_list, list) {
+	for_each_cdev(cdev) {
 		if (cdev->master &&
 		    !strncmp(instr, cdev->name, len)) {
 			string_list_add_asprintf(sl, "%s ", cdev->name);
@@ -62,7 +62,7 @@ struct cdev *lcdev_by_name(const char *filename)
 {
 	struct cdev *cdev;
 
-	list_for_each_entry(cdev, &cdev_list, list) {
+	for_each_cdev(cdev) {
 		if (!strcmp(cdev->name, filename))
 			return cdev;
 	}
@@ -84,7 +84,7 @@ struct cdev *cdev_by_device_node(struct device_node *node)
 {
 	struct cdev *cdev;
 
-	list_for_each_entry(cdev, &cdev_list, list) {
+	for_each_cdev(cdev) {
 		if (!cdev->device_node)
 			continue;
 		if (cdev->device_node == node)
@@ -100,7 +100,7 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
 	if (!partuuid)
 		return NULL;
 
-	list_for_each_entry(cdev, &cdev_list, list) {
+	for_each_cdev(cdev) {
 		if (cdev->master && !strcasecmp(cdev->uuid, partuuid))
 			return cdev;
 	}
@@ -114,7 +114,7 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
 	if (!diskuuid)
 		return NULL;
 
-	list_for_each_entry(cdev, &cdev_list, list) {
+	for_each_cdev(cdev) {
 		if (!cdev->master && !strcasecmp(cdev->uuid, diskuuid))
 			return cdev;
 	}
diff --git a/fs/devfs.c b/fs/devfs.c
index d205881765..deb244feea 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -35,8 +35,6 @@ struct devfs_inode {
 	struct cdev *cdev;
 };
 
-extern struct list_head cdev_list;
-
 static int devfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 {
 	struct cdev *cdev = f->priv;
@@ -179,7 +177,7 @@ static int devfs_iterate(struct file *file, struct dir_context *ctx)
 
 	dir_emit_dots(file, ctx);
 
-	list_for_each_entry(cdev, &cdev_list, list) {
+	for_each_cdev(cdev) {
 		dir_emit(ctx, cdev->name, strlen(cdev->name),
 				1 /* FIXME */, DT_REG);
 	}
diff --git a/include/driver.h b/include/driver.h
index b9b0b8497d..79d287ec31 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -510,6 +510,10 @@ int cdev_memmap(struct cdev*, void **map, int flags);
 int cdev_truncate(struct cdev*, size_t size);
 loff_t cdev_unallocated_space(struct cdev *cdev);
 
+extern struct list_head cdev_list;
+#define for_each_cdev(c) \
+	list_for_each_entry(cdev, &cdev_list, list)
+
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

