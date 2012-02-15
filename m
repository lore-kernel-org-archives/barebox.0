Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8f-0004Y3-Mk
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:23:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:38 +0100
Message-Id: <1329294165-12089-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/12] fs: Store mtab path in allocated string
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      |    5 +++--
 include/fs.h |    2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index afa0198..d65a41f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -808,8 +808,8 @@ int mount(const char *device, const char *fsname, const char *_path)
 	dev = &fsdev->dev;
 
 	/* add mtab entry */
-	entry = &fsdev->mtab; 
-	safe_strncpy(entry->path, path, PATH_MAX);
+	entry = &fsdev->mtab;
+	entry->path = xstrdup(path);
 	entry->dev = dev;
 	entry->parent_device = parent_device;
 
@@ -860,6 +860,7 @@ int umount(const char *pathname)
 		return errno;
 	}
 
+	free(entry->path);
 	list_del(&entry->list);
 	if (entry == mtab_root)
 		mtab_root = NULL;
diff --git a/include/fs.h b/include/fs.h
index d31fb20..f1a1931 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -77,7 +77,7 @@ struct fs_driver_d {
 };
 
 struct mtab_entry {
-	char path[PATH_MAX];
+	char *path;
 	struct device_d *dev;
 	struct device_d *parent_device;
 	struct list_head list;
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
