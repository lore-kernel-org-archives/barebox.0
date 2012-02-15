Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8f-0002f9-AB
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:22:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:39 +0100
Message-Id: <1329294165-12089-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] fs: remove unused function fsdev_get_mountpoint
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      |    5 -----
 include/fs.h |    7 -------
 2 files changed, 0 insertions(+), 12 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index d65a41f..7175e33 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -195,11 +195,6 @@ found:
 	return e;
 }
 
-const char *fsdev_get_mountpoint(struct fs_device_d *fsdev)
-{
-	return fsdev->mtab.path;
-}
-
 static FILE files[MAX_FILES];
 
 static FILE *get_file(void)
diff --git a/include/fs.h b/include/fs.h
index f1a1931..8daa1bc 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -146,13 +146,6 @@ int ls(const char *path, ulong flags);
 char *mkmodestr(unsigned long mode, char *str);
 
 /*
- * Information about mounted devices.
- * Note that we only support mounting on directories lying
- * directly in / and of course the root directory itself
- */
-const char *fsdev_get_mountpoint(struct fs_device_d *fsdev);
-
-/*
  * Read a file into memory. Memory is allocated with malloc and must
  * be freed with free() afterwards. This function allocates one
  * byte more than actually needed and sets this to zero, so that
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
