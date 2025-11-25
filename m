Delivery-date: Tue, 25 Nov 2025 07:27:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNmVy-004dvU-0M
	for lore@lore.pengutronix.de;
	Tue, 25 Nov 2025 07:27:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNmVx-0006Ez-Em
	for lore@pengutronix.de; Tue, 25 Nov 2025 07:27:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VOfVtZOK4nDm0faLNMk/0TztpJmfPDx72oaQGXpcDog=; b=B348G8xpqW97rJdMeeh0DVHwy8
	UKH4lmI70IThUk5y7ufzK1mQgtfzGNZgvKVcx5XD+VUiFReI8eEXbaq6DXZWciQnoXlfuCwuVdPG/
	y/u/eGa3nODHePfy3HcScIigy7srgROtO2GUl6RJkAfYAH1Vl/KZ3I+NxAZPLmMRv/8fXp4jOv8VI
	iA6UJzVDDhFp/3GtWwaonedBTRCUzMuC0lU3C6gnlPNNLWwI9b7HLpVgBIdkR9urJRvKG8VVG/RA/
	DfMLybpvRtedYWfkfMGucyXboR5IRSsOW4YzP5Rhn/s9HPSS1jH0U+cPuZZPwlSuUi3cUCu5KJJeo
	PTunICYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNmVD-0000000Cosc-2ft6;
	Tue, 25 Nov 2025 06:26:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNmVA-0000000Cos8-3FIE
	for barebox@lists.infradead.org;
	Tue, 25 Nov 2025 06:26:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmV7-00064N-00; Tue, 25 Nov 2025 07:26:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmV6-002L4D-2b;
	Tue, 25 Nov 2025 07:26:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmV6-0000000AyRx-2ybC;
	Tue, 25 Nov 2025 07:26:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 25 Nov 2025 07:23:44 +0100
Message-ID: <20251125062603.2614867-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_222612_810953_1DF596CA 
X-CRM114-Status: GOOD (  12.97  )
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
Subject: [PATCH v2 1/4] fs: qemu_fw_cfg: make use of the automount
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We assume /mnt/fw_cfg to be the fw_cfg mount path at other places
already, so let's drop some complexity by just using the automount.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new preparatory patch
---
 fs/devfs-core.c  |  6 ++++++
 fs/qemu_fw_cfg.c | 27 +++++----------------------
 include/driver.h |  2 ++
 3 files changed, 13 insertions(+), 22 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 92e7c5823ed0..4f8230e124eb 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -86,6 +86,12 @@ struct cdev *cdev_by_name(const char *filename)
 	return cdev_readlink(cdev);
 }
 
+struct device *device_find_by_file_path(const char *filename)
+{
+	struct cdev *cdev = cdev_by_name(devpath_to_name(filename));
+	return cdev ? cdev->dev : NULL;
+}
+
 struct cdev *cdev_by_device_node(struct device_node *node)
 {
 	struct cdev *cdev;
diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index 8e61df1ebf22..5aaf14267f88 100644
--- a/fs/qemu_fw_cfg.c
+++ b/fs/qemu_fw_cfg.c
@@ -410,32 +410,15 @@ coredevice_initcall(qemu_fw_cfg_fs_init);
 
 static int qemu_fw_cfg_early_mount(void)
 {
-	struct cdev *cdev;
-	struct device *dev;
-	const char *mntpath;
-	int dirfd, fd;
-
-	cdev = cdev_by_name("fw_cfg");
-	if (!cdev)
-		return 0;
+	int fd;
 
 	/*
-	 * Trigger a mount, so ramfb device can be detected and
-	 * environment can be loaded
+	 * Also triggers the automount, so ramfb device can be detected
 	 */
-	mntpath = cdev_mount(cdev);
-	if (IS_ERR(mntpath))
-		return PTR_ERR(mntpath);
-
-	dirfd = open(mntpath, O_PATH | O_DIRECTORY);
-	if (dirfd < 0)
-		return dirfd;
-
-	fd = openat(dirfd, "by_name/etc/ramfb", O_WRONLY);
-	close(dirfd);
+	fd = open("/mnt/fw_cfg/by_name/etc/ramfb", O_WRONLY);
 	if (fd >= 0) {
-		dev = device_alloc("qemu-ramfb", DEVICE_ID_SINGLE);
-		dev->parent = cdev->dev;
+		struct device *dev = device_alloc("qemu-ramfb", DEVICE_ID_SINGLE);
+		dev->parent = device_find_by_file_path("/dev/fw_cfg");
 		dev->platform_data = (void *)(uintptr_t)fd;
 		platform_device_register(dev);
 	}
diff --git a/include/driver.h b/include/driver.h
index c130a3cd63fd..143ca18e4e39 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -477,6 +477,8 @@ int cdev_fdopen(struct cdev *cdev, unsigned long flags);
 int cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
 
+struct device *device_find_by_file_path(const char *filepath);
+
 typedef int (*cdev_alias_processor_t)(struct cdev *, void *data);
 
 #ifdef CONFIG_CDEV_ALIAS
-- 
2.47.3



