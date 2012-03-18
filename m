Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4Y-0001o6-5w
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:40 +0100
Message-Id: <1332080804-13132-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] fs open: pass error from stat
To: barebox@lists.infradead.org

We used to simply answer with -ENOENT in open() when the
initial call to stat() failed. Instead, forward the error from
stat().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 8473f81..24ef258 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -480,20 +480,20 @@ int open(const char *pathname, int flags, ...)
 	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
-	int exist;
+	int exist_err;
 	struct stat s;
 	char *path = normalise_path(pathname);
 	char *freep = path;
 
-	exist = (stat(path, &s) == 0) ? 1 : 0;
+	exist_err = stat(path, &s);
 
-	if (exist && S_ISDIR(s.st_mode)) {
+	if (!exist_err && S_ISDIR(s.st_mode)) {
 		errno = -EISDIR;
 		goto out1;
 	}
 
-	if (!exist && !(flags & O_CREAT)) {
-		errno = -ENOENT;
+	if (exist_err && !(flags & O_CREAT)) {
+		errno = exist_err;
 		goto out1;
 	}
 
@@ -517,7 +517,7 @@ int open(const char *pathname, int flags, ...)
 		goto out;
 	}
 
-	if (!exist) {
+	if (exist_err) {
 		if (NULL != fsdrv->create)
 			errno = fsdrv->create(&fsdev->dev, path,
 					S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
