Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJKcW-00069O-0w
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 10:24:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 11:24:21 +0100
Message-Id: <1393583061-796-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393583061-796-1-git-send-email-s.hauer@pengutronix.de>
References: <1393583061-796-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] fs: ubifs: rework logging
To: barebox@lists.infradead.org

By default UBIFS is very verbose. Decrease the verbosity, turn
printf messages into ubifs_ messages and add device parameters
for the values which are not printed anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/super.c | 30 +++++++++++++++++++++---------
 fs/ubifs/ubifs.c |  2 +-
 fs/ubifs/ubifs.h | 11 +++++------
 3 files changed, 27 insertions(+), 16 deletions(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index e8e2cbe..075b258 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -257,12 +257,12 @@ static int init_constants_early(struct ubifs_info *c)
 	}
 
 	if (c->di.ro_mode) {
-		ubifs_msg("read-only UBI device");
+		dbg_msg("read-only UBI device");
 		c->ro_media = 1;
 	}
 
 	if (c->vi.vol_type == UBI_STATIC_VOLUME) {
-		ubifs_msg("static UBI volume - read-only mode");
+		dbg_msg("static UBI volume - read-only mode");
 		c->ro_media = 1;
 	}
 
@@ -540,6 +540,7 @@ static int mount_ubifs(struct ubifs_info *c)
 	int err, mounted_read_only = ubifs_readonly(c);
 	long long x;
 	size_t sz;
+	char str[128];
 
 	err = init_constants_early(c);
 	if (err)
@@ -676,18 +677,19 @@ static int mount_ubifs(struct ubifs_info *c)
 	ubifs_msg("mounted UBI device %d, volume %d, name \"%s\"",
 		  c->vi.ubi_num, c->vi.vol_id, c->vi.name);
 	if (mounted_read_only)
-		ubifs_msg("mounted read-only");
+		dbg_msg("mounted read-only");
 	x = (long long)c->main_lebs * c->leb_size;
-	ubifs_msg("file system size:   %lld bytes (%lld KiB, %lld MiB, %d "
+	c->fs_size_mb = x >> 20;
+	dbg_msg("file system size:   %lld bytes (%lld KiB, %lld MiB, %d "
 		  "LEBs)", x, x >> 10, x >> 20, c->main_lebs);
 	x = (long long)c->log_lebs * c->leb_size + c->max_bud_bytes;
-	ubifs_msg("journal size:       %lld bytes (%lld KiB, %lld MiB, %d "
+	dbg_msg("journal size:       %lld bytes (%lld KiB, %lld MiB, %d "
 		  "LEBs)", x, x >> 10, x >> 20, c->log_lebs + c->max_bud_cnt);
-	ubifs_msg("media format:       w%d/r%d (latest is w%d/r%d)",
+	dbg_msg("media format:       w%d/r%d (latest is w%d/r%d)",
 		  c->fmt_version, c->ro_compat_version,
 		  UBIFS_FORMAT_VERSION, UBIFS_RO_COMPAT_VERSION);
-	ubifs_msg("default compressor: %s", ubifs_compr_name(c->default_compr));
-	ubifs_msg("reserved for root:  %llu bytes (%llu KiB)",
+	dbg_msg("default compressor: %s", ubifs_compr_name(c->default_compr));
+	dbg_msg("reserved for root:  %llu bytes (%llu KiB)",
 		c->report_rp_size, c->report_rp_size >> 10);
 
 	dbg_msg("compiled on:         " __DATE__ " at " __TIME__);
@@ -696,6 +698,14 @@ static int mount_ubifs(struct ubifs_info *c)
 		c->leb_size, c->leb_size >> 10);
 	dbg_msg("data journal heads:  %d",
 		c->jhead_cnt - NONDATA_JHEADS_CNT);
+
+	dev_add_param_int_ro(c->dev, "filesystem_size_mb", c->fs_size_mb, "%d");
+	dev_add_param_fixed(c->dev, "default_compressor", ubifs_compr_name(c->default_compr));
+	sprintf(str, "w%d/r%d", c->fmt_version, c->ro_compat_version);
+	dev_add_param_fixed(c->dev, "media_format", str);
+	sprintf(str, "w%d/r%d", UBIFS_FORMAT_VERSION, UBIFS_RO_COMPAT_VERSION);
+	dev_add_param_fixed(c->dev, "media_format_latest", str);
+
 	dbg_msg("UUID:                %02X%02X%02X%02X-%02X%02X"
 	       "-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X",
 	       c->uuid[0], c->uuid[1], c->uuid[2], c->uuid[3],
@@ -804,7 +814,7 @@ void ubifs_umount(struct ubifs_info *c)
 	ubifs_debugging_exit(c);
 }
 
-struct super_block *ubifs_get_super(struct ubi_volume_desc *ubi, int silent)
+struct super_block *ubifs_get_super(struct device_d *dev, struct ubi_volume_desc *ubi, int silent)
 {
 	struct super_block *sb;
 	struct ubifs_info *c;
@@ -814,6 +824,8 @@ struct super_block *ubifs_get_super(struct ubi_volume_desc *ubi, int silent)
 	sb = xzalloc(sizeof(*sb));
 	c = xzalloc(sizeof(struct ubifs_info));
 
+	c->dev = dev;
+
 	spin_lock_init(&c->cnt_lock);
 	spin_lock_init(&c->cs_lock);
 	spin_lock_init(&c->buds_lock);
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 44a9e97..35923a9 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -610,7 +610,7 @@ static int ubifs_probe(struct device_d *dev)
 		goto err_free;
 	}
 
-	priv->sb = ubifs_get_super(priv->ubi, 0);
+	priv->sb = ubifs_get_super(dev, priv->ubi, 0);
 	if (IS_ERR(priv->sb)) {
 		ret = PTR_ERR(priv->sb);
 		goto err;
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index fea1584..b4a9d76 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -470,12 +470,8 @@ static inline ino_t parent_ino(struct dentry *dentry)
 #define UBIFS_VERSION 1
 
 /* Normal UBIFS messages */
-#ifdef CONFIG_UBIFS_SILENCE_MSG
-#define ubifs_msg(fmt, ...)
-#else
 #define ubifs_msg(fmt, ...) \
-		pr_notice("UBIFS: " fmt "\n", ##__VA_ARGS__)
-#endif
+		pr_info("UBIFS: " fmt "\n", ##__VA_ARGS__)
 /* UBIFS error messages */
 #define ubifs_err(fmt, ...)                                                  \
 	pr_err("UBIFS error (pid %d): %s: " fmt "\n", 0, \
@@ -1824,6 +1820,9 @@ struct ubifs_info {
 	int always_chk_crc;
 	struct ubifs_mount_opts mount_opts;
 
+	unsigned int fs_size_mb;
+	struct device_d *dev;
+
 #ifdef CONFIG_UBIFS_FS_DEBUG
 	struct ubifs_debug_info *dbg;
 #endif
@@ -2140,7 +2139,7 @@ long ubifs_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
 #include "misc.h"
 #include "key.h"
 
-struct super_block *ubifs_get_super(struct ubi_volume_desc *ubi, int silent);
+struct super_block *ubifs_get_super(struct device_d *dev, struct ubi_volume_desc *ubi, int silent);
 void ubifs_umount(struct ubifs_info *);
 
 static inline int ubifs_readonly(struct ubifs_info *c)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
