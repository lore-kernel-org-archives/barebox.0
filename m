Delivery-date: Fri, 20 Jun 2025 12:47:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSZHe-009FsK-1j
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 12:47:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSZHd-0001sm-L3
	for lore@pengutronix.de; Fri, 20 Jun 2025 12:47:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ef/QGvqvWyQ5/j08EjAt2KIol6mrk6+25Jdk9PQCa8M=; b=yZm/nuPXJdcCHhSynOTfZ2nJyV
	7GRGSdgwVaSuXPDa1OSiGPOs38yaRLA+NobhHkU0qzcOpVEHO0BsXDtWeOmR8k8tVtnbUXgQE8YXb
	bwgEgbcvNB7LWUZhREY+4yzM4IW6P8QJJejYCCj+MrhZV8g7oHdgCTmxrfMwZU4JPunzHi47rrhtb
	GXwourwyYPphyVCZKw54BuAUh4XFPsJiEeS+CYrRmizaedJpOWCe/gF1sh85hgsD4u3BOd95O0o5a
	rBBodk5i7P8PLEIaXYZBsgbcz4gzuZo6/Q3IaCVFHFB4jR52JQroTTmH8ryXbXewFuhkoxYtYj6o6
	HiRtvblg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSZGz-0000000FNqO-31bd;
	Fri, 20 Jun 2025 10:47:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYKy-0000000FFOo-47jB
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 09:47:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKv-0001fG-Eg; Fri, 20 Jun 2025 11:47:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKv-004RPf-0H;
	Fri, 20 Jun 2025 11:47:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKu-005F2V-3B;
	Fri, 20 Jun 2025 11:47:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Jun 2025 11:47:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250620-createnv-v2-3-7fd3cc286b9a@pengutronix.de>
References: <20250620-createnv-v2-0-7fd3cc286b9a@pengutronix.de>
In-Reply-To: <20250620-createnv-v2-0-7fd3cc286b9a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750412824; l=5795;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wp0NrNJSnBmfz83UuLLcvb6lVk1LeMggAwgdzhFhXKQ=;
 b=/hAcayLYM0O5HlMNcp6bkI2XOIhfby6jqmScmZJGtu3vIalkOotDCFfoFgSUfYjEbnCCscdgX
 JPdb1Wl3HVZA5OiYhs9I7+yZNxxfXC4jxO3hWtm+8dsc7iFPzDPt1l8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_024709_082691_048873C8 
X-CRM114-Status: GOOD (  17.33  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] cdev: fix cdev_open_by_name() misuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_open_by_name() opens a cdev by its name or path. The open by path
is implemented with a simple skip the "/dev/" part of the string and use
the remaining part as name.
The effect is that several commands in barebox work with "/dev/mmc0" and
"mmc0" as argument, but not with "dev/mmc0" or even "../dev/mmc0".

Create a new cdev_open_by_path_name() function which uses
canonicalize_path() to resolve the full path and skip the "/dev/" part
afterwards.

Convert the places where a path or a name is expected to use the new
function. With this we can drop the "/dev/" skipping from
cdev_open_by_name() so that this function does what the name suggests.

Link: https://lore.barebox.org/20250602-createnv-v1-3-c3239ff875d5@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devlookup.c |  4 +---
 commands/findmnt.c   |  2 +-
 commands/parted.c    |  2 +-
 fs/devfs-core.c      | 17 ++++++++++++++++-
 fs/fs.c              |  6 +++---
 include/driver.h     |  5 +++++
 6 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/commands/devlookup.c b/commands/devlookup.c
index b7fd7be3b624fa2625a8d6968ba95f76e2c75b7d..8f34687352677c4541685c69229ef321e60d1669 100644
--- a/commands/devlookup.c
+++ b/commands/devlookup.c
@@ -71,9 +71,7 @@ static int do_devlookup(int argc, char *argv[])
 		devicefile = aliasbuf;
 	}
 
-	devicefile = devpath_to_name(devicefile);
-
-	cdev = cdev_open_by_name(devicefile, O_RDONLY);
+	cdev = cdev_open_by_path_name(devicefile, O_RDONLY);
 	if (!cdev) {
 		printf("devlookup: cdev %s not found\n", devicefile);
 		ret = -ENOENT;
diff --git a/commands/findmnt.c b/commands/findmnt.c
index c64ef8760684ca075458921ddb382d6a4353e009..a531b1a95a835b3f3d5351733c481c58d7df034e 100644
--- a/commands/findmnt.c
+++ b/commands/findmnt.c
@@ -87,7 +87,7 @@ static int do_findmnt(int argc, char *argv[])
 			const char *backingstore;
 			struct cdev *cdev;
 
-			cdev = cdev_open_by_name(devpath_to_name(device), O_RDONLY);
+			cdev = cdev_open_by_path_name(device, O_RDONLY);
 			if (!cdev)
 				continue;
 
diff --git a/commands/parted.c b/commands/parted.c
index 6872a8414c79e8e116c9ecce864888cec542ad18..7ec56da4c15fe05bb0c78af86c2a9d708aa53e6b 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -366,7 +366,7 @@ static int do_parted(int argc, char *argv[])
 	if (argc < 3)
 		return COMMAND_ERROR_USAGE;
 
-	cdev = cdev_open_by_name(argv[1], O_RDWR);
+	cdev = cdev_open_by_path_name(argv[1], O_RDWR);
 	if (!cdev) {
 		printf("Cannot open %s\n", argv[1]);
 		return COMMAND_ERROR;
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 73a13be7336df1eb4e24e8a936986b6069f3783c..52490576b730931940d1ab6212c179ed5c02634d 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -271,7 +271,7 @@ struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
 	struct cdev *cdev;
 	int ret;
 
-	cdev = cdev_by_name(devpath_to_name(name));
+	cdev = cdev_by_name(name);
 	if (!cdev)
 		return NULL;
 
@@ -282,6 +282,21 @@ struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
 	return cdev;
 }
 
+struct cdev *cdev_open_by_path_name(const char *name, unsigned long flags)
+{
+	char *canon = canonicalize_path(AT_FDCWD, name);
+	struct cdev *cdev;
+
+	if (!canon)
+		return cdev_open_by_name(name, flags);
+
+	cdev = cdev_open_by_name(devpath_to_name(canon), flags);
+
+	free(canon);
+
+	return cdev;
+}
+
 int cdev_close(struct cdev *cdev)
 {
 	struct cdev *master = cdev_get_master(cdev);
diff --git a/fs/fs.c b/fs/fs.c
index 763f1b617460473630f58530eaf00580b56796b0..24aa76997130006805435736c8a184c3e1bf16d1 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -912,7 +912,7 @@ const char *fs_detect(const char *filename, const char *fsoptions)
 		ret = file_name_detect_type_offset(filename, offset, &type,
 						   file_detect_fs_type);
 	} else {
-		struct cdev *cdev = cdev_open_by_name(filename, O_RDONLY);
+		struct cdev *cdev = cdev_open_by_path_name(filename, O_RDONLY);
 		if (cdev) {
 			ret = cdev_detect_type(cdev, &type);
 			cdev_close(cdev);
@@ -957,7 +957,7 @@ int fsdev_open_cdev(struct fs_device *fsdev)
 			}
 		}
 	} else {
-		fsdev->cdev = cdev_open_by_name(fsdev->backingstore, O_RDWR);
+		fsdev->cdev = cdev_open_by_path_name(fsdev->backingstore, O_RDWR);
 	}
 	if (!fsdev->cdev) {
 		path_put(&path);
@@ -3217,7 +3217,7 @@ int umount(const char *pathname)
 	path_put(&path);
 
 	if (!fsdev) {
-		struct cdev *cdev = cdev_open_by_name(pathname, O_RDWR);
+		struct cdev *cdev = cdev_open_by_path_name(pathname, O_RDWR);
 
 		if (cdev) {
 			cdev_close(cdev);
diff --git a/include/driver.h b/include/driver.h
index dd50a7aa3cce2a421b49b7a613221bc5062a0054..138e83bb64d3b855368e83208eea6d9b64998aed 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -551,6 +551,7 @@ ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulo
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 struct cdev *cdev_by_name(const char *filename);
 struct cdev *cdev_open_by_name(const char *name, unsigned long flags);
+struct cdev *cdev_open_by_path_name(const char *name, unsigned long flags);
 #else
 static inline ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
@@ -568,6 +569,10 @@ static inline struct cdev *cdev_open_by_name(const char *name, unsigned long fla
 {
 	return NULL;
 }
+static inline struct cdev *cdev_open_by_path_name(const char *name, unsigned long flags)
+{
+	return NULL;
+}
 #endif
 int cdev_ioctl(struct cdev *cdev, unsigned int cmd, void *buf);
 int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);

-- 
2.39.5



