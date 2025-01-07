Delivery-date: Tue, 07 Jan 2025 09:04:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZR-000Erd-2w
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:04:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Yw-0001t8-Nm
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:04:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i4t7rfPdUp6QYjtM43VnGXRUn5I404RvW6mWi0Ija1U=; b=labv75Hg5v86DjODtp6efAj6Cp
	rdbhGr5ynDmnbzqA8mub4N4Oi4Q7Zm+1fdWby0Fz2cWSmbsgjYbTmx5uxnNCRTKfF7jtWoMf2N0YS
	XjuJ1+xIWmzgTeajtZPjdRdmPdmoTmY6ZxxyQJKZO/nevArnd3BtCTsAXhEhgfpjPndUgGxWHQ3JV
	XNrtOEP1XmQ6WIi9qHBBEHuZ1lFPMGU6bxd21t1NCCqiJmvnnbWFwd8kpnsDthhngfgCBo7tSdAh2
	de76nurOKAnzSot2Zuygv2JYia8/eZnk5qAsUrWedKEUHz9K8cYAC93W9THwe4NEqoqnviYiqKRE2
	0nqo9JNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XK-00000003q2C-122l;
	Tue, 07 Jan 2025 08:02:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVO-2r3T
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:59:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rm-Dz; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007Iqp-1P;
	Tue, 07 Jan 2025 08:59:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-00Bv76-0O;
	Tue, 07 Jan 2025 08:59:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:38 +0100
Message-Id: <20250107075939.2841119-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235956_722235_90C048AB 
X-CRM114-Status: GOOD (  15.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] fs: merge struct file and struct filep
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since dcache support was added, we had two structs representing files:
struct file and type struct filep FILE. The former was used only for
listing files in ->iterate and the latter everywhere else for
representing an open file (descriptor).

Now, struct filep is nearly a subset of struct file with the difference
that it adds two extra members: fsdev and path.

Therefore, let's merge them to simplify porting kernel code.

Note that struct file for dcache is still being manually created and so
filesystems ported from the kernel may crash, because they expect a
fully populated struct file. This doesn't affect any in-tree file
systems and thus will be tackled separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
The follow up using the existing struct file in __opendir instead of a
creating new one will follow later once I have debugged 9PFS to work
correctly.
---
 include/driver.h   |  6 +++---
 include/fs.h       | 14 --------------
 include/linux/fs.h | 10 +++++++---
 3 files changed, 10 insertions(+), 20 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 267e34294511..f61515c7b2a7 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -21,7 +21,7 @@
 
 #include <param.h>
 
-struct filep;
+struct file;
 struct bus_type;
 struct generic_pm_domain;
 
@@ -353,12 +353,12 @@ ssize_t mem_copy(struct device *dev, void *dst, const void *src,
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-static inline int dev_open_default(struct device *dev, struct filep *f)
+static inline int dev_open_default(struct device *dev, struct file *f)
 {
 	return 0;
 }
 
-static inline int dev_close_default(struct device *dev, struct filep *f)
+static inline int dev_close_default(struct device *dev, struct file *f)
 {
 	return 0;
 }
diff --git a/include/fs.h b/include/fs.h
index 404d0e58da97..36d1be018388 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -19,20 +19,6 @@ struct partition;
 struct node_d;
 struct stat;
 
-typedef struct filep {
-	struct fs_device *fsdev; /* The device this FILE belongs to              */
-	char *path;
-	loff_t f_pos;            /* current position in stream                   */
-#define FILE_SIZE_STREAM	((loff_t) -1)
-	ulong f_flags;          /* the O_* flags from open                      */
-
-	void *private_data;         /* private to the filesystem driver              */
-
-#define f_size f_inode->i_size
-	struct inode *f_inode;
-	struct path f_path;
-} FILE;
-
 #define FS_DRIVER_NO_DEV	1
 
 /**
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 353e2a359d24..c58dab554041 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -220,8 +220,12 @@ struct file_system_type {
 	struct hlist_head fs_supers;
 };
 
-struct file {
+typedef struct file {
+	struct fs_device	*fsdev; /* The device this FILE belongs to */
+	char			*path;
 	struct path		f_path;
+#define FILE_SIZE_STREAM	((loff_t) -1)
+#define f_size f_inode->i_size
 	struct inode		*f_inode;	/* cached value */
 #define f_dentry	f_path.dentry
 #define f_vfsmnt	f_path.mnt
@@ -231,9 +235,9 @@ struct file {
 	unsigned int		f_uid, f_gid;
 
 	u64			f_version;
-	/* needed for tty driver, and maybe others */
+	/* private to the filesystem driver */
 	void			*private_data;
-};
+} FILE;
 
 struct super_operations {
 	struct inode *(*alloc_inode)(struct super_block *sb);
-- 
2.39.5



