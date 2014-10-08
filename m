Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbsAR-0008J0-0P
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:24:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:24:12 +0200
Message-Id: <1412778255-4153-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
References: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] fs: Store the path in struct filep
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      | 5 +++++
 include/fs.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 04b6408..436f5cb 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -251,6 +251,8 @@ static FILE *get_file(void)
 
 static void put_file(FILE *f)
 {
+	free(f->path);
+	f->path = NULL;
 	f->in_use = 0;
 }
 
@@ -670,6 +672,9 @@ int open(const char *pathname, int flags, ...)
 		if (ret)
 			goto out;
 	}
+
+	f->path = xstrdup(path);
+
 	ret = fsdrv->open(&fsdev->dev, f, path);
 	if (ret)
 		goto out;
diff --git a/include/fs.h b/include/fs.h
index c3ce81a..6eddb23 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -24,6 +24,7 @@ typedef struct dir {
 
 typedef struct filep {
 	struct fs_device_d *fsdev; /* The device this FILE belongs to              */
+	char *path;
 	loff_t pos;            /* current position in stream                   */
 #define FILE_SIZE_STREAM	((loff_t) -1)
 	loff_t size;           /* The size of this inode                       */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
