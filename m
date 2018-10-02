Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005zD-Qf
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:04:03 +0200
Message-Id: <20181002140403.3735-15-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/14] fs: ubifs: optionally allow to mount UBIFS images with
 encrypted files
To: Barebox List <barebox@lists.infradead.org>

Currently we do not support the UBIFS file encryption feature.
Nevertheless we can allow read clear files from UBIFS to be
able to boot an unencrypted kernel. This differs from the Kernel
behaviour, so add a globalvar to make that configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/sb.c    | 2 +-
 fs/ubifs/ubifs.c | 9 +++++++++
 fs/ubifs/ubifs.h | 1 +
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/sb.c b/fs/ubifs/sb.c
index 48bfb24955..a13f092eb0 100644
--- a/fs/ubifs/sb.c
+++ b/fs/ubifs/sb.c
@@ -357,7 +357,7 @@ int ubifs_read_superblock(struct ubifs_info *c)
 	}
 
 #ifndef CONFIG_UBIFS_FS_ENCRYPTION
-	if (c->encrypted) {
+	if (c->encrypted && !ubifs_allow_encrypted) {
 		ubifs_err(c, "file system contains encrypted files but UBIFS"
 			     " was built without crypto support.");
 		err = -EINVAL;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 11fb3187ad..bbe382dab0 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -15,6 +15,8 @@
 #include <common.h>
 #include <init.h>
 #include <fs.h>
+#include <globalvar.h>
+#include <magicvar.h>
 #include <linux/stat.h>
 #include <linux/zlib.h>
 #include <linux/mtd/mtd.h>
@@ -501,6 +503,8 @@ static int zlib_decomp_init(void)
 	return 0;
 }
 
+int ubifs_allow_encrypted;
+
 static int ubifs_init(void)
 {
 	int ret;
@@ -511,7 +515,12 @@ static int ubifs_init(void)
 			return ret;
 	}
 
+	globalvar_add_simple_bool("ubifs.allow_encrypted", &ubifs_allow_encrypted);
+
 	return register_fs_driver(&ubifs_driver);
 }
 
 coredevice_initcall(ubifs_init);
+
+BAREBOX_MAGICVAR_NAMED(global_ubifs_allow_encrypted, global.ubifs.allow_encrypted,
+		       "If true, allow to mount UBIFS with encrypted files");
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 900cc31177..01aa8986f3 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -48,6 +48,7 @@
 
 struct iattr;
 struct kstat;
+extern int ubifs_allow_encrypted;
 
 /* uapi/linux/limits.h */
 #define XATTR_LIST_MAX 65536	/* size of extended attribute namelist (64k) */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
